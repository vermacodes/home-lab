# Complete Kubernetes Learning Path: Zero to CKA Hero

## Overview
This guide takes you from knowing nothing about computers to becoming a Certified Kubernetes Administrator (CKA). Estimated timeline: 4-6 months with consistent daily practice.

---

## PHASE 1: Computer & Networking Fundamentals (2-3 weeks)

### 1. Basic Computer Concepts
#### 1.1 Understanding Your Windows 11 Computer
- What is an operating system?
- File systems and directories
- Running programs and processes
- Task Manager basics
- Installing software

#### 1.2 Introduction to WSL (Windows Subsystem for Linux)
- What is WSL and why use it?
- WSL1 vs WSL2 differences
- Benefits: Linux on Windows without dual boot or VM
- Understanding the Linux/Windows integration
- When to use Windows vs WSL terminal

#### 1.3 Installing WSL2
- Enabling WSL in Windows Features
- Installing WSL2 via PowerShell
- Installing Ubuntu 22.04 LTS from Microsoft Store
- First-time Ubuntu setup (username, password)
- Understanding the Ubuntu terminal
- Updating WSL: `wsl --update`

#### 1.4 WSL Basics
- Launching WSL: Windows Terminal or Ubuntu app
- Understanding `/mnt/c` (accessing Windows files)
- Accessing WSL files from Windows (`\\wsl$\Ubuntu`)
- WSL commands from Windows: `wsl`, `wsl -d Ubuntu`
- Stopping WSL: `wsl --shutdown`
- Default user configuration

#### 1.5 Command Line Basics (WSL/Linux)
- Opening Ubuntu terminal
- Basic commands: `cd`, `ls`, `mkdir`, `rm`, `cp`, `mv`
- Understanding paths (Linux: `/home/username`)
- Environment variables in Linux
- Running programs from command line
- Difference from Windows Command Prompt

#### 1.6 Text Editors
- Install and use Visual Studio Code (Windows)
- VS Code with WSL extension (seamless integration)
- Using `nano` in WSL terminal (beginner-friendly)
- Using `vim` in WSL terminal (advanced)
- Basic file editing in Linux
- Understanding file formats (.txt, .json, .yaml)

### 2. Networking Fundamentals
#### 2.1 Basic Networking Concepts
- What is an IP address?
- Understanding 192.168.x.x (local networks)
- What is a port? (80, 443, 22, etc.)
- Domain names vs IP addresses
- Understanding localhost/127.0.0.1

#### 2.2 Network Connectivity
- Using `ping` command in WSL
- Understanding network connectivity
- Home router basics
- DHCP (how devices get IP addresses)
- Static vs Dynamic IP addresses
- WSL network configuration (automatically bridges to Windows)

#### 2.3 Internet & Web Basics
- How web browsers work
- HTTP vs HTTPS
- APIs (Application Programming Interfaces)
- Client-server model
- Understanding URLs

### 3. Understanding Raspberry Pi Hardware
#### 3.1 Raspberry Pi Components
- What is a Raspberry Pi?
- Understanding single-board computers
- Raspberry Pi ports (USB, HDMI, Ethernet, GPIO)
- Power requirements (USB-C power)
- SD cards as storage

#### 3.2 Required Hardware Setup
- 4x Raspberry Pi 4 (minimum 4GB RAM recommended)
- 4x microSD cards (32GB+ each)
- 4x USB-C power supplies (3A each)
- 4x Ethernet cables
- 1x Network switch (5+ ports)
- Optional: Raspberry Pi case/cooling
- Optional: Monitor, keyboard, mouse for initial setup

#### 3.3 Physical Setup
- Connecting Raspberry Pis to network switch
- Connecting switch to home router
- Proper power supply connection
- Understanding LED indicators

---

## PHASE 2: Linux Fundamentals (3-4 weeks)

### 4. Introduction to Linux
#### 4.1 What is Linux?
- Linux vs Windows differences
- Linux distributions (Ubuntu, Debian, Raspberry Pi OS)
- Open source software concept
- Why Kubernetes runs on Linux

#### 4.2 Installing Raspberry Pi OS
- Download Raspberry Pi Imager on Windows
- Choosing OS: Raspberry Pi OS Lite (64-bit)
- Flashing OS to SD card
- Enabling SSH before first boot
- Setting up WiFi (optional) via config files

#### 4.3 First Boot and SSH Connection
- SSH is pre-installed in WSL (no need for PuTTY!)
- Using `ssh` command directly from WSL terminal
- Finding Raspberry Pi IP addresses on network
- First SSH connection: `ssh pi@192.168.1.100`
- Accepting host key fingerprint
- Changing default password
- Basic security practices

### 5. Linux Command Line Mastery
#### 5.1 Essential Commands
- Navigation: `pwd`, `cd`, `ls`, `tree`
- File operations: `touch`, `mkdir`, `rm`, `mv`, `cp`
- Viewing files: `cat`, `less`, `head`, `tail`
- Searching: `find`, `grep`, `locate`
- Help: `man`, `--help`, `apropos`

#### 5.2 File System Structure
- Understanding `/` (root directory)
- Important directories: `/home`, `/etc`, `/var`, `/usr`, `/bin`
- User home directories: `~`
- Hidden files (starting with .)
- File paths: absolute vs relative

#### 5.3 File Permissions
- Understanding `rwx` (read, write, execute)
- User, group, and others
- Using `chmod` to change permissions
- Using `chown` to change ownership
- Understanding `sudo` (superuser do)

#### 5.4 Text Editing in Linux
- Using `nano` editor (beginner-friendly)
- Using `vim` editor (advanced)
- Basic vim: insert mode, command mode, saving, quitting
- Creating and editing configuration files

#### 5.5 Process Management
- Viewing processes: `ps`, `top`, `htop`
- Killing processes: `kill`, `killall`
- Running in background: `&`, `bg`, `fg`
- Understanding PIDs (Process IDs)
- System resources: CPU, memory, disk

#### 5.6 Package Management
- Understanding APT (Advanced Package Tool)
- `apt update` - refresh package lists
- `apt upgrade` - upgrade installed packages
- `apt install` - install new packages
- `apt remove` - remove packages
- Finding packages: `apt search`

#### 5.7 System Administration
- User management: `useradd`, `usermod`, `passwd`
- System information: `uname`, `hostname`, `uptime`
- Disk usage: `df`, `du`
- Viewing logs: `/var/log/`, `journalctl`
- System services: `systemctl`

### 6. Networking in Linux
#### 6.1 Network Configuration
- Viewing network interfaces: `ip addr`, `ifconfig`
- Setting static IP addresses
- Editing `/etc/network/interfaces`
- DNS configuration: `/etc/resolv.conf`
- Hostname configuration: `/etc/hosts`, `/etc/hostname`

#### 6.2 Network Tools
- Testing connectivity: `ping`, `traceroute`
- Port scanning: `netstat`, `ss`
- Downloading files: `wget`, `curl`
- Secure copy: `scp`, `rsync`
- Network traffic: `tcpdump`

#### 6.3 SSH Deep Dive
- SSH key generation: `ssh-keygen`
- Public/private key pairs
- Copying keys: `ssh-copy-id`
- SSH configuration: `~/.ssh/config`
- SSH tunneling basics

---

## PHASE 3: Scripting & Automation (2 weeks)

### 7. Bash Scripting
#### 7.1 Script Basics
- Creating your first script
- Shebang: `#!/bin/bash`
- Making scripts executable: `chmod +x`
- Running scripts: `./script.sh`
- Comments in scripts

#### 7.2 Variables and Input
- Declaring variables
- Environment variables
- Reading user input: `read`
- Command substitution: `$(command)`
- Special variables: `$?`, `$1`, `$@`

#### 7.3 Control Structures
- If statements: `if`, `elif`, `else`
- Loops: `for`, `while`, `until`
- Case statements
- Exit codes and error handling
- Functions in bash

#### 7.4 Practical Scripts
- System health check script
- Automated backup script
- Log rotation script
- Network connectivity checker

---

## PHASE 4: Containers & Docker (3-4 weeks)

### 8. Understanding Virtualization
#### 8.1 Virtual Machines Concept
- Hardware vs software virtualization
- Hypervisors (Type 1 & 2)
- VM limitations: size, boot time, resource overhead
- When to use VMs

#### 8.2 Introduction to Containers
- Containers vs Virtual Machines
- What is a container image?
- Container runtimes
- Benefits: lightweight, fast, portable

### 9. Docker Fundamentals
#### 9.1 Installing Docker
- Installing Docker on Raspberry Pi OS
- Docker Engine components
- Docker daemon and client
- Verifying installation: `docker --version`
- Running `hello-world` container

#### 9.2 Docker Images
- What is a Docker image?
- Docker Hub registry
- Pulling images: `docker pull`
- Listing images: `docker images`
- Searching images: `docker search`
- Image tags and versions
- Image layers concept

#### 9.3 Running Containers
- Running containers: `docker run`
- Common flags: `-d`, `-p`, `-v`, `--name`, `-e`
- Interactive containers: `-it`
- Port mapping: host:container
- Listing containers: `docker ps`, `docker ps -a`
- Container logs: `docker logs`
- Executing commands: `docker exec`

#### 9.4 Container Lifecycle
- Starting containers: `docker start`
- Stopping containers: `docker stop`
- Restarting containers: `docker restart`
- Removing containers: `docker rm`
- Container states: created, running, stopped, exited
- Auto-restart policies

#### 9.5 Building Docker Images
- Understanding Dockerfile
- FROM, RUN, COPY, CMD, ENTRYPOINT
- Building images: `docker build`
- Tagging images
- Best practices: layer caching, .dockerignore
- Multi-stage builds

#### 9.6 Docker Volumes
- Understanding data persistence
- Volume types: named volumes, bind mounts
- Creating volumes: `docker volume create`
- Mounting volumes: `-v` flag
- Volume management commands
- Backup and restore strategies

#### 9.7 Docker Networking
- Default bridge network
- Creating custom networks: `docker network create`
- Network drivers: bridge, host, overlay
- Connecting containers to networks
- Container DNS resolution
- Exposing vs publishing ports

#### 9.8 Docker Compose
- What is Docker Compose?
- Installing Docker Compose
- Understanding `docker-compose.yml`
- Services, networks, volumes in Compose
- Running multi-container apps: `docker-compose up`
- Managing compose applications

### 10. Container Runtime Alternatives
#### 10.1 containerd
- What is containerd?
- Relationship to Docker
- Using `ctr` command line
- containerd vs Docker Engine

#### 10.2 CRI-O
- Container Runtime Interface (CRI)
- CRI-O purpose and design
- Installing and using CRI-O
- Why Kubernetes uses CRI

---

## PHASE 5: Kubernetes Core Concepts (4-5 weeks)

### 11. Introduction to Kubernetes
#### 11.1 What is Kubernetes?
- Container orchestration explained
- History and creation (Google, Borg)
- CNCF (Cloud Native Computing Foundation)
- When to use Kubernetes
- Kubernetes vs Docker Swarm vs others

#### 11.2 Kubernetes Architecture
- Master/Control Plane vs Worker Nodes
- Control Plane Components:
  - kube-apiserver (API server)
  - etcd (distributed key-value store)
  - kube-scheduler (pod placement)
  - kube-controller-manager (controllers)
  - cloud-controller-manager (cloud integration)
- Worker Node Components:
  - kubelet (node agent)
  - kube-proxy (network proxy)
  - container runtime (Docker/containerd/CRI-O)

#### 11.3 Kubernetes Objects
- Understanding Kubernetes resources
- API resources and API groups
- Object specification and status
- Labels and selectors
- Annotations
- Namespaces

### 12. Core Kubernetes Resources

