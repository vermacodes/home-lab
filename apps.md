# Popular Home Lab Applications - Resource Requirements

Here's a comprehensive table of resource requirements for common self-hosted applications in a standard home lab use case:

## Home Lab Application Resources

### Table: Must Haves

| Application | Component/Deployment | CPU Request | CPU Limit | Memory Request | Memory Limit | Storage | Notes |
|-------------|---------------------|-------------|-----------|----------------|--------------|---------|-------|
| **Immich** | Server | 1000m | 2000m | 3Gi | 5Gi | 30-50GB | Photo management, thumbnail generation |
| | PostgreSQL | 500m | 1000m | 1Gi | 2Gi | 20-50GB | Metadata, faces, search indexes |
| | Redis | 200m | 500m | 512Mi | 1Gi | 5GB | Job queue and caching |
| | Machine Learning | 1000m | 2000m | 2.5Gi | 4Gi | 10-20GB | Face recognition, CLIP embeddings (slow on Pi) |
| | **Total** | **2.7 CPU** | **5.5 CPU** | **7Gi** | **12Gi** | **65-125GB** | |
| **Home Assistant** | Core | 500m | 2000m | 1.5Gi | 3Gi | 15-25GB | Smart home automation (50-100 devices) |
| | PostgreSQL (optional) | 200m | 500m | 512Mi | 1Gi | 10-20GB | Better than SQLite for >50 devices |
| | Mosquitto MQTT | 100m | 500m | 128Mi | 256Mi | 1GB | Message broker for IoT devices |
| | Zigbee2MQTT | 200m | 1000m | 256Mi | 512Mi | 2GB | Zigbee device bridge (if using Zigbee) |
| | **Total (with DB)** | **1 CPU** | **4 CPU** | **2.4Gi** | **4.8Gi** | **28-48GB** | |
| **Pi-hole** | Pi-hole | 200m | 500m | 256Mi | 512Mi | 5GB | DNS ad-blocking, very lightweight |
| **Prometheus** | Prometheus | 300m | 1000m | 1.5Gi | 2.5Gi | 40-60GB | Metrics collection and storage (7-day retention) |
| **Grafana** | Grafana | 200m | 500m | 512Mi | 1Gi | 5-10GB | Visualization dashboards |
| **Uptime Kuma** | Uptime Kuma | 100m | 500m | 256Mi | 512Mi | 5GB | Service monitoring, very lightweight |
| **Nginx Ingress** | Nginx Ingress | 200m | 1000m | 256Mi | 512Mi | 2GB | Alternative ingress controller |
| **cert-manager** | cert-manager | 100m | 300m | 128Mi | 256Mi | 1GB | Automatic SSL/TLS certificates |
| **MetalLB** | Controller | 50m | 100m | 64Mi | 128Mi | 500MB | Load balancer controller |
| | Speaker (per node) | 50m | 100m | 64Mi | 128Mi | 500MB | BGP/Layer 2 announcer |
| **WireGuard** | WireGuard | 100m | 200m | 64Mi | 128Mi | 1GB | VPN server (very lightweight) |
| **n8n** | n8n | 300m | 1000m | 512Mi | 1Gi | 10GB | Workflow automation (like Zapier) |
| | PostgreSQL | 200m | 500m | 256Mi | 512Mi | 5GB | |
| | **Total** | **500m** | **1.5 CPU** | **768Mi** | **1.5Gi** | **15GB** | |

### Table: Nice to have

