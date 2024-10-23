# Ansible Task: Script Execution on Remote Machines

## Project Overview

This Ansible project is designed to automate the process of copying a bash script (`reados.sh`) to remote Linux machines, executing it, and returning information about the Linux distribution on each machine. The project uses a pre-defined inventory with multiple nodes, organized into groups for `db` and `app` roles.

The playbook ensures that:
1. The script `reados.sh` is copied to all remote hosts.
2. The script is executed on each host.
3. The output, including the Linux distribution and execution status, is returned.

## Prerequisites

Before running the playbook, ensure the following:
- You have Ansible installed on your local machine.
- Python3 is installed on the remote machines.
- SSH access is properly configured for all hosts in the inventory.
- The remote machines have a user named `docker` with the appropriate SSH access.

## Project Structure

```plaintext
.
├── README.md                # This file
├── RunScripts.yaml          # Main Ansible playbook
├── ansible.cfg              # Ansible configuration file
├── inventory.ini            # Inventory file with nodes grouped by db and app
└── reados.sh                # Bash script to detect Linux distribution
