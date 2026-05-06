import os
import subprocess
import time

# 1. Define your test list
test_list = [
#        "simple_mode_64mb_btt_test",
        "simple_mode_b2b_ioc_test",
        "simple_mode_b2b_test",
        "simple_mode_4k_check_test",
        "simple_mode_btt_check_test",
        "simple_mode_alignment_test",
        "simple_dma_4k_boundary_test",
        "simple_dma_int_error_test",
        "simple_dma_decode_error_test",
        "simple_dma_slave_error_test",
        "simple_mode_fixed_transfer_test",
        "simple_mode_incr_transfer_test",
        "ral_access_test",
        "ral_bit_bash_test",
        "ral_intermediate_hard_reset_test",
        "ral_intermediate_soft_reset_test",
        "ral_reset_test"
]

# Base vsim command
vsim_base_cmd = (
    "vsim -c +access +r +m+top +UVM_OBJECTION_TRACE "
    "-L unisims_ver -L unimacro_ver -L secureip -L xpm "
    "-L axi_datamover_v5_1_37 -L axi_sg_v4_1_21 -L axi_cdma_v4_1_35 "
    "-L xil_defaultlib -O0 xil_defaultlib.top xil_defaultlib.glbl "
)

log_dir = "test_logs"
os.makedirs(log_dir, exist_ok=True)

print("--------------------------------------------------")
print(" Phase 1: Compiling Design and Testbench")
print("--------------------------------------------------")

# Notice we wrap do compile.do and add quit -force to release the license!
compile_cmd = 'vsim -c -do "do compile.do; quit -force"'

# Capture output so we can check for license errors
comp_result = subprocess.run(compile_cmd, shell=True, capture_output=True, text=True)

# Print compilation output to terminal
print(comp_result.stdout)

if "valid license" in comp_result.stdout or "valid license" in comp_result.stderr:
    print("? CRITICAL ERROR: License checkout failed during compilation.")
    print("Aborting regression so we don't waste time running tests.")
    exit(1)

print("\n--- Compilation Finished. Releasing license and waiting 3 seconds... ---")
time.sleep(3) # Give license server time to register the returned license

print("\n--------------------------------------------------")
print(" Phase 2: Running UVM Regression (One by One)")
print("--------------------------------------------------")

results = {}

for test in test_list:
    print(f"--> Running: {test} ...", end="", flush=True)
    
    # Create specific log file name
    #log_file = f"{test}.log"
    log_file = os.path.join(log_dir, f"{test}.log")   

    # Notice the "quit -force" at the end to kill the tool and return the license
    run_cmd = f'{vsim_base_cmd} +UVM_TESTNAME={test} -l {log_file} -do "run -all; quit -force"'
    
    # Execute the simulation
    subprocess.run(run_cmd, shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    
    # Parse the log file to determine PASS/FAIL
    status = "FAIL ?"
    try:
        with open(log_file, "r") as f:
            log_content = f.read()
            if "valid license" in log_content:
                status = "FAIL (License Error) ?"
            elif "UVM_ERROR :    0" in log_content and "UVM_FATAL :    0" in log_content:
                status = "PASS ?"
    except FileNotFoundError:
        status = "FAIL (No Log) ?"
        
    results[test] = status
    print(f" [{status}]")
    
    # Wait 2 seconds before the next test so the license server resets
    time.sleep(2)

print("\n--------------------------------------------------")
print(" Phase 3: Regression Summary")
print("--------------------------------------------------")
print(f"{'Test Name':<35} | {'Status'}")
print("-" * 50)
for test, status in results.items():
    print(f"{test:<35} | {status}")
print("--------------------------------------------------")
