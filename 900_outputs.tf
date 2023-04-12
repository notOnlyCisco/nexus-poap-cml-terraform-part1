output "seed_switches" {
  value = <<-EOT
  // Copy from the line below
  seed_switches = 
    {
      "DC-A-BGW101": {
        "dhcpBootstrapIP": "${module.efficient_ip.ddi_info.dc-a-bgw101-p2p-Router01.address}",
        "hostname": "${module.cml.cml_seed_switches["DC-A-BGW101"].hostname}",
        "ipAddress": "${module.efficient_ip.ddi_info.dc-a-bgw101-loopback0.address}",
        "password": "${var.fabric_info["POAP"].password}",
        "gateway": "${module.efficient_ip.ddi_info.dc-a-Router01-p2p-bgw101.address}/${split("/", module.efficient_ip.ddi_info.dc-a-bgw101-router01_p2p_subnet.prefix)[1]}"
      },
      "DC-A-BGW102": {
        "dhcpBootstrapIP": "${module.efficient_ip.ddi_info.dc-a-bgw102-p2p-Router01.address}",
        "hostname": "${module.cml.cml_seed_switches["DC-A-BGW102"].hostname}",
        "ipAddress": "${module.efficient_ip.ddi_info.dc-a-bgw102-loopback0.address}",
        "password": "${var.fabric_info["POAP"].password}",
        "gateway": "${module.efficient_ip.ddi_info.dc-a-Router01-p2p-bgw102.address}/${split("/", module.efficient_ip.ddi_info.dc-a-bgw102-router01_p2p_subnet.prefix)[1]}"
      }
    }
  //until the line bove
  EOT
}
/*
output "seed_switches" {
  value = { 
    DC-A-BGW101 = {
      hostname = module.cml.cml_seed_switches["DC-A-BGW101"].hostname
      ipAddress = module.efficient_ip.ddi_info.dc-a-bgw101-loopback0.address
      password = var.fabric_info["POAP"].password
      dhcpBootstrapIP = module.efficient_ip.ddi_info.dc-a-bgw101-p2p-Router01.address
    },
    DC-A-BGW102 = {
      hostname = module.cml.cml_seed_switches["DC-A-BGW102"].hostname
      ipAddress = module.efficient_ip.ddi_info.dc-a-bgw102-loopback0.address
      password = var.fabric_info["POAP"].password
      dhcpBootstrapIP = module.efficient_ip.ddi_info.dc-a-bgw102-p2p-Router01.address
    }
  }
}


output "dc-a-BGW101-loopback_ip" {
  value = module.cml.dc-a-BGW101-loopback_ip.address
}

output "dc-a-BGW101-seed_ip" {
  value = module.cml.dc-a-BGW101-seed_ip
}

output "dc-a-BGW102-loopback_ip" {
  value = module.cml.dc-a-BGW102-loopback_ip.address
}

output "dc-a-BGW102-seed_ip" {
  value = module.cml.dc-a-BGW102-seed_ip
}

output "dc-a-Router01_gi2_ip" {
  value = module.cml.dc-a-Router01_gi2_ip

}

output "dc-a-Router01_gi3_ip" {
  value = module.cml.dc-a-Router01_gi3_ip

}

output "dc-a-bgw101-info" {
  value = {
    hostname  = "DC-A-BGW101",
    ipAddress = module.cml.dc-a-BGW101-loopback_ip.address,
    bgp_asn   = 1

  }
}
*/
