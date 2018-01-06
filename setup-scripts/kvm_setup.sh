#!/bin/bash
# desc: stopping vbox kernel module and importing kvm based kernel modules
systemctl stop vboxdrv
/sbin/insmod /lib/modules/`uname -r`/kernel/arch/x86/kvm/kvm.ko
/sbin/insmod /lib/modules/`uname -r`/kernel/arch/x86/kvm/kvm-intel.ko

