# Cisco Modeling Labs (CML) using Terraform

This repo can be used isolated but also as part of the project NDFC - IaC (under development)

The topology in use here will be of two Datacenters running Nexus 9K and some routers.

| Devices    | Type   | Function  |
| ---------- | ------ | --------- |
| A-Leaf101  | N9300v | Leaf      |
| A-Leaf102  | N9300v | Leaf      |
| A-Leaf103  | N9300v | Leaf      |
| A-Leaf104  | N9300v | Leaf      |
| A-BGW101   | N9300v | Border GW |
| A-BGW102   | N9300v | Border GW |
| A-Spine201 | N9300v | Spine     |
| A-Spine202 | N9300v | Spine     |
| B-Leaf101  | N9300v | Leaf      |
| B-Leaf102  | N9300v | Leaf      |
| B-BGW101   | N9300v | Border GW |
| B-BGW102   | N9300v | Border GW |
| B-Spine201 | N9300v | Spine     |
| B-Spine202 | N9300v | Spine     |
|            |        |           |
