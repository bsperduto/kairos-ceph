# Use images from docs/reference/image_matrix/
FROM quay.io/kairos/kairos-opensuse-leap:v2.1.0-k3sv1.22.17-k3s1

RUN zypper in -y ceph-common \
 && kernel=$(ls /lib/modules | head -n1) \
 && depmod -a "${kernel}" \
 && modprobe rbd
