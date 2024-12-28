# Bare metal nodes

Talos 1.8.4
amd64
bare-metal
Installer image: factory.talos.dev/installer/a19727c403628ed03b402e6b3f7bcaea34f1031b936922b51a459cf01f4e5939:v1.8.4
Upgrade image:  factory.talos.dev/installer/a19727c403628ed03b402e6b3f7bcaea34f1031b936922b51a459cf01f4e5939:v1.8.4
Your image schematic ID is: a19727c403628ed03b402e6b3f7bcaea34f1031b936922b51a459cf01f4e5939


```yaml
customization:
    systemExtensions:
        officialExtensions:
            - siderolabs/amd-ucode
            - siderolabs/amdgpu-firmware
            - siderolabs/i915-ucode
            - siderolabs/intel-ucode
            - siderolabs/iscsi-tools
            - siderolabs/realtek-firmware
            - siderolabs/tailscale
```
# QEMU nodes

Talos 1.8.4
amd64
bare-metal
Installer image: factory.talos.dev/installer/c1132ea3771de591d88482d5f7ffafe06be621fa48ecef57875a933954f23688:v1.8.4
Upgrade image:  factory.talos.dev/installer/c1132ea3771de591d88482d5f7ffafe06be621fa48ecef57875a933954f23688:v1.8.4
Your image schematic ID is: c1132ea3771de591d88482d5f7ffafe06be621fa48ecef57875a933954f23688

```yaml
customization:
    systemExtensions:
        officialExtensions:
            - siderolabs/amd-ucode
            - siderolabs/amdgpu-firmware
            - siderolabs/i915-ucode
            - siderolabs/intel-ucode
            - siderolabs/iscsi-tools
            - siderolabs/qemu-guest-agent
            - siderolabs/realtek-firmware
            - siderolabs/tailscale
```