| Application | Component/Deployment | CPU Request | CPU Limit | Memory Request | Memory Limit | Storage | Notes |
|-------------|---------------------|-------------|-----------|----------------|--------------|---------|-------|
| **Nextcloud** | Nextcloud | 500m | 2000m | 1Gi | 2Gi | 100GB+ | File sync and collaboration |
| | PostgreSQL | 300m | 1000m | 512Mi | 1Gi | 20-50GB | User data, file metadata |
| | Redis | 100m | 300m | 256Mi | 512Mi | 2GB | File locking, caching |
| | **Total** | **900m** | **3.3 CPU** | **1.8Gi** | **3.5Gi** | **122-152GB** | |
| **Plex** | Plex Media Server | 2000m | 4000m | 2Gi | 4Gi | 50GB+ | Media streaming (transcoding is CPU-heavy) |
| **Jellyfin** | Jellyfin | 1000m | 3000m | 1Gi | 3Gi | 30GB+ | Open-source Plex alternative |
| **Vaultwarden** | Vaultwarden | 100m | 500m | 256Mi | 512Mi | 5GB | Bitwarden password manager (Rust, very efficient) |
| **Gitea** | Gitea | 200m | 1000m | 512Mi | 1Gi | 20-50GB | Git hosting platform |
| | PostgreSQL | 200m | 500m | 512Mi | 1Gi | 10-20GB | Repository metadata |
| | **Total** | **400m** | **1.5 CPU** | **1Gi** | **2Gi** | **30-70GB** | |
| **GitLab** | GitLab | 2000m | 4000m | 4Gi | 8Gi | 50-100GB | Full DevOps platform (much heavier than Gitea) |
| | PostgreSQL | 500m | 1000m | 1Gi | 2Gi | 20-50GB | |
| | Redis | 200m | 500m | 512Mi | 1Gi | 5GB | |
| | **Total** | **2.7 CPU** | **5.5 CPU** | **5.5Gi** | **11Gi** | **75-155GB** | Very resource-intensive |
| **Loki** | Loki | 300m | 1000m | 512Mi | 1Gi | 30-50GB | Log aggregation |
| | Promtail (per node) | 100m | 200m | 128Mi | 256Mi | 1GB | Log shipper agent |
| **Traefik** | Traefik | 200m | 500m | 256Mi | 512Mi | 1GB | Ingress controller / reverse proxy |
| **Frigate** | Frigate | 2000m | 4000m | 2Gi | 4Gi | 100GB+ | AI-powered NVR (per camera ~1GB RAM, no GPU on Pi) |
| **Paperless-ngx** | Paperless-ngx | 500m | 1500m | 1Gi | 2Gi | 50-100GB | Document management with OCR |
| | PostgreSQL | 300m | 500m | 512Mi | 1Gi | 20GB | Document metadata |
| | Redis | 100m | 300m | 256Mi | 512Mi | 2GB | Task queue |
| | **Total** | **900m** | **2.3 CPU** | **1.8Gi** | **3.5Gi** | **72-122GB** | |
| **Audiobookshelf** | Audiobookshelf | 300m | 1000m | 512Mi | 1Gi | 20GB+ | Audiobook and podcast server |
| **Calibre-Web** | Calibre-Web | 200m | 500m | 256Mi | 512Mi | 10GB+ | Ebook library management |
| **Tandoor** | Tandoor Recipes | 300m | 1000m | 512Mi | 1Gi | 10GB | Recipe management |
| | PostgreSQL | 200m | 500m | 256Mi | 512Mi | 5GB | |
| | **Total** | **500m** | **1.5 CPU** | **768Mi** | **1.5Gi** | **15GB** | |
| **Bookstack** | Bookstack | 300m | 1000m | 512Mi | 1Gi | 10-20GB | Wiki/documentation platform |
| | MariaDB/MySQL | 300m | 500m | 512Mi | 1Gi | 10GB | |
| | **Total** | **600m** | **1.5 CPU** | **1Gi** | **2Gi** | **20-30GB** | |
| **Mealie** | Mealie | 200m | 1000m | 512Mi | 1Gi | 10GB | Recipe manager with meal planning |
| **FreshRSS** | FreshRSS | 100m | 500m | 256Mi | 512Mi | 5GB | RSS feed reader |
| **Miniflux** | Miniflux | 100m | 300m | 128Mi | 256Mi | 5GB | Minimalist RSS reader (very efficient) |
| | PostgreSQL | 100m | 300m | 256Mi | 512Mi | 5GB | |
| | **Total** | **200m** | **600m** | **384Mi** | **768Mi** | **10GB** | |
| **Linkding** | Linkding | 100m | 300m | 128Mi | 256Mi | 5GB | Bookmark manager |
| **Kavita** | Kavita | 300m | 1000m | 512Mi | 1Gi | 20GB+ | Digital library (manga, comics, books) |
| **Komga** | Komga | 500m | 1500m | 1Gi | 2Gi | 20GB+ | Comic/manga server |
| **Navidrome** | Navidrome | 200m | 500m | 256Mi | 512Mi | 10GB+ | Music streaming server |
| **Lidarr** | Lidarr | 200m | 500m | 256Mi | 512Mi | 10GB | Music collection manager |
| **Radarr** | Radarr | 200m | 500m | 256Mi | 512Mi | 10GB | Movie collection manager |
| **Sonarr** | Sonarr | 200m | 500m | 256Mi | 512Mi | 10GB | TV show collection manager |
| **Prowlarr** | Prowlarr | 100m | 300m | 256Mi | 512Mi | 5GB | Indexer manager for *arr apps |
| **qBittorrent** | qBittorrent | 200m | 1000m | 512Mi | 1Gi | 10GB+ | BitTorrent client |
| **Transmission** | Transmission | 100m | 500m | 256Mi | 512Mi | 10GB+ | Lightweight BitTorrent client |
| **Syncthing** | Syncthing | 200m | 500m | 256Mi | 512Mi | Varies | File synchronization |
| **WireGuard** | WireGuard | 100m | 200m | 64Mi | 128Mi | 1GB | VPN server (very lightweight) |
| **Tailscale** | Tailscale | 50m | 100m | 32Mi | 64Mi | 500MB | Mesh VPN (extremely lightweight) |
| **Authentik** | Server | 500m | 1500m | 1Gi | 2Gi | 10GB | Identity provider (SSO/LDAP) |
| | Worker | 300m | 1000m | 512Mi | 1Gi | 2GB | Background tasks |
| | PostgreSQL | 300m | 500m | 512Mi | 1Gi | 10GB | |
| | Redis | 100m | 300m | 256Mi | 512Mi | 2GB | |
| | **Total** | **1.2 CPU** | **3.3 CPU** | **2.3Gi** | **4.5Gi** | **24GB** | |
| **Authelia** | Authelia | 100m | 500m | 256Mi | 512Mi | 5GB | Authentication and authorization (lighter than Authentik) |
| **Portainer** | Portainer | 100m | 300m | 256Mi | 512Mi | 5GB | Container management UI |
| **Dozzle** | Dozzle | 50m | 200m | 64Mi | 128Mi | 1GB | Real-time log viewer (very lightweight) |
| **Scrutiny** | Scrutiny | 100m | 300m | 256Mi | 512Mi | 5GB | Hard drive health monitoring |
| **Cloudflare Tunnel** | cloudflared | 50m | 200m | 64Mi | 128Mi | 500MB | Secure tunnel without port forwarding |
| **Tailscale Exit Node** | Tailscale | 100m | 500m | 128Mi | 256Mi | 1GB | VPN exit node |
| **Homepage** | Homepage | 100m | 200m | 128Mi | 256Mi | 1GB | Dashboard for services |
| **Dashy** | Dashy | 100m | 300m | 256Mi | 512Mi | 2GB | Customizable dashboard |
| **Homer** | Homer | 50m | 100m | 64Mi | 128Mi | 500MB | Static dashboard (very lightweight) |
| **Stirling-PDF** | Stirling-PDF | 300m | 1000m | 512Mi | 1Gi | 5GB | PDF manipulation tools |
| **IT-Tools** | IT-Tools | 100m | 300m | 128Mi | 256Mi | 1GB | Developer utilities collection |
| **Changedetection** | Changedetection.io | 100m | 300m | 256Mi | 512Mi | 5GB | Website change monitoring |
| **Node-RED** | Node-RED | 200m | 1000m | 256Mi | 512Mi | 5GB | Flow-based automation |
| **Roundcube** | Roundcube | 200m | 500m | 256Mi | 512Mi | 5GB | Webmail client |
| **Mailu** | Admin | 100m | 300m | 256Mi | 512Mi | 5GB | Email server suite |
| | IMAP | 200m | 500m | 512Mi | 1Gi | 10GB | |
| | SMTP | 200m | 500m | 256Mi | 512Mi | 5GB | |
| | Antispam | 300m | 1000m | 1Gi | 2Gi | 5GB | |
| | Webmail | 100m | 300m | 128Mi | 256Mi | 2GB | |
| | **Total** | **900m** | **2.6 CPU** | **2.2Gi** | **4.3Gi** | **27GB** | Complex setup |
| **Photoprism** | Photoprism | 1000m | 2000m | 2Gi | 4Gi | 50GB+ | Photo management (alternative to Immich) |
| | MariaDB | 300m | 500m | 512Mi | 1Gi | 20GB | |
| | **Total** | **1.3 CPU** | **2.5 CPU** | **2.5Gi** | **5Gi** | **70GB+** | |
| **Duplicati** | Duplicati | 200m | 500m | 256Mi | 512Mi | 10GB | Backup solution |
| **Restic** | Restic | 200m | 500m | 256Mi | 512Mi | 5GB | Command-line backup tool |
| **Kopia** | Kopia | 300m | 1000m | 512Mi | 1Gi | 10GB | Modern backup/restore tool |
| **Watchtower** | Watchtower | 50m | 100m | 64Mi | 128Mi | 500MB | Automatic container updates |


