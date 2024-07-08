#!/bin/bash
#
# NOTE - do not blindly run this, verify the disks and the nodes first

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: disk-wipe
spec:
  restartPolicy: Never
  nodeName: neon
  containers:
  - name: disk-wipe
    image: busybox
    securityContext:
      privileged: true
    command: ["/bin/sh", "-c", "dd if=/dev/zero bs=1M count=1000 oflag=direct of=/dev/sda"]
EOF

kubectl wait --timeout=900s --for=jsonpath='{.status.phase}=Succeeded' pod disk-wipe
kubectl logs pod/disk-wipe
kubectl delete pod disk-wipe

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: disk-wipe
spec:
  restartPolicy: Never
  nodeName: argon
  containers:
  - name: disk-wipe
    image: busybox
    securityContext:
      privileged: true
    command: ["/bin/sh", "-c", "dd if=/dev/zero bs=1M count=1000 oflag=direct of=/dev/sda"]
EOF

kubectl wait --timeout=900s --for=jsonpath='{.status.phase}=Succeeded' pod disk-wipe
kubectl logs pod/disk-wipe
kubectl delete pod disk-wipe

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: disk-wipe
spec:
  restartPolicy: Never
  nodeName: krypton
  containers:
  - name: disk-wipe
    image: busybox
    securityContext:
      privileged: true
    command: ["/bin/sh", "-c", "dd if=/dev/zero bs=1M count=1000 oflag=direct of=/dev/sda"]
EOF

kubectl wait --timeout=900s --for=jsonpath='{.status.phase}=Succeeded' pod disk-wipe
kubectl logs pod/disk-wipe
kubectl delete pod disk-wipe

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: disk-wipe
spec:
  restartPolicy: Never
  nodeName: xenon
  containers:
  - name: disk-wipe
    image: busybox
    securityContext:
      privileged: true
    command: ["/bin/sh", "-c", "dd if=/dev/zero bs=1M count=1000 oflag=direct of=/dev/nvme1n1"]
EOF

kubectl wait --timeout=900s --for=jsonpath='{.status.phase}=Succeeded' pod disk-wipe
kubectl logs pod/disk-wipe
kubectl delete pod disk-wipe

cat <<EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  name: disk-wipe
spec:
  restartPolicy: Never
  nodeName: radon
  containers:
  - name: disk-wipe
    image: busybox
    securityContext:
      privileged: true
    command: ["/bin/sh", "-c", "dd if=/dev/zero bs=1M count=1000 oflag=direct of=/dev/nvme0n1"]
EOF

kubectl wait --timeout=900s --for=jsonpath='{.status.phase}=Succeeded' pod disk-wipe
kubectl logs pod/disk-wipe
kubectl delete pod disk-wipe
