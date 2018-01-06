---

#
# Example - Vagrant Template
#
#- name: server1
#  hostname: server1.example.com
#  box: centos/7
#  ram: 4096
#  cpu: 2
#  nics:
#    - ip: 10.0.0.10  
#      netmask: 255.255.255.0
#    - device: eno1
#      ip: 10.3.3.60
#      netmask: 255.255.255.0
#  blks:
#    - size: 20G
#    - size: 45G
#    - size: 15G
#
#- name: server2
#  hostname: server2.example.com
#  box: centos/7
#  ram: 2048
#  cpu: 2
#  nics:
#    - ip: 10.0.0.11
#      netmask: 255.255.255.0
#    - ip: 20.0.0.21
#      netmask: 255.255.255.0
#    - device: eno1
#      ip: 10.3.3.61
#      netmask: 255.255.255.0
#  blks:
#    - size: 10G
#    - size: 20G