## Notes on Resource Requirements

### **General Considerations:**

1. **CPU Request vs Limit:**
   - Request = Guaranteed minimum (used for scheduling)
   - Limit = Maximum allowed (prevents runaway usage)
   - Most apps burst CPU occasionally but idle most of the time

2. **Memory Behavior:**
   - Memory requests should be close to actual usage
   - Memory limits should allow ~50-100% headroom for spikes
   - OOMKill happens if limit is exceeded

3. **Storage:**
   - Figures shown are for application data only
   - Add user data storage separately (photos, videos, documents)
   - Database storage grows over time

4. **Pi-Specific Notes:**
   - ML workloads (Immich, Frigate) are slower without GPU
   - Video transcoding (Plex, Jellyfin) is CPU-limited
   - Some apps may need reduced features on ARM

### **Lightweight Alternatives:**

| If this is too heavy... | Consider this instead... | Resource savings |
|-------------------------|-------------------------|------------------|
| GitLab | Gitea | ~4Gi RAM, 2 CPU |
| Nextcloud | Syncthing + FileBrowser | ~1Gi RAM |
| Plex | Jellyfin or Navidrome (music only) | ~1-2Gi RAM |
| Authentik | Authelia | ~1.5Gi RAM |
| Photoprism | Immich (more optimized) | ~0.5Gi RAM |
| Prometheus | VictoriaMetrics | ~0.5-1Gi RAM |

### **Highest Resource Consumers:**

1. **GitLab** - 5.5Gi RAM (use Gitea instead)
2. **Immich (full stack)** - 7-12Gi RAM
3. **Photoprism** - 2.5-5Gi RAM
4. **Frigate** - 2-4Gi RAM per camera
5. **Plex** - 2-4Gi RAM (transcoding)
6. **Mailu** - 2.2-4.3Gi RAM (full email server)

### **Most Efficient Apps:**

1. **Tailscale** - 32Mi RAM, 50m CPU
2. **Homer** - 64Mi RAM, 50m CPU
3. **Dozzle** - 64Mi RAM, 50m CPU
4. **Miniflux** - 384Mi total, 200m CPU
5. **Vaultwarden** - 256Mi RAM, 100m CPU
6. **Pi-hole** - 256Mi RAM, 200m CPU

This table should help you plan your resource allocation across your 8+16+4+4 GB cluster!