#### 12.1 Pods
- What is a Pod?
- Pods as smallest deployable unit
- Single vs multi-container Pods
- Pod lifecycle phases
- Init containers
- Sidecar pattern
- Pod networking (shared IP)
- Pod storage (shared volumes)

#### 12.2 ReplicaSets
- What is a ReplicaSet?
- Ensuring desired number of replicas
- Pod template specification
- Label selectors for pod management
- Scaling ReplicaSets
- Self-healing capabilities

#### 12.3 Deployments
- Deployment purpose and use cases
- Declarative updates for Pods
- Rolling updates strategy
- Rollback capabilities
- Deployment strategies: RollingUpdate, Recreate
- Revision history
- Pausing and resuming deployments
- Deployment vs ReplicaSet relationship

#### 12.4 Services
- Service abstraction explained
- Service types:
  - ClusterIP (internal only)
  - NodePort (external access via node)
  - LoadBalancer (cloud load balancer)
  - ExternalName (DNS CNAME)
- Service discovery mechanisms
- Endpoints and EndpointSlices
- Headless services
- Service networking and kube-proxy

#### 12.5 Namespaces
- Logical cluster partitioning
- Default namespaces: default, kube-system, kube-public
- Creating and using namespaces
- Resource quotas per namespace
- Network policies and namespaces
- Context and namespace management

#### 12.6 ConfigMaps and Secrets
- Separating configuration from code
- ConfigMaps:
  - Creating from literals, files, directories
  - Using in Pods: environment variables, volumes
  - Updating ConfigMaps
- Secrets:
  - Secret types: Opaque, TLS, Docker registry
  - Base64 encoding
  - Using secrets safely
  - Secret best practices
  - Encryption at rest

#### 12.7 Volumes
- Container storage problems
- Volume types overview:
  - emptyDir (temporary)
  - hostPath (node filesystem)
  - PersistentVolume (PV)
  - PersistentVolumeClaim (PVC)
  - ConfigMap and Secret volumes
  - Cloud provider volumes (AWS EBS, etc.)
- Volume lifecycle
- Access modes: ReadWriteOnce, ReadOnlyMany, ReadWriteMany

#### 12.8 StatefulSets
- Stateful applications in Kubernetes
- Stable network identities
- Ordered deployment and scaling
- Persistent storage per pod
- Use cases: databases, distributed systems
- Headless services with StatefulSets

#### 12.9 DaemonSets
- Running one Pod per node
- Use cases: monitoring agents, log collectors
- Node selection with DaemonSets
- Updating DaemonSets

#### 12.10 Jobs and CronJobs
- Batch processing in Kubernetes
- Jobs:
  - Run-to-completion workloads
  - Parallelism and completions
  - Job patterns
- CronJobs:
  - Scheduled jobs
  - Cron syntax
  - Job history limits

---

## PHASE 6: Kubernetes Networking (2 weeks)

### 13. Networking Deep Dive

#### 13.1 Kubernetes Network Model
- Fundamental networking requirements
- Pod-to-Pod communication
- Pod-to-Service communication
- External-to-Service communication
- Network namespaces
- Container Network Interface (CNI)

#### 13.2 CNI Plugins
- What is CNI?
- Popular CNI plugins:
  - Calico
  - Flannel
  - Weave Net
  - Cilium
- Installing CNI plugins
- Network policies support

#### 13.3 Network Policies
- Controlling traffic between Pods
- Ingress and egress rules
- Pod selectors
- Namespace selectors
- Default deny policies
- Common policy patterns

#### 13.4 Ingress
- Ingress resource explained
- Ingress controllers (Nginx, Traefik, HAProxy)
- Installing Ingress controller
- Path-based routing
- Host-based routing
- TLS/HTTPS termination
- Ingress annotations

#### 13.5 DNS in Kubernetes
- CoreDNS service
- Service DNS records
- Pod DNS records
- DNS policy options
- Debugging DNS issues

---

## PHASE 7: Storage in Kubernetes (1-2 weeks)

### 14. Persistent Storage

#### 14.1 Storage Classes
- Dynamic volume provisioning
- Storage Class parameters
- Default storage class
- Volume binding modes
- Reclaim policies: Delete, Retain

#### 14.2 Persistent Volumes (PV)
- PV lifecycle: provisioning, binding, using, releasing
- Capacity and access modes
- Static vs dynamic provisioning
- PV phases: Available, Bound, Released, Failed

#### 14.3 Persistent Volume Claims (PVC)
- Requesting storage
- Binding PVCs to PVs
- Using PVCs in Pods
- PVC expansion
- Storage over-provisioning

#### 14.4 Storage Providers
- Local storage
- NFS (Network File System)
- iSCSI
- Cloud storage (AWS EBS, Azure Disk, GCP PD)
- Container Storage Interface (CSI)

---

## PHASE 8: Configuration & Security (2-3 weeks)

### 15. Resource Management

#### 15.1 Resource Requests and Limits
- CPU and memory resources
- Resource units (millicores, bytes)
- Requests vs Limits
- Quality of Service (QoS) classes:
  - Guaranteed
  - Burstable
  - BestEffort
- Resource quotas
- Limit ranges

#### 15.2 Scheduling
- Kubernetes scheduler overview
- Node selection:
  - nodeSelector
  - Node affinity/anti-affinity
  - Pod affinity/anti-affinity
- Taints and tolerations
- Pod priority and preemption
- Topology spread constraints

### 16. Security

#### 16.1 Authentication
- User accounts vs Service accounts
- Authentication methods:
  - Client certificates
  - Bearer tokens
  - Authentication proxy
  - OpenID Connect
- Kubeconfig file structure
- Multiple context management

#### 16.2 Authorization
- Authorization modes:
  - RBAC (Role-Based Access Control)
  - ABAC (Attribute-Based)
  - Webhook
  - Node authorization
- RBAC deep dive:
  - Roles and ClusterRoles
  - RoleBindings and ClusterRoleBindings
  - Service account tokens
  - Principle of least privilege

#### 16.3 Security Contexts
- Pod security context
- Container security context
- Running as non-root
- Read-only root filesystem
- Privilege escalation
- Linux capabilities
- SELinux and AppArmor

#### 16.4 Pod Security
- Pod Security Standards:
  - Privileged
  - Baseline
  - Restricted
- Pod Security Admission
- Security best practices

#### 16.5 Secrets Management
- Secret encryption at rest
- External secret managers (Vault, Sealed Secrets)
- Avoiding secrets in images
- Secret rotation strategies

---

## PHASE 9: Observability & Troubleshooting (2-3 weeks)

### 17. Logging

#### 17.1 Application Logging
- Container stdout/stderr
- Viewing logs: `kubectl logs`
- Multi-container pod logs
- Previous container logs
- Streaming logs

#### 17.2 Cluster Logging
- Logging architectures
- Node-level logging
- Cluster-level logging solutions:
  - EFK stack (Elasticsearch, Fluentd, Kibana)
  - ELK stack (Elasticsearch, Logstash, Kibana)
  - Loki and Grafana
- Log aggregation patterns

### 18. Monitoring

#### 18.1 Metrics Server
- Installing Metrics Server
- Resource metrics API
- `kubectl top` command
- Horizontal Pod Autoscaler data source

#### 18.2 Monitoring Solutions
- Prometheus architecture
- Installing Prometheus
- Service discovery
- Grafana for visualization
- Common metrics and alerts
- Golden signals: latency, traffic, errors, saturation

#### 18.3 Probes
- Liveness probes (restart unhealthy containers)
- Readiness probes (control traffic)
- Startup probes (slow-starting containers)
- Probe types: HTTP, TCP, Exec
- Probe configuration: delays, timeouts, thresholds

### 19. Troubleshooting

#### 19.1 Debugging Pods
- Pod status and conditions
- Common pod errors:
  - ImagePullBackOff
  - CrashLoopBackOff
  - Pending
  - OOMKilled
- Describing resources: `kubectl describe`
- Getting into containers: `kubectl exec`
- Debugging with ephemeral containers

#### 19.2 Debugging Services
- Service endpoint issues
- Network connectivity testing
- DNS resolution problems
- Using debug containers
- Port forwarding: `kubectl port-forward`

#### 19.3 Cluster Debugging
- Node status and conditions
- Component health checks
- Cluster events
- API server logs
- Controller manager logs
- Scheduler logs
- etcd health

---

## PHASE 10: Advanced Kubernetes (2-3 weeks)

### 20. Advanced Topics

#### 20.1 Horizontal Pod Autoscaler (HPA)
- Autoscaling based on metrics
- CPU and memory-based scaling
- Custom metrics scaling
- HPA algorithm
- Cooldown and stabilization

#### 20.2 Vertical Pod Autoscaler (VPA)
- Automatic resource recommendation
- VPA modes: Off, Initial, Auto
- VPA vs HPA

#### 20.3 Cluster Autoscaler
- Node-level autoscaling
- Scale up/down triggers
- Cloud provider integration

#### 20.4 Custom Resources (CRDs)
- Extending Kubernetes API
- Creating CRDs
- Custom controllers and operators
- Operator pattern
- Operator Framework

#### 20.5 Helm
- Package manager for Kubernetes
- Helm charts structure
- Installing charts
- Creating custom charts
- Chart repositories
- Helm templating

#### 20.6 Service Mesh
- Service mesh concept
- Istio architecture
- Traffic management
- Security features
- Observability enhancements
- When to use service mesh

---

## PHASE 11: Kubernetes the Hard Way (3-4 weeks)

### 21. Preparing Your Raspberry Pi Cluster

