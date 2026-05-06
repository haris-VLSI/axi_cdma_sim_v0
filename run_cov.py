import os
import subprocess
import time

# 1. Define your test list
test_list = [
        "simple_mode_incr_transfer_test",
        "simple_mode_fixed_transfer_test",
        "simple_mode_b2b_ioc_test",
        "simple_mode_b2b_test",
        "simple_mode_alignment_test",
        "simple_mode_btt_check_test",
        "simple_mode_4k_boundary_test",
        "simple_mode_4k_check_test",
        "simple_dma_int_error_test"
        #"simple_dma_decode_error_test",
        #"simple_dma_slave_error_test",
        #"ral_access_test",
        #"ral_bit_bash_test",
        #"ral_intermediate_hard_reset_test",
        #"ral_intermediate_soft_reset_test",
        #"ral_reset_test"
]

# Base vsim command (Ensure your compile.do also includes coverage flags like +cover or -c!)
vsim_base_cmd = (
    "vsim -c -sv_seed random +access +r +m+top +UVM_OBJECTION_TRACE "
    "-L unisims_ver -L unimacro_ver -L secureip -L xpm "
    "-L axi_datamover_v5_1_37 -L axi_sg_v4_1_21 -L axi_cdma_v4_1_35 "
    "-L xil_defaultlib -O0 xil_defaultlib.top xil_defaultlib.glbl "
)

log_dir = "test_logs"
cov_dir = "coverage_dbs" # <-- NEW: Directory for coverage databases
merged_dir = "merged_cov_file"


os.makedirs(log_dir, exist_ok=True)
os.makedirs(cov_dir, exist_ok=True) # <-- NEW: Create coverage directory
os.makedirs(merged_dir, exist_ok=True)

print("--------------------------------------------------")
print(" Phase 1: Compiling Design and Testbench")
print("--------------------------------------------------")

compile_cmd = 'vsim -c -do "do compile.do; quit -force"'
comp_result = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)
print(comp_result.stdout)

if "valid license" in comp_result.stdout or "valid license" in comp_result.stderr:
    print("? CRITICAL ERROR: License checkout failed during compilation.")
    exit(1)

print("\n--- Compilation Finished. Releasing license and waiting 3 seconds... ---")
time.sleep(3) 

print("\n--------------------------------------------------")
print(" Phase 2: Running UVM Regression (One by One)")
print("--------------------------------------------------")

results = {}
generated_acdbs = [] # <-- NEW: Track generated coverage files

for test in test_list:
    print(f"--> Running: {test} ...", end="", flush=True)
    
    log_file = os.path.join(log_dir, f"{test}.log")   
    cov_file = os.path.join(cov_dir, f"{test}.acdb") # <-- NEW: Unique coverage file name

    # NEW: The DO command now includes 'acdb save' to dump coverage before quitting
    do_commands = f"run -all; acdb save -o {cov_file}; quit -force"
    run_cmd = f'{vsim_base_cmd} +UVM_TESTNAME={test} -l {log_file} -do "{do_commands}"'
    
    subprocess.run(run_cmd, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
    status = "FAIL ?"
    try:
        with open(log_file, "r") as f:
            log_content = f.read()
            if "valid license" in log_content:
                status = "FAIL (License Error) ?"
            elif "UVM_ERROR :    0" in log_content and "UVM_FATAL :    0" in log_content:
                status = "PASS ?"
                generated_acdbs.append(cov_file) # Track successful runs for merging
    except FileNotFoundError:
        status = "FAIL (No Log) ?"
        
    results[test] = status
    print(f" [{status}]")
    
    time.sleep(2)

print("\n--------------------------------------------------")
print(" Phase 3: Regression Summary")
print("--------------------------------------------------")
print(f"{'Test Name':<35} | {'Status'}")
print("-" * 50)
for test, status in results.items():
    print(f"{test:<35} | {status}")
print("--------------------------------------------------")

# NEW: Phase 4 - Coverage Merging
if generated_acdbs:
   merged_cov_file = "merged_cdma.acdb"
tcl_merge_cmd = f"acdb merge -o merged_cov_file/{merged_cov_file} -i coverage_dbs/*.acdb; quit -force"
vsim_merge_cmd = f'vsim -c -do "{tcl_merge_cmd}"'
merge_result = subprocess.run(vsim_merge_cmd, shell=True, capture_output=True, text=True)

## NEW: Phase 4 - Coverage Merging
#print("\n--------------------------------------------------")
#print(" Phase 4: Merging Coverage Databases")
#print("--------------------------------------------------")
#
#if generated_acdbs:
#    merged_cov_file = "merged_cdma.acdb"
#    # Construct the acdb merge command taking all generated files
#    merge_inputs = " -i ".join(generated_acdbs)
#    merge_cmd = f"acdb merge -o {merged_cov_file} -i {merge_inputs}"
#    
#    print(f"Merging {len(generated_acdbs)} databases...")
#    merge_result = subprocess.run(merge_cmd, shell=True, capture_output=True, text=True)
#    
#    if merge_result.returncode == 0:
#        print(f"? Coverage successfully merged into: {merged_cov_file}")
#        # Optional: You can add an 'acdb report' command here to auto-generate HTML/TXT reports!
#    else:
#        print("? Error merging coverage databases.")
#        print(merge_result.stderr)
#else:
#    print("?? No successful tests to merge coverage for.")

## NEW: Phase 4 - Coverage Merging (Running inside vsim to bypass PATH issues)
#print("\n--------------------------------------------------")
#print(" Phase 4: Merging Coverage Databases")
#print("--------------------------------------------------")
#
#if generated_acdbs:
#    merged_cov_file = "merged_cdma.acdb"
#    
#    # 1. Join all the input files
#    merge_inputs = " -i ".join(generated_acdbs)
#    
#    # 2. Build the exact TCL command that Riviera-PRO understands
#    tcl_merge_cmd = f"acdb merge -o {merged_cov_file} -i {merge_inputs}; quit -force"
#    
#    # 3. Pass that TCL command into vsim, just like we did for the tests!
#    vsim_merge_cmd = f'vsim -c -do "{tcl_merge_cmd}"'
#    
#    print(f"Merging {len(generated_acdbs)} databases via vsim...")
#    merge_result = subprocess.run(vsim_merge_cmd, shell=True, capture_output=True, text=True)
#    
#    # Check if the generated file actually exists to verify success
#    if os.path.exists(merged_cov_file):
#        print(f"? Coverage successfully merged into: {merged_cov_file}")
#        
#        # Optional: Auto-generate an HTML report right after!
#        # report_cmd = f'vsim -c -do "acdb report -db {merged_cov_file} -html -o coverage_report; quit -force"'
#        # subprocess.run(report_cmd, shell=True)
#    else:
#        print("? Error merging coverage databases. Check the vsim output below:")
#        print(merge_result.stdout)
#        print(merge_result.stderr)
#else:
#    print("?? No successful tests to merge coverage for.")
