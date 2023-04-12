output "cml_seed_switches" {
  value = { 
    DC-A-BGW101 = {
      hostname = cml2_node.DC-A-BGW101.label
      ipAddress = var.ddi_info.dc-a-bgw101-loopback0
      password = var.fabric_info["POAP"].password
      dhcpBootstrapIP = var.ddi_info.dc-a-bgw101-p2p-Router01
    },
    DC-A-BGW102 = {
      hostname = cml2_node.DC-A-BGW102.label
      ipAddress = var.ddi_info.dc-a-bgw102-loopback0
      password = var.fabric_info["POAP"].password
      dhcpBootstrapIP = var.ddi_info.dc-a-bgw102-p2p-Router01
    }
  }
}

/*
output "dc-a-BGW101-loopback_ip" {
  value = var.dc-a-bgw101-loopback0
}

output "dc-a-BGW101-seed_ip" {
  value = var.dc-a-bgw101-p2p-Router01.address
}

output "dc-a-BGW102-loopback_ip" {
  value = var.dc-a-bgw102-loopback0
}

output "dc-a-BGW102-seed_ip" {
  value = var.dc-a-bgw102-p2p-Router01.address
}

output "dc-a-Router01_gi2_ip" {
  value = var.dc-a-Router01-p2p-bgw101.address
  
}

output "dc-a-Router01_gi3_ip" {
  value = var.dc-a-Router01-p2p-bgw102.address
  
}
*/