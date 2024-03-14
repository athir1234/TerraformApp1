module "resgrp" {
  source = "C:/Reciprocal/Technical/Azure/Terraform/TFModules/Resourcegroup"
  resource_group_name = var.resource_group_name
  location = var.location
}