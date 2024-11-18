# unix-project
An autonomous installation and configuration solution for reproducible server environments using Ansible and Docker containers. This project automates the deployment of a complete server setup, from OS installation to service configuration.
## Features
- Fully Autonomous Installation: Complete hands-off server deployment without user intervention
- Idempotent Operations: Repeatable deployments that maintain system consistency
- Automated ISO Configuration: Bash script for automated installer ISO generation
- Container Monitoring: Crash detection and logging system for Docker containers
- Flexible Deployment: Works across different hardware configurations (VM or bare metal)
- Docker Container Integration: Pre-configured services including:
  - Nginx
  - Wireguard
  - Additional services (TBD)

## Prerequisites
- Debian
- Ansible
- Docker & Docker Compose
- Proxmox (or any other hypervisor for VM deployment testing)

## Technical Choices
### Why Ansible?
Chosen for its simplicity and distribution-independent nature, Ansible provides a more accessible approach to system configuration compared to alternatives like NixOS. It offers excellent documentation and wide distribution support.
### Why Docker?
Selected over LXC for its:
- Extensive ecosystem via Docker Hub
- Simplified deployment through Docker Compose
- Broader community support
- Extensive pre-built container availability

## Usage (Documentation will be added as development progresses)
### ISO creation
```
git clone https://github.com/alexx-ngn/unix-project
bash gen.sh $PATH_TO_DEBIAN_ISO
```
The newly generated ISO file is located in the `out` folder

## Contributing
This is a personal academic project, but suggestions and feedback are welcome through issues.

## License
This project is licensed under the GNU General Public License v3.0 - see the LICENSE file for details.
