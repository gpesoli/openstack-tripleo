#!/bin/bash
time openstack overcloud deploy --templates \
-e /home/stack/tripleo-templates/environments/network-isolation.yaml \
-e /home/stack/tripleo-templates/environments/main-env.yaml \
-e /home/stack/tripleo-templates/environments/firstboot-environment.yaml \
-e /home/stack/tripleo-templates/environments/storage-environment.yaml \
--control-scale 1 \
--compute-scale 1 \
--ceph-storage-scale 3 \
--control-flavor control \
--compute-flavor compute \
--ceph-storage-flavor ceph-storage \
--neutron-network-vlan-ranges "datacentre:1:4000"
