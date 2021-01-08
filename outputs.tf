output vpc_name {
  value = local.vpc.name
}

output bastion_ip {
  value = module.bastion.bastion_ip
}

output bastion_private_ip {
  value = module.bastion.bastion_private_ip
}

output instance_ips {
  value = [
    for instance in local.instances : instance.primary_network_interface.0.primary_ipv4_address
  ]
}

output resource_group_id {
  value = local.resource_group_id
}

output ssh_private_key {
	value = tls_private_key.ssh.private_key_pem
}
