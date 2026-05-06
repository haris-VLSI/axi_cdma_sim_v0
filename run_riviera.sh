#!/bin/bash

# Riviera-PRO simulation launcher with timestamped logs
# Usage: ./run_riviera.sh -top <top_module>

if [[ "$1" != "-top" || -z "$2" ]]; then
  echo "Usage: $0 -top <top_module>"
  exit 1
fi

TOP_MODULE="$2"
[[ "$TOP_MODULE" != *.* ]] && TOP_MODULE="xil_defaultlib.$TOP_MODULE"

# Timestamp and log storage directory
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
SIM_DIR="sim/${TIMESTAMP}"

# Clean sim logs and waveforms
clean_sim() {
  echo "Cleaning all simulation logs and waveforms..."
  rm -rf sim
  rm -rf work
  rm -rf compile
  echo "Cleaned all 'sim/' folders."
}

# Ensure sim folder exists
prepare_log_dir() {
  mkdir -p "$SIM_DIR"
}

while true; do
  echo ""
  echo "=============================="
  echo " Riviera-PRO Simulation Menu "
  echo "=============================="
  echo "Top module: $TOP_MODULE"
  echo "------------------------------"
  echo "1) Run simulation in GUI mode"
  echo "2) Run simulation in Batch mode"
  echo "3) Clean all simulation folders"
  echo "4) Exit"
  echo "------------------------------"
  read -rp "Select option [1-4]: " choice

  case $choice in
    1)
      prepare_log_dir
      echo "Running GUI simulation..."
      vsim -do "do compile.do; do simulate.do" -l "$SIM_DIR/full_gui.log"

      # Move waveform file if exists
      [[ -f dataset.asdb ]] && mv dataset.asdb "$SIM_DIR/waves_${TIMESTAMP}.asdb"
      ;;
    2)
      prepare_log_dir
      echo "Running Batch simulation..."
      vsim -c -do "do compile.do; do simulate.do" -l "$SIM_DIR/full_batch.log"

      # Move waveform file if exists
      [[ -f dataset.asdb ]] && mv dataset.asdb "$SIM_DIR/waves_${TIMESTAMP}.asdb"
      ;;
    3)
      clean_sim
      ;;
    4)
      echo "Exiting."
      exit 0
      ;;
    *)
      echo "Invalid choice."
      ;;
  esac
done














