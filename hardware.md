# Raspberry Pi Kubernetes Cluster (Home Lab)

This repository documents the setup and configuration of a 4-node Raspberry Pi Kubernetes cluster built using **Kubernetes the Hard Way**. The primary goal is learning and experimentation with real-world tools and services.

## 🧠 Cluster Overview

- **Control Plane**: 1 Raspberry Pi (4GB RAM)
- **Worker Nodes**: 3 Raspberry Pis (4GB, 8GB, and 16GB RAM)
- **Storage**: NVMe SSDs via USB 3.2 adapters
- **Networking**: Gigabit switch, CAT6 cables, MetalLB for load balancing
- **Monitoring**: Prometheus + Grafana
- **Ingress**: Traefik (preferred for dynamic config)

## 📦 Node Configuration

| Node     | Model         | RAM  | NVMe SSD | Cooling         | Power Supply |
|----------|---------------|------|----------|------------------|--------------|
| cp-1     | Raspberry Pi  | 4GB  | 128GB    | Armor Lite V5    | 27W USB-C    |
| node-1   | Raspberry Pi  | 8GB  | 256GB    | Raspi Active     | 27W USB-C    |
| node-2   | Raspberry Pi  | 16GB | 256GB    | Armor Lite V5    | 27W USB-C    |
| node-3   | Raspberry Pi  | 4GB  | 128GB    | Armor Lite V5    | 27W USB-C    |

## 🧰 Shared Accessories

| Item         |
|--------------|
| Switch       |
| Cables       |
| Rack         |
| Card Reader  |

## 📚 Learning Goals

- Understand Kubernetes internals by manually deploying each component
- Explore service discovery, ingress, and monitoring
- Experiment with popular self-hosted apps in a real cluster
- Learn resource management and cluster scaling
