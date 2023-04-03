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