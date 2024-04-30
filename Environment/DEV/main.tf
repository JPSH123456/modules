module "rg" {
  source = "../../RG"
  jp     = var.rg

}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../vnet"
  jp         = var.vnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../subnet"
  jp         = var.subnet
}

module "nicandvm" {
  depends_on = [module.subnet]
  source     = "../../nicandvm"
  jp         = var.vms

}

module "bastion" {
  depends_on = [ module.nicandvm ]
  source = "../../bastion"
  
}


