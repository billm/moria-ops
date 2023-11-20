
# About

Gitops workflow managed Kubernetes cluster. Using [Flux](https://github.com/fluxcd/flux2) to keep the cluster synchronized with the git repository.

Initial template documentation can be found in [docs](./docs/k8s-at-home-README.md).

# Hardware

| Device                           | Count | OS Disk Size | Data Disk Size           | Ram  | Operating System                     | Purpose                  |
|--------------------------------- |-------|--------------|--------------------------|------|--------------------------------------|--------------------------|
| Beelink EQ12 Intel N100          | 3     | 120GB SSD    | 500GB NVMe (longhorn)    | 16GB | [Debian 12](https://www.debian.org)  | Kubernetes Control Plane |
| Beelink SER7 AMD 7840HS          | 1     | 1TB NVMe     |                          | 32GB | [Debian 12](https://www.debian.org)  | Kubernetes Worker        |

# 🤝 Thanks

Major thanks to the k8s-at-home community and the amazing Flux template at https://github.com/onedr0p/flux-cluster-template. Without this community and template, this repository would not exist.

Thank you to:
* https://github.com/PrymalInstynct/k8s-cluster for the Jellyfin and GPU configurations
* https://github.com/bjw-s/home-ops for the `app-template` chart and numerous workload configs
* https://github.com/onedr0p/home-ops for numerous workload configs
