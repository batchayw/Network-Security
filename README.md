# Network Security Setup

This project implements a simple network security architecture with a VPN, Fail2ban, Bastion, WAF, Honeypot, and network segmentation.

## Prerequisites
- Docker and Docker Compose
- Ubuntu 22.04

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone <votre-url-depot-github>
   cd network-security-setup
   ```

2. Install Fail2ban on the host:
    ```bash
    ./scripts/setup-fail2ban.sh
    ```
3. Start the services:
    ```bash
    docker-compose up -d
    ```
4. Access the services:
    - VPN: Port 1194
    - Bastion: SSH on port 2222
    - WAF: Port 80
    - Honeypot: Port 2223

## Project Structure
- `docker-compose.yml`: Defines the services.
- `configs/`: Configuration files for OpenVPN, ModSecurity, and Cowrie.
- `scripts/`: Helper scripts for setup.

## CI/CD Pipeline

This project uses GitHub Actions for CI/CD:
- **CI**: Validates `docker-compose.yml`, builds Docker images, and runs basic tests.
- **CD**: Pushes Docker images to Docker Hub. Deployment to a server is optional (see `.github/workflows/ci-cd.yml`).

### Setup
1. Configure the following secrets in GitHub:
   - `DOCKERHUB_USERNAME`: Your Docker Hub username.
   - `DOCKERHUB_TOKEN`: Your Docker Hub access token.
2. Push to the `main` branch to trigger the pipeline.

## Auteur
- William BATCAHYON (@batchayw)