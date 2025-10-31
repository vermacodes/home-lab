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

This physical cluster is your playground for