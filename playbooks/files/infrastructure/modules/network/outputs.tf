output "router_id" {
  value = element(concat(opentelekomcloud_networking_router_v2.k8s.*.id, list("")), 0)
}

output "network_id" {
  value = element(concat(opentelekomcloud_networking_network_v2.k8s.*.id, list("")), 0)
}

output "router_internal_port_id" {
  value = element(concat(opentelekomcloud_networking_router_interface_v2.k8s.*.id, list("")), 0)
}

output "subnet_id" {
  value = element(concat(opentelekomcloud_networking_subnet_v2.k8s.*.id, list("")), 0)
}

output "external_network" {
  value = data.opentelekomcloud_networking_network_v2.extnet
}