#### 21.1 Cluster Planning
- Defining cluster topology:
  - 1 control plane node (Raspberry Pi #1)
  - 3 worker nodes (Raspberry Pi #2, #3, #4)
- IP address assignment (static IPs)
- Hostname strategy
- Network setup verification

#### 21.2 OS and Prerequisites
- Fresh Raspberry Pi OS Lite installation on all 4 Pis
- System updates: `apt update && apt upgrade`
- Installing required tools:
  - curl, wget
  - socat
  - conntrack
  - ipset
- Disabling swap: `swapoff -a`
- Enabling IP forwarding
- Loading kernel modules

#### 21.3 Certificate Authority
- Understanding PKI (Public Key Infrastructure)
- Installing cfssl and cfssljson
- Creating CA configuration
- Generating CA certificate and key
- Certificate purposes in Kubernetes

### 22. Kubernetes the Hard Way - Components Installation

#### 22.1 Client Tools
- Installing kubectl on Windows and Linux
- Installing cfssl tools
- Configuration and testing

#### 22.2 Certificate Generation
- Admin client certificates
- Kubelet client certificates (one per node)
- Controller Manager client certificate
- Kube Proxy client certificate
- Scheduler client certificate
- Kubernetes API server certificate
- Service Account key pair
- Distributing certificates to nodes

#### 22.3 Kubernetes Configuration Files
- Understanding kubeconfig structure
- Generating kubeconfig files:
  - kubelet configs (per node)
  - kube-proxy config
  - kube-controller-manager config
  - kube-scheduler config
  - admin config
- Distributing configs to appropriate nodes

#### 22.4 Data Encryption
- Generating encryption key
- Creating encryption config
- Why etcd data should be encrypted

#### 22.5 Bootstrapping etcd Cluster
- Downloading etcd binaries
- Configuring etcd service
- Starting etcd cluster
- Verifying cluster health
- Understanding etcd clustering

#### 22.6 Bootstrapping Control Plane
- Downloading Kubernetes controller binaries:
  - kube-apiserver
  - kube-controller-manager
  - kube-scheduler
- Configuring kube-apiserver
- Configuring kube-controller-manager
- Configuring kube-scheduler
- Creating systemd service files
- Starting services
- Verification

#### 22.7 Kubernetes API Server
- API server arguments explained
- Authentication configuration
- Authorization configuration
- Admission controllers
- Service account configuration
- etcd configuration

#### 22.8 RBAC for Kubelet
- Creating ClusterRole for kubelet API access
- Creating ClusterRoleBinding
- Why kubelet needs authorization

#### 22.9 Kubernetes Frontend Load Balancer
- Installing HAProxy on control plane node
- Configuring load balancer
- Health checks
- Testing API availability

### 23. Worker Nodes Configuration

#### 23.1 Worker Node Prerequisites
- Installing container runtime (containerd)
- Configuring containerd
- Installing CNI plugins
- Creating required directories

#### 23.2 Bootstrapping Worker Nodes
- Downloading worker binaries:
  - kubelet
  - kube-proxy
- Configuring kubelet
- Configuring kube-proxy
- Creating systemd services
- Starting services

#### 23.3 kubelet Configuration
- Node registration
- Certificate configuration
- Pod CIDR assignment
- Container runtime configuration
- Cgroup driver

#### 23.4 kube-proxy Configuration
- Proxy mode (iptables/ipvs)
- Cluster CIDR
- Kubeconfig location

### 24. Networking Configuration

#### 24.1 Pod Networking
- Installing CNI plugin (Weave/Calico/Flannel)
- Configuring Pod CIDR
- Testing pod-to-pod communication
- Understanding network overlay

#### 24.2 DNS Setup
- Deploying CoreDNS
- DNS service configuration
- Testing DNS resolution
- Troubleshooting DNS issues

### 25. Smoke Tests

#### 25.1 Data Encryption
- Creating secret
- Verifying etcd encryption
- Decrypting etcd data

#### 25.2 Deployments
- Creating test deployment
- Verifying pod scheduling
- Testing pod communication

#### 25.3 Services
- Creating test service
- Port forwarding test
- Service discovery test
- External access test

#### 25.4 Logs and Exec
- Testing `kubectl logs`
- Testing `kubectl exec`
- Testing `kubectl port-forward`

---

## PHASE 12: kubectl Mastery (2 weeks)

### 26. kubectl Command Line

#### 26.1 kubectl Basics
- Command structure: `kubectl [command] [TYPE] [NAME] [flags]`
- Getting help: `kubectl help`
- Resource types and abbreviations
- Output formats: `-o yaml`, `-o json`, `-o wide`
- Dry run: `--dry-run=client`

#### 26.2 Essential kubectl Commands
- `kubectl get` - listing resources
- `kubectl describe` - detailed resource info
- `kubectl create` - creating resources
- `kubectl apply` - declarative management
- `kubectl edit` - interactive editing
- `kubectl delete` - removing resources
- `kubectl logs` - container logs
- `kubectl exec` - executing commands

#### 26.3 kubectl Advanced Usage
- Field selectors
- Label selectors
- JSONPath queries
- Custom columns
- Sorting output
- Watching resources: `-w`
- Generating YAML: `--dry-run=client -o yaml`

#### 26.4 Context and Configuration
- Multiple cluster management
- Kubeconfig file structure
- Context switching
- Namespace switching
- kubectl plugins
- kubectl aliases and shortcuts

#### 26.5 Imperative vs Declarative
- When to use imperative commands
- When to use declarative YAML
- Generating YAML from imperative commands
- Managing resources with Git (GitOps)

---

## PHASE 13: CKA Exam Preparation (3-4 weeks)

### 27. CKA Exam Overview

#### 27.1 Exam Details
- Exam format: performance-based
- Duration: 2 hours
- Passing score: 66%
- Number of questions: 15-20
- Remote proctored exam
- Single retake included

#### 27.2 Exam Environment
- Ubuntu-based terminal
- kubectl, vim, nano available
- Access to Kubernetes documentation
- Multiple clusters
- Time management strategies

#### 27.3 Exam Domains
- Cluster Architecture, Installation & Configuration (25%)
- Workloads & Scheduling (15%)
- Services & Networking (20%)
- Storage (10%)
- Troubleshooting (30%)

### 28. Exam Practice

#### 28.1 Practice Platforms
- Killer.sh (2 free sessions with exam)
- Practice exercises for each domain
- Timed practice sessions
- Mock exams

#### 28.2 Speed and Efficiency
- kubectl aliases setup
- YAML templates
- Imperative command mastery
- vim/nano proficiency
- Documentation navigation
- Time-saving tips

#### 28.3 Common Exam Tasks
- Creating and managing Pods
- Troubleshooting failed deployments
- Configuring network policies
- Setting up persistent storage
- Implementing RBAC
- Cluster upgrades
- Backup and restore etcd
- Node maintenance (drain, cordon)

### 29. Knowledge Verification

#### 29.1 Self-Assessment Checklist
- Can you create all resource types from memory?
- Can you troubleshoot pod failures quickly?
- Can you navigate Kubernetes docs efficiently?
- Can you use kubectl without looking up syntax?
- Can you explain each control plane component?
- Can you configure RBAC from scratch?

#### 29.2 Weak Area Remediation
- Identify weak domains
- Focused practice on weak areas
- Hands-on repetition
- Teaching concepts to others

---

## PHASE 14: Beyond CKA (Ongoing)

### 30. Continued Learning

#### 30.1 Additional Certifications
- CKAD (Certified Kubernetes Application Developer)
- CKS (Certified Kubernetes Security Specialist)
- Prometheus Certified Associate

#### 30.2 Real-World Projects
- Multi-tier application deployment
- CI/CD pipeline with Kubernetes
- Monitoring and logging stack
- Database clustering in Kubernetes
- Microservices architecture

#### 30.3 Community Involvement
- Kubernetes Slack channels
- Local Kubernetes meetups
- Contributing to CNCF projects
- Writing blog posts
- Helping others learn

---

## Daily Practice Recommendations

### Beginner Phase (Weeks 1-8)
- 1-2 hours daily
- Focus on foundations
- Take detailed notes
- Practice commands immediately

### Intermediate Phase (Weeks 9-16)
- 2-3 hours daily
- Hands-on with Raspberry Pi cluster
- Break and fix exercises
- Document your learning

### Advanced Phase (Weeks 17-24)
- 3-4 hours daily
- Kubernetes the Hard Way implementation
- Exam-focused practice
- Timed exercises

## Essential Resources

### Documentation
- Kubernetes Official Documentation: kubernetes.io/docs
- Kubernetes the Hard Way: github.com/kelseyhightower/kubernetes-the-hard-way
- kubectl Cheat Sheet: kubernetes.io/docs/reference/kubectl/cheatsheet

### Books
- "Kubernetes Up & Running" by Kelsey Hightower
- "Kubernetes in Action" by Marko Lukša
- "The Kubernetes Book" by Nigel Poulton

### Practice Platforms
- Killer.sh (CKA simulator)
- KodeKloud (hands-on labs)
- Katacoda (interactive scenarios)

### Video Courses
- Certified Kubernetes Administrator (CKA) by KodeKloud
- Kubernetes Mastery by Udemy
- Linux Academy Kubernetes courses

## Tips for Success

1. **Hands-on is crucial**: Reading alone won't work. Type every command.
2. **Break things**: Learn by fixing errors.
3. **Document everything**: Keep a personal wiki or notes.
4. **Daily consistency**: 2 hours daily beats 14 hours on weekend.
5. **Join communities**: Ask questions, help others.
6. **Use your Raspberry Pi cluster**: Physical hardware reinforces learning.
7. **Time yourself**: Practice under exam conditions.
8. **Master kubectl**: Speed comes from muscle memory.
9. **Read error messages**: They tell you what's wrong.
10. **Don't memorize, understand**: Concepts matter more than syntax.

## Your Raspberry Pi Lab Setup

Once you're comfortable with Linux (Phase 2), set up your lab:
- Pi #1: Control plane node (master)
- Pi #2-4: Worker nodes
- All connected via network switch
- Static IP addresses assigned
- SSH access from Windows PC

This physical cluster is your playground for Phases 4-13.

---

## APPENDIX A: Detailed Step-by-Step Setup Guide

### A1. Setting Up Your Windows 11 Computer with WSL

#### Step 1: Install WSL2 (Windows Subsystem for Linux)

**Prerequisites:**
- Windows 11 (any edition)
- Administrator access
- Internet connection

**Installation Steps:**

1. **Open PowerShell as Administrator:**
   - Press Windows key
   - Type "PowerShell"
   - Right-click "Windows PowerShell"
   - Select "Run as administrator"

2. **Install WSL with one command:**
   ```powershell
   wsl --install
   ```
   This command will:
   - Enable WSL feature
   - Install WSL2
   - Install Ubuntu 22.04 LTS (default distribution)
   - Set WSL2 as default version

3. **Restart your computer** (required after first install)

4. **First Launch of Ubuntu:**
   - After restart, Ubuntu will auto-launch (or search "Ubuntu" in Start menu)
   - Wait for installation to complete (1-2 minutes)
   - You'll be prompted to create a UNIX username (use lowercase, no spaces)
   - Create a password (you won't see it as you type - this is normal)
   - Confirm password
   - You now have a Linux terminal!

5. **Update WSL to latest version:**
   ```powershell
   # Run in PowerShell
   wsl --update
   ```

6. **Verify Installation:**
   ```bash
   # In Ubuntu terminal
   lsb_release -a  # Should show Ubuntu 22.04
   uname -r        # Should show WSL2 kernel
   ```

**Understanding WSL File Systems:**
- **Windows files from WSL:** `/mnt/c/Users/YourName/`
- **WSL files from Windows:** Type `\\wsl$\Ubuntu` in File Explorer address bar
- **WSL home directory:** `/home/yourusername` or `~`

#### Step 2: Install Windows Terminal (Highly Recommended)

1. Open Microsoft Store
2. Search "Windows Terminal"
3. Install (free)
4. Set as default terminal:
   - Open Windows Terminal
   - Settings (Ctrl + ,)
   - Startup → Default profile → Ubuntu
   - Default terminal application → Windows Terminal

**Why Windows Terminal?**
- Multiple tabs (Ubuntu, PowerShell, Command Prompt)
- Better fonts and colors
- Easy copy/paste (Ctrl+Shift+C/V)
- Split panes
- Customizable themes

#### Step 3: Install Visual Studio Code with WSL Extension

1. **Download and install VS Code:**
   - Go to code.visualstudio.com
   - Download Windows version
   - Run installer with default options
   - Pin to taskbar

2. **Install WSL Extension:**
   - Open VS Code
   - Click Extensions icon (left sidebar) or press Ctrl+Shift+X
   - Search "WSL"
   - Install "WSL" by Microsoft
   - This allows seamless editing of WSL files

3. **Open WSL folder in VS Code:**
   ```bash
   # From Ubuntu terminal
   cd ~
   code .
   ```
   VS Code opens with "WSL: Ubuntu" in bottom-left corner!

4. **Install useful VS Code extensions:**
   - "YAML" by Red Hat
   - "Docker" by Microsoft
   - "Kubernetes" by Microsoft
   - "Remote - SSH" by Microsoft (for connecting to Raspberry Pis)

#### Step 4: Setup Your WSL Environment

1. **Update Ubuntu packages:**
   ```bash
   sudo apt update
   sudo apt upgrade -y
   ```

2. **Install essential tools:**
   ```bash
   sudo apt install -y \
     curl \
     wget \
     git \
     net-tools \
     nano \
     vim \
     htop \
     tree \
     unzip
   ```

3. **Configure Git (you'll need this):**
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "your.email@example.com"
   ```

#### Step 5: Create Your Learning Folder Structure (in WSL)

```bash
# Create main directory
cd ~
mkdir kubernetes-learning
cd kubernetes-learning

# Create subdirectories
mkdir -p {scripts,yaml-files,notes,certificates,backups,labs}

# Verify structure
tree
```

**Directory purpose:**
- `scripts/` - Bash scripts you create
- `yaml-files/` - Kubernetes manifests
- `notes/` - Your learning documentation
- `certificates/` - PKI certificates for K8s cluster
- `backups/` - Cluster backups
- `labs/` - Practice exercises

#### Step 6: Setup Note-Taking System in WSL

```bash
# Create your learning journal
cd ~/kubernetes-learning/notes
nano learning-journal.md
```

Add this template:
```markdown
# Kubernetes Learning Journey

## Day 1 - [Date]
### What I Learned
- Topic 1
- Topic 2

### Commands Practiced
```bash
command: explanation
```

### Problems & Solutions
- Problem: solution

### Questions
- Question 1
```

Save with Ctrl+X, Y, Enter.

**Alternative:** Edit in VS Code from WSL:
```bash
code ~/kubernetes-learning/notes/learning-journal.md
```

#### Step 7: SSH Setup in WSL

**Great news:** SSH client is already installed in WSL!

Test it:
```bash
ssh -V  # Should show OpenSSH version
```

**Generate SSH keys (we'll use these for Raspberry Pis):**
```bash
# Generate ED25519 key (modern, secure)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Press Enter for default location (~/.ssh/id_ed25519)
# Enter passphrase (optional but recommended)
# Keys created at:
# - Private key: ~/.ssh/id_ed25519
# - Public key: ~/.ssh/id_ed25519.pub
```

**Check your keys:**
```bash
ls -la ~/.ssh/
cat ~/.ssh/id_ed25519.pub  # Your public key
```

#### Step 8: Install Additional Tools in WSL

**Install Raspberry Pi Imager equivalent:**

Since Raspberry Pi Imager is a GUI tool, we'll use it from Windows:
1. Download from raspberrypi.com/software (Windows version)
2. Install normally on Windows
3. Use it to flash SD cards
4. All other work (SSH, management) happens from WSL

**Install Docker in WSL (for Phase 4):**
```bash
# We'll do this in Phase 4, but here's the command for reference
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
```

**Test network connectivity from WSL:**
```bash
# Test internet
ping -c 3 google.com

# Test DNS
nslookup google.com

# Check your WSL IP address
ip addr show eth0
```

#### Step 9: WSL Tips and Tricks

**Accessing Windows files:**
```bash
# Your Windows user folder
cd /mnt/c/Users/YourWindowsUsername/

# Desktop
cd /mnt/c/Users/YourWindowsUsername/Desktop/

# Downloads
cd /mnt/c/Users/YourWindowsUsername/Downloads/
```

**Accessing WSL files from Windows:**
- Open File Explorer
- In address bar, type: `\\wsl$\Ubuntu\home\yourusername`
- Bookmark this location!

**Useful WSL commands (run from PowerShell):**
```powershell
wsl --list --verbose          # List installed distributions
wsl --shutdown                # Stop all WSL instances
wsl --set-default Ubuntu      # Set default distribution
wsl -d Ubuntu                 # Launch specific distribution
wsl --export Ubuntu backup.tar  # Backup your WSL
```

**Performance tip:**
Store your Kubernetes files in WSL filesystem (`~/kubernetes-learning/`) not in `/mnt/c/`. WSL filesystem is much faster!

#### Step 10: WSL Configuration (Optional but Useful)

Create WSL config file:
```bash
# In Windows, create: C:\Users\YourName\.wslconfig
notepad.exe C:\Users\$env:USERNAME\.wslconfig
```

Add (adjust for your PC):
```ini
[wsl2]
memory=4GB           # Limit WSL memory
processors=2         # Limit CPU cores
swap=2GB            # Swap size
localhostForwarding=true  # Important for accessing K8s from Windows
```

Save and restart WSL:
```powershell
wsl --shutdown
```

#### Common WSL Issues and Solutions

**Problem: WSL won't start**
- Solution: Run in PowerShell as admin:
  ```powershell
  wsl --update
  wsl --shutdown
  Restart-Service LxssManager
  ```

**Problem: Slow file access**
- Solution: Keep files in WSL filesystem (`~`) not Windows (`/mnt/c`)

**Problem: Can't connect to internet from WSL**
- Solution: 
  ```bash
  sudo rm /etc/resolv.conf
  sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
  sudo bash -c 'echo "[network]" > /etc/wsl.conf'
  sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
  ```
  Then: `wsl --shutdown` in PowerShell and restart Ubuntu

**Problem: Permission denied errors**
- Solution: Never use `sudo` to create files you'll edit as regular user
- Fix permissions: `sudo chown -R $USER:$USER ~/kubernetes-learning`

---

### A2. Hardware Shopping List & Setup

#### Required Hardware (Budget: ~$400-500)
- **4x Raspberry Pi 4 Model B (4GB or 8GB RAM)**: ~$55-75 each
- **4x Official Raspberry Pi 15W USB-C Power Supply**: ~$8 each
- **4x SanDisk 64GB microSD cards (Class 10, U3)**: ~$10 each
- **1x TP-Link 8-port Gigabit Switch**: ~$25
- **5x Ethernet cables (3ft or 1m)**: ~$2 each
- **Optional: Raspberry Pi cluster case**: ~$40
- **Optional: Heatsinks or fans for each Pi**: ~$10 total
- **Optional: USB keyboard and mouse for initial setup**: ~$20
- **Optional: Mini HDMI to HDMI cable**: ~$8

#### Physical Setup Instructions

**Step 1: Unbox and Inspect**
1. Verify all Raspberry Pis power on (connect to power, look for red LED)
2. Check all SD cards are not damaged
3. Test network switch (plug in, lights should come on)
4. Label each Raspberry Pi:
   - Pi #1 = "k8s-master" (control plane)
   - Pi #2 = "k8s-worker-1"
   - Pi #3 = "k8s-worker-2"
   - Pi #4 = "k8s-worker-3"

**Step 2: Network Setup**
1. Connect network switch to your home router using ethernet cable
2. Power on the switch
3. Prepare 4 ethernet cables for the Raspberry Pis
4. Don't connect Pis yet (we'll do this after OS installation)

**Step 3: Workspace Organization**
1. Clear desk space near your Windows computer
2. Arrange Raspberry Pis in a row or stack (if using case)
3. Keep all power supplies accessible
4. Ensure good ventilation (Pis can get warm)

---

### A3. Installing Raspberry Pi OS (Detailed Steps)

#### Part 1: Preparing SD Card #1 (Master Node)

**Step 1: Launch Raspberry Pi Imager**
1. Open Raspberry Pi Imager on Windows
2. Click "CHOOSE DEVICE" → Raspberry Pi 4
3. Click "CHOOSE OS" → Raspberry Pi OS (other) → **Raspberry Pi OS Lite (64-bit)**
   - Note: We use "Lite" (no desktop) because we only need command line
   - 64-bit is required for Kubernetes
4. Click "CHOOSE STORAGE" → select your first microSD card

**Step 2: Configure OS Settings (IMPORTANT!)**
1. Click the **gear icon** (⚙️) in bottom right (OS Customisation)
2. Or it may prompt you automatically
3. Configure the following:

   **General Tab:**
   - Set hostname: `k8s-master`
   - Enable "Set username and password"
     - Username: `pi` (or your choice)
     - Password: Choose a strong password (write it down!)
   - Enable "Configure wireless LAN" (optional, if you want WiFi backup)
     - SSID: Your WiFi name
     - Password: Your WiFi password
     - Wireless LAN country: Your country
   - Set locale settings:
     - Time zone: Your timezone
     - Keyboard layout: Your layout (US, UK, etc.)

   **Services Tab:**
   - **Enable SSH** ← THIS IS CRITICAL
   - Select "Use password authentication"
   - (Later we'll set up key-based authentication)

   **Options Tab:**
   - Enable telemetry: Your choice (I recommend No)
   - Eject media when finished: Yes

4. Click "SAVE"

**Step 3: Write the OS**
1. Click "WRITE"
2. Confirm you want to erase the SD card
3. Wait 5-10 minutes for writing and verification
4. When complete, safely eject SD card
5. Label the SD card: "k8s-master"

**Step 4: Repeat for Worker Nodes**
Repeat Steps 1-3 for the remaining 3 SD cards, but change hostnames:
- SD Card #2: hostname = `k8s-worker-1`
- SD Card #3: hostname = `k8s-worker-2`
- SD Card #4: hostname = `k8s-worker-3`

Everything else stays the same (username, password, SSH enabled).

---

#### Part 2: First Boot and Connection

**Step 1: Boot the Master Node**
1. Insert "k8s-master" SD card into Raspberry Pi #1
2. Connect Raspberry Pi #1 to network switch via ethernet
3. Connect power supply to Raspberry Pi #1
4. Red LED = power, Green LED = activity
5. Wait 2-3 minutes for first boot

**Step 2: Find the Raspberry Pi IP Address**

Method A - Check your router:
1. Open web browser on Windows
2. Type your router IP (usually 192.168.1.1 or 192.168.0.1)
3. Login to router admin panel
4. Look for "Connected Devices" or "DHCP Clients"
5. Find device named "k8s-master"
6. Note its IP address (e.g., 192.168.1.100)

Method B - Use network scanner (easier):
1. Download "Advanced IP Scanner" (free) for Windows
2. Run scan on your network
3. Look for "k8s-master" or Raspberry Pi devices
4. Note the IP address

Method C - Command line (if you know your network range):
1. Open Command Prompt on Windows
2. Type: `ping k8s-master.local`
3. If it works, note the IP address shown
4. If not, use Method A or B

**Step 3: Connect via SSH**
1. Open PuTTY on Windows
2. In "Host Name" field: type the IP address (e.g., 192.168.1.100)
3. Port: 22 (default)
4. Connection type: SSH
5. Click "Open"
6. Security alert appears (first time): Click "Accept"
7. Login prompt appears:
   - login as: `pi` (or your username)
   - password: [type your password - won't show on screen]
8. Success! You should see: `pi@k8s-master:~ # Complete Kubernetes Learning Path: Zero to CKA Hero

## Overview
This guide takes you from knowing nothing about computers to becoming a Certified Kubernetes Administrator (CKA). Estimated timeline: 4-6 months with consistent daily practice.

---

## PHASE 1: Computer & Networking Fundamentals (2-3 weeks)

### 1. Basic Computer Concepts
#### 1.1 Understanding Your Windows 11 Computer
- What is an operating system?
- File systems and directories
- Running programs and processes
- Task Manager basics
- Installing software

#### 1.2 Command Line Basics (Windows)
- Opening Command Prompt and PowerShell
- Basic commands: `cd`, `dir`, `mkdir`, `del`, `copy`
- Understanding paths (C:\Users\YourName\)
- Environment variables
- Running programs from command line

#### 1.3 Text Editors
- Install and use Notepad++
- Install and use Visual Studio Code
- Basic file editing
- Understanding file formats (.txt, .json, .yaml)

### 2. Networking Fundamentals
#### 2.1 Basic Networking Concepts
- What is an IP address?
- Understanding 192.168.x.x (local networks)
- What is a port? (80, 443, 22, etc.)
- Domain names vs IP addresses
- Understanding localhost/127.0.0.1

#### 2.2 Network Connectivity
- Using `ping` command
- Understanding network connectivity
- Home router basics
- DHCP (how devices get IP addresses)
- Static vs Dynamic IP addresses

#### 2.3 Internet & Web Basics
- How web browsers work
- HTTP vs HTTPS
- APIs (Application Programming Interfaces)
- Client-server model
- Understanding URLs

### 3. Understanding Raspberry Pi Hardware
#### 3.1 Raspberry Pi Components
- What is a Raspberry Pi?
- Understanding single-board computers
- Raspberry Pi ports (USB, HDMI, Ethernet, GPIO)
- Power requirements (USB-C power)
- SD cards as storage

#### 3.2 Required Hardware Setup
- 4x Raspberry Pi 4 (minimum 4GB RAM recommended)
- 4x microSD cards (32GB+ each)
- 4x USB-C power supplies (3A each)
- 4x Ethernet cables
- 1x Network switch (5+ ports)
- Optional: Raspberry Pi case/cooling
- Optional: Monitor, keyboard, mouse for initial setup

#### 3.3 Physical Setup
- Connecting Raspberry Pis to network switch
- Connecting switch to home router
- Proper power supply connection
- Understanding LED indicators

---

## PHASE 2: Linux Fundamentals (3-4 weeks)

### 4. Introduction to Linux
#### 4.1 What is Linux?
- Linux vs Windows differences
- Linux distributions (Ubuntu, Debian, Raspberry Pi OS)
- Open source software concept
- Why Kubernetes runs on Linux

#### 4.2 Installing Raspberry Pi OS
- Download Raspberry Pi Imager on Windows
- Choosing OS: Raspberry Pi OS Lite (64-bit)
- Flashing OS to SD card
- Enabling SSH before first boot
- Setting up WiFi (optional) via config files

#### 4.3 First Boot and SSH Connection
- Installing PuTTY on Windows (SSH client)
- Finding Raspberry Pi IP addresses on network
- First SSH connection (default user: pi)
- Changing default password
- Basic security practices

### 5. Linux Command Line Mastery
#### 5.1 Essential Commands
- Navigation: `pwd`, `cd`, `ls`, `tree`
- File operations: `touch`, `mkdir`, `rm`, `mv`, `cp`
- Viewing files: `cat`, `less`, `head`, `tail`
- Searching: `find`, `grep`, `locate`
- Help: `man`, `--help`, `apropos`

#### 5.2 File System Structure
- Understanding `/` (root directory)
- Important directories: `/home`, `/etc`, `/var`, `/usr`, `/bin`
- User home directories: `~`
- Hidden files (starting with .)
- File paths: absolute vs relative

#### 5.3 File Permissions
- Understanding `rwx` (read, write, execute)
- User, group, and others
- Using `chmod` to change permissions
- Using `chown` to change ownership
- Understanding `sudo` (superuser do)

#### 5.4 Text Editing in Linux
- Using `nano` editor (beginner-friendly)
- Using `vim` editor (advanced)
- Basic vim: insert mode, command mode, saving, quitting
- Creating and editing configuration files

#### 5.5 Process Management
- Viewing processes: `ps`, `top`, `htop`
- Killing processes: `kill`, `killall`
- Running in background: `&`, `bg`, `fg`
- Understanding PIDs (Process IDs)
- System resources: CPU, memory, disk

#### 5.6 Package Management
- Understanding APT (Advanced Package Tool)
- `apt update` - refresh package lists
- `apt upgrade` - upgrade installed packages
- `apt install` - install new packages
- `apt remove` - remove packages
- Finding packages: `apt search`

#### 5.7 System Administration
- User management: `useradd`, `usermod`, `passwd`
- System information: `uname`, `hostname`, `uptime`
- Disk usage: `df`, `du`
- Viewing logs: `/var/log/`, `journalctl`
- System services: `systemctl`

### 6. Networking in Linux
#### 6.1 Network Configuration
- Viewing network interfaces: `ip addr`, `ifconfig`
- Setting static IP addresses
- Editing `/etc/network/interfaces`
- DNS configuration: `/etc/resolv.conf`
- Hostname configuration: `/etc/hosts`, `/etc/hostname`

#### 6.2 Network Tools
- Testing connectivity: `ping`, `traceroute`
- Port scanning: `netstat`, `ss`
- Downloading files: `wget`, `curl`
- Secure copy: `scp`, `rsync`
- Network traffic: `tcpdump`

#### 6.3 SSH Deep Dive
- SSH key generation: `ssh-keygen`
- Public/private key pairs
- Copying keys: `ssh-copy-id`
- SSH configuration: `~/.ssh/config`
- SSH tunneling basics

---

## PHASE 3: Scripting & Automation (2 weeks)

### 7. Bash Scripting
#### 7.1 Script Basics
- Creating your first script
- Shebang: `#!/bin/bash`
- Making scripts executable: `chmod +x`
- Running scripts: `./script.sh`
- Comments in scripts

#### 7.2 Variables and Input
- Declaring variables
- Environment variables
- Reading user input: `read`
- Command substitution: `$(command)`
- Special variables: `$?`, `$1`, `$@`

#### 7.3 Control Structures
- If statements: `if`, `elif`, `else`
- Loops: `for`, `while`, `until`
- Case statements
- Exit codes and error handling
- Functions in bash

#### 7.4 Practical Scripts
- System health check script
- Automated backup script
- Log rotation script
- Network connectivity checker

---

## PHASE 4: Containers & Docker (3-4 weeks)

### 8. Understanding Virtualization
#### 8.1 Virtual Machines Concept
- Hardware vs software virtualization
- Hypervisors (Type 1 & 2)
- VM limitations: size, boot time, resource overhead
- When to use VMs

#### 8.2 Introduction to Containers
- Containers vs Virtual Machines
- What is a container image?
- Container runtimes
- Benefits: lightweight, fast, portable

### 9. Docker Fundamentals
#### 9.1 Installing Docker
- Installing Docker on Raspberry Pi OS
- Docker Engine components
- Docker daemon and client
- Verifying installation: `docker --version`
- Running `hello-world` container

#### 9.2 Docker Images
- What is a Docker image?
- Docker Hub registry
- Pulling images: `docker pull`
- Listing images: `docker images`
- Searching images: `docker search`
- Image tags and versions
- Image layers concept

#### 9.3 Running Containers
- Running containers: `docker run`
- Common flags: `-d`, `-p`, `-v`, `--name`, `-e`
- Interactive containers: `-it`
- Port mapping: host:container
- Listing containers: `docker ps`, `docker ps -a`
- Container logs: `docker logs`
- Executing commands: `docker exec`

#### 9.4 Container Lifecycle
- Starting containers: `docker start`
- Stopping containers: `docker stop`
- Restarting containers: `docker restart`
- Removing containers: `docker rm`
- Container states: created, running, stopped, exited
- Auto-restart policies

#### 9.5 Building Docker Images
- Understanding Dockerfile
- FROM, RUN, COPY, CMD, ENTRYPOINT
- Building images: `docker build`
- Tagging images
- Best practices: layer caching, .dockerignore
- Multi-stage builds

#### 9.6 Docker Volumes
- Understanding data persistence
- Volume types: named volumes, bind mounts
- Creating volumes: `docker volume create`
- Mounting volumes: `-v` flag
- Volume management commands
- Backup and restore strategies

#### 9.7 Docker Networking
- Default bridge network
- Creating custom networks: `docker network create`
- Network drivers: bridge, host, overlay
- Connecting containers to networks
- Container DNS resolution
- Exposing vs publishing ports

#### 9.8 Docker Compose
- What is Docker Compose?
- Installing Docker Compose
- Understanding `docker-compose.yml`
- Services, networks, volumes in Compose
- Running multi-container apps: `docker-compose up`
- Managing compose applications

### 10. Container Runtime Alternatives
#### 10.1 containerd
- What is containerd?
- Relationship to Docker
- Using `ctr` command line
- containerd vs Docker Engine

#### 10.2 CRI-O
- Container Runtime Interface (CRI)
- CRI-O purpose and design
- Installing and using CRI-O
- Why Kubernetes uses CRI

---

## PHASE 5: Kubernetes Core Concepts (4-5 weeks)

### 11. Introduction to Kubernetes
#### 11.1 What is Kubernetes?
- Container orchestration explained
- History and creation (Google, Borg)
- CNCF (Cloud Native Computing Foundation)
- When to use Kubernetes
- Kubernetes vs Docker Swarm vs others

#### 11.2 Kubernetes Architecture
- Master/Control Plane vs Worker Nodes
- Control Plane Components:
  - kube-apiserver (API server)
  - etcd (distributed key-value store)
  - kube-scheduler (pod placement)
  - kube-controller-manager (controllers)
  - cloud-controller-manager (cloud integration)
- Worker Node Components:
  - kubelet (node agent)
  - kube-proxy (network proxy)
  - container runtime (Docker/containerd/CRI-O)

#### 11.3 Kubernetes Objects
- Understanding Kubernetes resources
- API resources and API groups
- Object specification and status
- Labels and selectors
- Annotations
- Namespaces

### 12. Core Kubernetes Resources

#### 12.1 Pods
- What is a Pod?
- Pods as smallest deployable unit
- Single vs multi-container Pods
- Pod lifecycle phases
- Init containers
- Sidecar pattern
- Pod networking (shared IP)
- Pod storage (shared volumes)

#### 12.2 ReplicaSets
- What is a ReplicaSet?
- Ensuring desired number of replicas
- Pod template specification
- Label selectors for pod management
- Scaling ReplicaSets
- Self-healing capabilities

#### 12.3 Deployments
- Deployment purpose and use cases
- Declarative updates for Pods
- Rolling updates strategy
- Rollback capabilities
- Deployment strategies: RollingUpdate, Recreate
- Revision history
- Pausing and resuming deployments
- Deployment vs ReplicaSet relationship

#### 12.4 Services
- Service abstraction explained
- Service types:
  - ClusterIP (internal only)
  - NodePort (external access via node)
  - LoadBalancer (cloud load balancer)
  - ExternalName (DNS CNAME)
- Service discovery mechanisms
- Endpoints and EndpointSlices
- Headless services
- Service networking and kube-proxy

#### 12.5 Namespaces
- Logical cluster partitioning
- Default namespaces: default, kube-system, kube-public
- Creating and using namespaces
- Resource quotas per namespace
- Network policies and namespaces
- Context and namespace management

#### 12.6 ConfigMaps and Secrets
- Separating configuration from code
- ConfigMaps:
  - Creating from literals, files, directories
  - Using in Pods: environment variables, volumes
  - Updating ConfigMaps
- Secrets:
  - Secret types: Opaque, TLS, Docker registry
  - Base64 encoding
  - Using secrets safely
  - Secret best practices
  - Encryption at rest

#### 12.7 Volumes
- Container storage problems
- Volume types overview:
  - emptyDir (temporary)
  - hostPath (node filesystem)
  - PersistentVolume (PV)
  - PersistentVolumeClaim (PVC)
  - ConfigMap and Secret volumes
  - Cloud provider volumes (AWS EBS, etc.)
- Volume lifecycle
- Access modes: ReadWriteOnce, ReadOnlyMany, ReadWriteMany

#### 12.8 StatefulSets
- Stateful applications in Kubernetes
- Stable network identities
- Ordered deployment and scaling
- Persistent storage per pod
- Use cases: databases, distributed systems
- Headless services with StatefulSets

#### 12.9 DaemonSets
- Running one Pod per node
- Use cases: monitoring agents, log collectors
- Node selection with DaemonSets
- Updating DaemonSets

#### 12.10 Jobs and CronJobs
- Batch processing in Kubernetes
- Jobs:
  - Run-to-completion workloads
  - Parallelism and completions
  - Job patterns
- CronJobs:
  - Scheduled jobs
  - Cron syntax
  - Job history limits

---

## PHASE 6: Kubernetes Networking (2 weeks)

### 13. Networking Deep Dive

#### 13.1 Kubernetes Network Model
- Fundamental networking requirements
- Pod-to-Pod communication
- Pod-to-Service communication
- External-to-Service communication
- Network namespaces
- Container Network Interface (CNI)

#### 13.2 CNI Plugins
- What is CNI?
- Popular CNI plugins:
  - Calico
  - Flannel
  - Weave Net
  - Cilium
- Installing CNI plugins
- Network policies support

#### 13.3 Network Policies
- Controlling traffic between Pods
- Ingress and egress rules
- Pod selectors
- Namespace selectors
- Default deny policies
- Common policy patterns

#### 13.4 Ingress
- Ingress resource explained
- Ingress controllers (Nginx, Traefik, HAProxy)
- Installing Ingress controller
- Path-based routing
- Host-based routing
- TLS/HTTPS termination
- Ingress annotations

#### 13.5 DNS in Kubernetes
- CoreDNS service
- Service DNS records
- Pod DNS records
- DNS policy options
- Debugging DNS issues

---

## PHASE 7: Storage in Kubernetes (1-2 weeks)

### 14. Persistent Storage

#### 14.1 Storage Classes
- Dynamic volume provisioning
- Storage Class parameters
- Default storage class
- Volume binding modes
- Reclaim policies: Delete, Retain

#### 14.2 Persistent Volumes (PV)
- PV lifecycle: provisioning, binding, using, releasing
- Capacity and access modes
- Static vs dynamic provisioning
- PV phases: Available, Bound, Released, Failed

#### 14.3 Persistent Volume Claims (PVC)
- Requesting storage
- Binding PVCs to PVs
- Using PVCs in Pods
- PVC expansion
- Storage over-provisioning

#### 14.4 Storage Providers
- Local storage
- NFS (Network File System)
- iSCSI
- Cloud storage (AWS EBS, Azure Disk, GCP PD)
- Container Storage Interface (CSI)

---

## PHASE 8: Configuration & Security (2-3 weeks)

### 15. Resource Management

#### 15.1 Resource Requests and Limits
- CPU and memory resources
- Resource units (millicores, bytes)
- Requests vs Limits
- Quality of Service (QoS) classes:
  - Guaranteed
  - Burstable
  - BestEffort
- Resource quotas
- Limit ranges

#### 15.2 Scheduling
- Kubernetes scheduler overview
- Node selection:
  - nodeSelector
  - Node affinity/anti-affinity
  - Pod affinity/anti-affinity
- Taints and tolerations
- Pod priority and preemption
- Topology spread constraints

### 16. Security

#### 16.1 Authentication
- User accounts vs Service accounts
- Authentication methods:
  - Client certificates
  - Bearer tokens
  - Authentication proxy
  - OpenID Connect
- Kubeconfig file structure
- Multiple context management

#### 16.2 Authorization
- Authorization modes:
  - RBAC (Role-Based Access Control)
  - ABAC (Attribute-Based)
  - Webhook
  - Node authorization
- RBAC deep dive:
  - Roles and ClusterRoles
  - RoleBindings and ClusterRoleBindings
  - Service account tokens
  - Principle of least privilege

#### 16.3 Security Contexts
- Pod security context
- Container security context
- Running as non-root
- Read-only root filesystem
- Privilege escalation
- Linux capabilities
- SELinux and AppArmor

#### 16.4 Pod Security
- Pod Security Standards:
  - Privileged
  - Baseline
  - Restricted
- Pod Security Admission
- Security best practices

#### 16.5 Secrets Management
- Secret encryption at rest
- External secret managers (Vault, Sealed Secrets)
- Avoiding secrets in images
- Secret rotation strategies

---

## PHASE 9: Observability & Troubleshooting (2-3 weeks)

### 17. Logging

#### 17.1 Application Logging
- Container stdout/stderr
- Viewing logs: `kubectl logs`
- Multi-container pod logs
- Previous container logs
- Streaming logs

#### 17.2 Cluster Logging
- Logging architectures
- Node-level logging
- Cluster-level logging solutions:
  - EFK stack (Elasticsearch, Fluentd, Kibana)
  - ELK stack (Elasticsearch, Logstash, Kibana)
  - Loki and Grafana
- Log aggregation patterns

### 18. Monitoring

#### 18.1 Metrics Server
- Installing Metrics Server
- Resource metrics API
- `kubectl top` command
- Horizontal Pod Autoscaler data source

#### 18.2 Monitoring Solutions
- Prometheus architecture
- Installing Prometheus
- Service discovery
- Grafana for visualization
- Common metrics and alerts
- Golden signals: latency, traffic, errors, saturation

#### 18.3 Probes
- Liveness probes (restart unhealthy containers)
- Readiness probes (control traffic)
- Startup probes (slow-starting containers)
- Probe types: HTTP, TCP, Exec
- Probe configuration: delays, timeouts, thresholds

### 19. Troubleshooting

#### 19.1 Debugging Pods
- Pod status and conditions
- Common pod errors:
  - ImagePullBackOff
  - CrashLoopBackOff
  - Pending
  - OOMKilled
- Describing resources: `kubectl describe`
- Getting into containers: `kubectl exec`
- Debugging with ephemeral containers

#### 19.2 Debugging Services
- Service endpoint issues
- Network connectivity testing
- DNS resolution problems
- Using debug containers
- Port forwarding: `kubectl port-forward`

#### 19.3 Cluster Debugging
- Node status and conditions
- Component health checks
- Cluster events
- API server logs
- Controller manager logs
- Scheduler logs
- etcd health

---

## PHASE 10: Advanced Kubernetes (2-3 weeks)

### 20. Advanced Topics

#### 20.1 Horizontal Pod Autoscaler (HPA)
- Autoscaling based on metrics
- CPU and memory-based scaling
- Custom metrics scaling
- HPA algorithm
- Cooldown and stabilization

#### 20.2 Vertical Pod Autoscaler (VPA)
- Automatic resource recommendation
- VPA modes: Off, Initial, Auto
- VPA vs HPA

#### 20.3 Cluster Autoscaler
- Node-level autoscaling
- Scale up/down triggers
- Cloud provider integration

#### 20.4 Custom Resources (CRDs)
- Extending Kubernetes API
- Creating CRDs
- Custom controllers and operators
- Operator pattern
- Operator Framework

#### 20.5 Helm
- Package manager for Kubernetes
- Helm charts structure
- Installing charts
- Creating custom charts
- Chart repositories
- Helm templating

#### 20.6 Service Mesh
- Service mesh concept
- Istio architecture
- Traffic management
- Security features
- Observability enhancements
- When to use service mesh

---

## PHASE 11: Kubernetes the Hard Way (3-4 weeks)

### 21. Preparing Your Raspberry Pi Cluster

#### 21.1 Cluster Planning
- Defining cluster topology:
  - 1 control plane node (Raspberry Pi #1)
  - 3 worker nodes (Raspberry Pi #2, #3, #4)
- IP address assignment (static IPs)
- Hostname strategy
- Network setup verification

#### 21.2 OS and Prerequisites
- Fresh Raspberry Pi OS Lite installation on all 4 Pis
- System updates: `apt update && apt upgrade`
- Installing required tools:
  - curl, wget
  - socat
  - conntrack
  - ipset
- Disabling swap: `swapoff -a`
- Enabling IP forwarding
- Loading kernel modules

#### 21.3 Certificate Authority
- Understanding PKI (Public Key Infrastructure)
- Installing cfssl and cfssljson
- Creating CA configuration
- Generating CA certificate and key
- Certificate purposes in Kubernetes

### 22. Kubernetes the Hard Way - Components Installation

#### 22.1 Client Tools
- Installing kubectl on Windows and Linux
- Installing cfssl tools
- Configuration and testing

#### 22.2 Certificate Generation
- Admin client certificates
- Kubelet client certificates (one per node)
- Controller Manager client certificate
- Kube Proxy client certificate
- Scheduler client certificate
- Kubernetes API server certificate
- Service Account key pair
- Distributing certificates to nodes

#### 22.3 Kubernetes Configuration Files
- Understanding kubeconfig structure
- Generating kubeconfig files:
  - kubelet configs (per node)
  - kube-proxy config
  - kube-controller-manager config
  - kube-scheduler config
  - admin config
- Distributing configs to appropriate nodes

#### 22.4 Data Encryption
- Generating encryption key
- Creating encryption config
- Why etcd data should be encrypted

#### 22.5 Bootstrapping etcd Cluster
- Downloading etcd binaries
- Configuring etcd service
- Starting etcd cluster
- Verifying cluster health
- Understanding etcd clustering

#### 22.6 Bootstrapping Control Plane
- Downloading Kubernetes controller binaries:
  - kube-apiserver
  - kube-controller-manager
  - kube-scheduler
- Configuring kube-apiserver
- Configuring kube-controller-manager
- Configuring kube-scheduler
- Creating systemd service files
- Starting services
- Verification

#### 22.7 Kubernetes API Server
- API server arguments explained
- Authentication configuration
- Authorization configuration
- Admission controllers
- Service account configuration
- etcd configuration

#### 22.8 RBAC for Kubelet
- Creating ClusterRole for kubelet API access
- Creating ClusterRoleBinding
- Why kubelet needs authorization

#### 22.9 Kubernetes Frontend Load Balancer
- Installing HAProxy on control plane node
- Configuring load balancer
- Health checks
- Testing API availability

### 23. Worker Nodes Configuration

#### 23.1 Worker Node Prerequisites
- Installing container runtime (containerd)
- Configuring containerd
- Installing CNI plugins
- Creating required directories

#### 23.2 Bootstrapping Worker Nodes
- Downloading worker binaries:
  - kubelet
  - kube-proxy
- Configuring kubelet
- Configuring kube-proxy
- Creating systemd services
- Starting services

#### 23.3 kubelet Configuration
- Node registration
- Certificate configuration
- Pod CIDR assignment
- Container runtime configuration
- Cgroup driver

#### 23.4 kube-proxy Configuration
- Proxy mode (iptables/ipvs)
- Cluster CIDR
- Kubeconfig location

### 24. Networking Configuration

#### 24.1 Pod Networking
- Installing CNI plugin (Weave/Calico/Flannel)
- Configuring Pod CIDR
- Testing pod-to-pod communication
- Understanding network overlay

#### 24.2 DNS Setup
- Deploying CoreDNS
- DNS service configuration
- Testing DNS resolution
- Troubleshooting DNS issues

### 25. Smoke Tests

#### 25.1 Data Encryption
- Creating secret
- Verifying etcd encryption
- Decrypting etcd data

#### 25.2 Deployments
- Creating test deployment
- Verifying pod scheduling
- Testing pod communication

#### 25.3 Services
- Creating test service
- Port forwarding test
- Service discovery test
- External access test

#### 25.4 Logs and Exec
- Testing `kubectl logs`
- Testing `kubectl exec`
- Testing `kubectl port-forward`

---

## PHASE 12: kubectl Mastery (2 weeks)

### 26. kubectl Command Line

#### 26.1 kubectl Basics
- Command structure: `kubectl [command] [TYPE] [NAME] [flags]`
- Getting help: `kubectl help`
- Resource types and abbreviations
- Output formats: `-o yaml`, `-o json`, `-o wide`
- Dry run: `--dry-run=client`

#### 26.2 Essential kubectl Commands
- `kubectl get` - listing resources
- `kubectl describe` - detailed resource info
- `kubectl create` - creating resources
- `kubectl apply` - declarative management
- `kubectl edit` - interactive editing
- `kubectl delete` - removing resources
- `kubectl logs` - container logs
- `kubectl exec` - executing commands

#### 26.3 kubectl Advanced Usage
- Field selectors
- Label selectors
- JSONPath queries
- Custom columns
- Sorting output
- Watching resources: `-w`
- Generating YAML: `--dry-run=client -o yaml`

#### 26.4 Context and Configuration
- Multiple cluster management
- Kubeconfig file structure
- Context switching
- Namespace switching
- kubectl plugins
- kubectl aliases and shortcuts

#### 26.5 Imperative vs Declarative
- When to use imperative commands
- When to use declarative YAML
- Generating YAML from imperative commands
- Managing resources with Git (GitOps)

---

## PHASE 13: CKA Exam Preparation (3-4 weeks)

### 27. CKA Exam Overview

#### 27.1 Exam Details
- Exam format: performance-based
- Duration: 2 hours
- Passing score: 66%
- Number of questions: 15-20
- Remote proctored exam
- Single retake included

#### 27.2 Exam Environment
- Ubuntu-based terminal
- kubectl, vim, nano available
- Access to Kubernetes documentation
- Multiple clusters
- Time management strategies

#### 27.3 Exam Domains
- Cluster Architecture, Installation & Configuration (25%)
- Workloads & Scheduling (15%)
- Services & Networking (20%)
- Storage (10%)
- Troubleshooting (30%)

### 28. Exam Practice

#### 28.1 Practice Platforms
- Killer.sh (2 free sessions with exam)
- Practice exercises for each domain
- Timed practice sessions
- Mock exams

#### 28.2 Speed and Efficiency
- kubectl aliases setup
- YAML templates
- Imperative command mastery
- vim/nano proficiency
- Documentation navigation
- Time-saving tips

#### 28.3 Common Exam Tasks
- Creating and managing Pods
- Troubleshooting failed deployments
- Configuring network policies
- Setting up persistent storage
- Implementing RBAC
- Cluster upgrades
- Backup and restore etcd
- Node maintenance (drain, cordon)

### 29. Knowledge Verification

#### 29.1 Self-Assessment Checklist
- Can you create all resource types from memory?
- Can you troubleshoot pod failures quickly?
- Can you navigate Kubernetes docs efficiently?
- Can you use kubectl without looking up syntax?
- Can you explain each control plane component?
- Can you configure RBAC from scratch?

#### 29.2 Weak Area Remediation
- Identify weak domains
- Focused practice on weak areas
- Hands-on repetition
- Teaching concepts to others

---

## PHASE 14: Beyond CKA (Ongoing)

### 30. Continued Learning

#### 30.1 Additional Certifications
- CKAD (Certified Kubernetes Application Developer)
- CKS (Certified Kubernetes Security Specialist)
- Prometheus Certified Associate

#### 30.2 Real-World Projects
- Multi-tier application deployment
- CI/CD pipeline with Kubernetes
- Monitoring and logging stack
- Database clustering in Kubernetes
- Microservices architecture

#### 30.3 Community Involvement
- Kubernetes Slack channels
- Local Kubernetes meetups
- Contributing to CNCF projects
- Writing blog posts
- Helping others learn

---

## Daily Practice Recommendations

### Beginner Phase (Weeks 1-8)
- 1-2 hours daily
- Focus on foundations
- Take detailed notes
- Practice commands immediately

### Intermediate Phase (Weeks 9-16)
- 2-3 hours daily
- Hands-on with Raspberry Pi cluster
- Break and fix exercises
- Document your learning

### Advanced Phase (Weeks 17-24)
- 3-4 hours daily
- Kubernetes the Hard Way implementation
- Exam-focused practice
- Timed exercises

## Essential Resources

### Documentation
- Kubernetes Official Documentation: kubernetes.io/docs
- Kubernetes the Hard Way: github.com/kelseyhightower/kubernetes-the-hard-way
- kubectl Cheat Sheet: kubernetes.io/docs/reference/kubectl/cheatsheet

### Books
- "Kubernetes Up & Running" by Kelsey Hightower
- "Kubernetes in Action" by Marko Lukša
- "The Kubernetes Book" by Nigel Poulton

### Practice Platforms
- Killer.sh (CKA simulator)
- KodeKloud (hands-on labs)
- Katacoda (interactive scenarios)

### Video Courses
- Certified Kubernetes Administrator (CKA) by KodeKloud
- Kubernetes Mastery by Udemy
- Linux Academy Kubernetes courses

## Tips for Success

1. **Hands-on is crucial**: Reading alone won't work. Type every command.
2. **Break things**: Learn by fixing errors.
3. **Document everything**: Keep a personal wiki or notes.
4. **Daily consistency**: 2 hours daily beats 14 hours on weekend.
5. **Join communities**: Ask questions, help others.
6. **Use your Raspberry Pi cluster**: Physical hardware reinforces learning.
7. **Time yourself**: Practice under exam conditions.
8. **Master kubectl**: Speed comes from muscle memory.
9. **Read error messages**: They tell you what's wrong.
10. **Don't memorize, understand**: Concepts matter more than syntax.

## Your Raspberry Pi Lab Setup

Once you're comfortable with Linux (Phase 2), set up your lab:
- Pi #1: Control plane node (master)
- Pi #2-4: Worker nodes
- All connected via network switch
- Static IP addresses assigned
- SSH access from Windows PC



**Step 4: First Commands**
```bash
# Update system (this takes 10-15 minutes first time)
sudo apt update
sudo apt upgrade -y

# Check system info
uname -a  # Should show aarch64 (64-bit ARM)
hostname  # Should show k8s-master
ip addr show  # Shows network info

# Change password (optional but recommended)
passwd

# Reboot to ensure all updates applied
sudo reboot
```

Wait 1 minute, then reconnect via SSH.

**Step 5: Set Static IP Address**

Why? Dynamic IPs can change. For a Kubernetes cluster, we need fixed IPs.

1. Check current IP and router:
```bash
ip addr show eth0  # Note your current IP (inet line)
ip route | grep default  # Note your router IP (gateway)
```

2. Edit network configuration:
```bash
sudo nano /etc/dhcpcd.conf
```

3. Add at the end of file (adjust IPs for your network):
```
# Static IP for k8s-master
interface eth0
static ip_address=192.168.1.100/24
static routers=192.168.1.1
static domain_name_servers=192.168.1.1 8.8.8.8
```

Press Ctrl+X, then Y, then Enter to save.

4. Reboot:
```bash
sudo reboot
```

5. Reconnect using the static IP (192.168.1.100)

**Step 6: Boot and Configure Worker Nodes**

Repeat Steps 1-5 for each worker node:
- k8s-worker-1: Use static IP 192.168.1.101
- k8s-worker-2: Use static IP 192.168.1.102
- k8s-worker-3: Use static IP 192.168.1.103

**Step 7: Test Connectivity Between Nodes**

From your WSL terminal, test connectivity to all nodes:
```bash
# Test from WSL to all Raspberry Pis
ping -c 3 192.168.1.100  # master
ping -c 3 192.168.1.101  # worker-1
ping -c 3 192.168.1.102  # worker-2
ping -c 3 192.168.1.103  # worker-3

# Or SSH to master and test from there
ssh pi@192.168.1.100
ping -c 3 192.168.1.101  # test from master to worker-1
```

All should respond. If not, check:
- Ethernet cables properly connected
- All Pis powered on
- Network switch powered on
- Static IPs configured correctly

---

### A4. Setting Up SSH Keys (Better Security)

**Step 1: Generate SSH Key (Already Done in WSL Setup!)**

If you haven't already:
```bash
# In WSL Ubuntu terminal
ssh-keygen -t ed25519 -C "your_email@example.com"
```

**Step 2: Copy Key to Each Raspberry Pi**

For each Pi (master and all workers):
```bash
# From WSL terminal
ssh-copy-id pi@192.168.1.100  # master
ssh-copy-id pi@192.168.1.101  # worker-1
ssh-copy-id pi@192.168.1.102  # worker-2
ssh-copy-id pi@192.168.1.103  # worker-3
```

You'll be asked for password one last time for each Pi.

**Step 3: Test Passwordless Login**
```bash
# From WSL
ssh pi@192.168.1.100
```
Should login without asking for password!

**Step 4: Create SSH Config (Makes Life Easier)**

```bash
# In WSL
nano ~/.ssh/config
```

Add:
```
Host k8s-master
    HostName 192.168.1.100
    User pi
    IdentityFile ~/.ssh/id_ed25519

Host k8s-worker-1
    HostName 192.168.1.101
    User pi
    IdentityFile ~/.ssh/id_ed25519

Host k8s-worker-2
    HostName 192.168.1.102
    User pi
    IdentityFile ~/.ssh/id_ed25519

Host k8s-worker-3
    HostName 192.168.1.103
    User pi
    IdentityFile ~/.ssh/id_ed25519
```

Now you can simply:
```bash
ssh k8s-master     # Instead of ssh pi@192.168.1.100
ssh k8s-worker-1   # Instead of ssh pi@192.168.1.101
```

**Step 5: Disable Password Authentication (Optional - Advanced)**
Only do this after confirming key-based login works!

On each Pi:
```bash
sudo nano /etc/ssh/sshd_config
```

Find and change:
```
PasswordAuthentication no
```

Restart SSH:
```bash
sudo systemctl restart ssh
```

---

### A5. Creating Your Learning Schedule

#### Week-by-Week Breakdown

**Weeks 1-2: Computer & Networking Basics + WSL Setup**
- Day 1-3: Understanding computers, installing WSL2, basic setup
- Day 4-5: WSL basics, file systems, VS Code integration
- Day 6-8: Networking concepts, IP addresses
- Day 9-10: Raspberry Pi hardware setup
- Day 11-14: Physical cluster assembly and first boot

**Weeks 3-6: Linux Fundamentals**
- Day 1-5: Basic commands (navigation, files)
- Day 6-10: File permissions, users, processes
- Day 11-15: Package management, system admin
- Day 16-20: Networking in Linux, SSH mastery
- Day 21-28: Practice, practice, practice

**Weeks 7-8: Bash Scripting**
- Day 1-3: Script basics, variables
- Day 4-6: Control structures (if, loops)
- Day 7-10: Practical scripts for cluster management
- Day 11-14: Advanced scripting, automation

**Weeks 9-12: Docker & Containers**
- Day 1-7: Docker basics, running containers
- Day 8-14: Building images, volumes, networking
- Day 15-21: Docker Compose, multi-container apps
- Day 22-28: Container runtimes (containerd, CRI-O)

**Weeks 13-17: Kubernetes Core Concepts**
- Day 1-7: K8s architecture, Pods, ReplicaSets
- Day 8-14: Deployments, Services, Namespaces
- Day 15-21: ConfigMaps, Secrets, Volumes
- Day 22-28: StatefulSets, DaemonSets, Jobs
- Day 29-35: Review and hands-on practice

**Weeks 18-19: Networking**
- Day 1-7: K8s networking model, CNI plugins
- Day 8-14: Network policies, Ingress, DNS

**Weeks 20-21: Storage**
- Day 1-7: PV, PVC, Storage Classes
- Day 8-14: Dynamic provisioning, practice

**Weeks 22-24: Security & Configuration**
- Day 1-7: Resource management, scheduling
- Day 8-14: Authentication, RBAC
- Day 15-21: Security contexts, pod security

**Weeks 25-27: Observability**
- Day 1-7: Logging strategies
- Day 8-14: Monitoring with Prometheus
- Day 15-21: Troubleshooting practice

**Weeks 28-30: Advanced Topics**
- Day 1-7: HPA, VPA, Cluster Autoscaler
- Day 8-14: CRDs, Operators, Helm
- Day 15-21: Service mesh basics

**Weeks 31-34: Kubernetes the Hard Way**
- Day 1-7: Certificates and encryption
- Day 8-14: Control plane setup
- Day 15-21: Worker node configuration
- Day 22-28: Networking and testing

**Weeks 35-38: CKA Exam Prep**
- Day 1-14: Practice all exam domains
- Day 15-21: Mock exams, timed practice
- Day 22-28: Weak area remediation, final review

---

### A6. Troubleshooting Common Issues

#### Raspberry Pi Issues

**Problem: Can't find Raspberry Pi on network**
- Solutions:
  1. Check ethernet cable connection
  2. Check network switch lights (should blink)
  3. Try connecting Pi directly to router
  4. Connect monitor via HDMI to see boot process
  5. Reflash SD card with SSH definitely enabled

**Problem: Raspberry Pi won't boot (green LED not blinking)**
- Solutions:
  1. Check power supply (must be 3A+)
  2. Try different SD card
  3. Reflash OS to SD card
  4. Check SD card is fully inserted

**Problem: SSH connection refused**
- Solutions:
  1. Verify SSH was enabled during OS setup
  2. Check if Pi has power (red LED on)
  3. Verify correct IP address
  4. Wait 2-3 minutes after boot before connecting
  5. Check firewall on Windows isn't blocking

**Problem: Raspberry Pi running slow/hot**
- Solutions:
  1. Add heatsinks
  2. Ensure good ventilation
  3. Check CPU usage: `htop`
  4. Upgrade to 8GB RAM model if using 2GB/4GB

#### Kubernetes Issues (Later Stages)

**Problem: Pods stuck in Pending state**
- Check: `kubectl describe pod <pod-name>`
- Common causes:
  1. Insufficient resources (CPU/memory)
  2. Node selector mismatch
  3. Volume not available
  4. No nodes in cluster (worker nodes not joined)

**Problem: Pods in CrashLoopBackOff**
- Check: `kubectl logs <pod-name>`
- Common causes:
  1. Application error in container
  2. Missing environment variables
  3. Liveness probe failing too quickly
  4. Wrong container image

**Problem: Can't connect to service**
- Check: `kubectl get endpoints <service-name>`
- Common causes:
  1. Service selector doesn't match pod labels
  2. Container port mismatch
  3. Network policy blocking traffic
  4. CoreDNS not running

#### WSL-Specific Issues

**Problem: WSL Ubuntu won't start**
- Solutions:
  ```powershell
  # In PowerShell as admin
  wsl --update
  wsl --shutdown
  Restart-Service LxssManager
  wsl -d Ubuntu
  ```

**Problem: Can't access Raspberry Pis from WSL**
- Solutions:
  1. Test network: `ping 192.168.1.1` (your router)
  2. Check WSL networking: `ip addr show eth0`
  3. Restart WSL networking: `wsl --shutdown` then relaunch
  4. Check Windows firewall isn't blocking WSL

**Problem: kubectl not connecting to cluster**
- Solutions:
  1. Check kubeconfig: `cat ~/.kube/config`
  2. Test connectivity: `nc -zv 192.168.1.100 6443`
  3. Check context: `kubectl config current-context`
  4. Verify certificates haven't expired

---

### A7. Quick Reference Sheets

#### Essential Linux Commands (Use in WSL or on Raspberry Pis)
```bash
# Navigation
pwd                     # Print working directory
cd /path/to/dir        # Change directory
cd ~                   # Go to home directory
cd ..                  # Go up one level
ls                     # List files
ls -la                 # List all files with details

# File operations
touch file.txt         # Create empty file
mkdir dirname          # Create directory
rm file.txt           # Delete file
rm -rf dirname        # Delete directory and contents
cp source dest        # Copy file
mv source dest        # Move/rename file
cat file.txt          # Display file contents
nano file.txt         # Edit file (in WSL or Pi)

# System
sudo command           # Run as superuser
apt update            # Update package list
apt upgrade           # Upgrade packages
apt install package   # Install package
systemctl status svc  # Check service status
reboot                # Restart system
shutdown -h now       # Shutdown

# Networking
ip addr show          # Show IP addresses
ping hostname         # Test connectivity
ssh user@host         # Connect via SSH
scp file user@host:   # Copy file via SSH

# Process management
ps aux                # List all processes
top                   # Live process viewer
htop                  # Better process viewer (install first)
kill PID              # Kill process by ID
killall name          # Kill process by name

# WSL-specific (from Windows PowerShell)
wsl                   # Launch default WSL
wsl --list            # List installed distributions
wsl --shutdown        # Stop all WSL instances
```

#### Essential Docker Commands
```bash
# Images
docker pull image:tag          # Download image
docker images                  # List images
docker rmi image               # Remove image
docker build -t name .         # Build image

# Containers
docker run image               # Run container
docker run -d image            # Run in background
docker run -p 8080:80 image   # Map ports
docker ps                      # List running containers
docker ps -a                   # List all containers
docker stop container          # Stop container
docker start container         # Start container
docker rm container            # Remove container
docker logs container          # View logs
docker exec -it container bash # Enter container

# Management
docker system prune           # Clean up unused resources
docker volume ls              # List volumes
docker network ls             # List networks
```

#### Essential kubectl Commands
```bash
# Cluster info
kubectl cluster-info          # Cluster information
kubectl get nodes             # List nodes
kubectl get nodes -o wide     # More details

# Pods
kubectl get pods                    # List pods
kubectl get pods -n namespace       # List in namespace
kubectl describe pod name           # Detailed info
kubectl logs pod-name               # View logs
kubectl logs -f pod-name            # Follow logs
kubectl exec -it pod-name -- bash   # Enter pod
kubectl delete pod name             # Delete pod

# Deployments
kubectl create deployment name --image=img  # Create
kubectl get deployments                     # List
kubectl scale deployment name --replicas=3  # Scale
kubectl set image deployment/name cont=img  # Update
kubectl rollout status deployment/name      # Check rollout
kubectl rollout undo deployment/name        # Rollback

# Services
kubectl expose deployment name --port=80  # Create service
kubectl get services                      # List services
kubectl describe service name             # Details

# General
kubectl apply -f file.yaml    # Apply config
kubectl delete -f file.yaml   # Delete from config
kubectl get all               # List all resources
kubectl get all -A            # All namespaces
kubectl explain resource      # Documentation
```

#### IP Address Plan for Your Cluster
```
Device               IP Address        Purpose
-------------------------------------------------
Home Router          192.168.1.1       Gateway/DNS
Windows PC           192.168.1.10      Your workstation
WSL Ubuntu           (bridged)         Same network as Windows
k8s-master          192.168.1.100     Control plane
k8s-worker-1        192.168.1.101     Worker node 1
k8s-worker-2        192.168.1.102     Worker node 2
k8s-worker-3        192.168.1.103     Worker node 3

Note: WSL automatically bridges to your Windows network
You can access Raspberry Pis directly from WSL terminal
```

---

### A8. Daily Practice Template

Copy this template daily to track your progress:

```markdown
# Kubernetes Learning - Day [X]
Date: [Today's Date]
Phase: [Current Phase Number and Name]
Time Spent: [Hours]

## Today's Goals
- [ ] Goal 1
- [ ] Goal 2
- [ ] Goal 3

## What I Learned
- Topic 1: [explanation]
- Topic 2: [explanation]

## Commands/Code Practiced
```bash
command1
command2
```

## Problems Encountered
1. Problem: [description]
   - Solution: [what worked]
   - Resources used: [links/docs]

## Hands-On Lab Completed
- Lab name: [name]
- Difficulty: [Easy/Medium/Hard]
- Time taken: [minutes]
- Key takeaways: [notes]

## Questions/Confusion
- Question 1: [what I don't understand yet]
- Question 2: [need to research]

## Tomorrow's Plan
- [ ] Task 1
- [ ] Task 2

## Energy/Motivation Level
[1-10]: [number]
Notes: [how I felt today]
```

---

## Final Motivation & Tips

### Remember These Truths:
1. **Everyone starts at zero**: Every Kubernetes expert was once where you are now.
2. **Confusion is learning**: If you're not confused sometimes, you're not challenging yourself enough.
3. **Errors are teachers**: Every error message is teaching you something.
4. **Slow is smooth, smooth is fast**: Take time to understand, speed comes naturally.
5. **Hands-on beats reading**: 30 minutes of typing beats 3 hours of watching.

### Warning Signs You're Going Too Fast:
- You can't explain what you just did
- You're copying commands without understanding
- You skip the "why" to get to the "how"
- You haven't broken anything yet
- You're not taking notes

### Signs You're On Track:
- You can explain concepts in your own words
- You get excited when something works
- You debug without immediately Googling
- You help others in forums
- You're building your own variations

### The Raspberry Pi Advantage:
Your physical cluster is BETTER than cloud learning because:
- You see the hardware (makes it real)
- You control everything (no corporate restrictions)
- Breaking it has no cost (learn from mistakes)
- You own it forever (practice anytime)
- Physical setup teaches networking (invaluable)

### The WSL Advantage for Kubernetes Learning:

Your Windows 11 + WSL2 setup is PERFECT for Kubernetes because:
- **Native Linux environment** without dual-boot or VM overhead
- **Seamless integration** between Windows and Linux
- **Direct SSH access** to Raspberry Pis from Ubuntu terminal
- **Docker and kubectl** run natively in Linux
- **Easy file sharing** between Windows (VS Code) and Linux (terminal)
- **Performance** nearly identical to native Linux
- **Windows tools** (browser, documentation) + **Linux power** (command line)

### Your Complete Workflow:

1. **Windows side:**
   - Browse Kubernetes documentation in Chrome/Edge
   - Edit YAML files in VS Code
   - Flash SD cards with Raspberry Pi Imager
   - Take notes in Markdown

2. **WSL Ubuntu side:**
   - SSH to Raspberry Pis
   - Run kubectl commands
   - Execute bash scripts
   - Manage Kubernetes cluster
   - Practice Linux commands

3. **Integration:**
   - Edit files in VS Code (Windows) that live in WSL
   - Copy/paste between Windows and Ubuntu terminal
   - Access all files from both sides
   - No context switching needed!

### When You Feel Stuck:
1. Take a break (seriously, rest helps)
2. Go back one phase (solidify foundations)
3. Change learning medium (video → documentation → hands-on)
4. Ask for help (communities exist for this)
5. Remember: You've learned hard things before
6. Use WSL's flexibility - test in WSL before running on Raspberry Pis!

### When You Feel Overwhelmed:
- Focus on ONE topic per day
- Review previous day's notes
- Do something you already know (build confidence)
- Set smaller goals
- Talk to someone (even explaining helps you understand)
- Practice commands in WSL first (safer than production Pis)

### Success Metrics:
Don't just measure by "passing CKA". Measure by:
- Can I deploy a simple app? ✓
- Can I troubleshoot a broken pod? ✓
- Can I explain this to someone else? ✓
- Do I feel more confident than last week? ✓
- Am I enjoying the journey? ✓
- Can I navigate between Windows and WSL seamlessly? ✓

---

## You've Got This!

You have everything you need:
- ✓ Hardware (Raspberry Pis)
- ✓ Modern development environment (Windows 11 + WSL2)
- ✓ Comprehensive roadmap (this guide)
- ✓ Time (you're dedicating it)
- ✓ Motivation (you're reading this)

The only thing left is **consistent action**.

Start with Week 1, Day 1: Install WSL2. Open your Ubuntu terminal. Type your first Linux command.

Your Kubernetes journey begins now.

**Welcome to the cloud native world!** 🚀

---

## Quick Start Checklist

Before you begin Phase 2, ensure you have:
- [ ] WSL2 installed and working
- [ ] Ubuntu 22.04 running in WSL
- [ ] Windows Terminal installed
- [ ] VS Code with WSL extension installed
- [ ] SSH keys generated in WSL
- [ ] Learning folder structure created (`~/kubernetes-learning/`)
- [ ] Raspberry Pi Imager installed on Windows
- [ ] 4 Raspberry Pis, SD cards, power supplies ready
- [ ] Network switch connected to router
- [ ] Note-taking system ready

**Once all checked, you're ready to flash those SD cards and build your cluster!**
