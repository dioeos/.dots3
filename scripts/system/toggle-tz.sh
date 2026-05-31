#!/usr/bin/env bash
DEFAULT="America/New_York"

toggle_est=false
toggle_ct=false
toggle_mdt=false
toggle_pdt=false

usage() {
  echo "Usage: $0 [OPTIONS]"
  echo "Options:"
  echo "-h, --help      Display this help message"
  echo "-e, --east      Enable EST"
  echo "-c, --central   Enable CDT"
  echo "-m, --mountain  Enable MDT"
  echo "-p, --pacific   Enable PDT"
}

handle_options() {
  while [ $# -gt 0 ]; do
    case "$1" in
      -h | --help)
        usage
        exit 0
        ;;
      -e | --east)
        toggle_est=true
        ;;
      -c | --central)
        toggle_ct=true
        ;;
      -m | --mountain)
        toggle_mdt=true
        ;;
      -p | --pacific)
        toggle_pdt=true
        ;;
      *)
        echo "Defaulting to EST due to invalid option: $1" >&2
        usage
        exit 1
        ;;
    esac
    shift
  done
}

handle_options "$@"

if "$toggle_est"; then
  timedatectl set-timezone America/New_York
  echo "Set timezone to EST!"
elif "$toggle_ct"; then
  timedatectl set-timezone America/Chicago
  echo "Set timezone to CT!"
elif "$toggle_mdt"; then
  timedatectl set-timezone America/Denver
  echo "Set timezone to MDT!"
elif "$toggle_pdt"; then
  timedatectl set-timezone America/Los_Angeles
  echo "Set timezone to PDT!"
else
  sudo timedatectl set-timezone "$DEFAULT"
  echo "Set timezone to EST!"
fi
