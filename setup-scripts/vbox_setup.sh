#!/bin/bash
# desc: removes kvm kernel based modules and starts virtualbox kernel modules
/sbin/rmmod kvm_intel
/sbin/rmmod kvm
system start vboxdrv stop
