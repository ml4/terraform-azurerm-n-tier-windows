// Re module.network-vnet.avn-as-public-subnet_id[0], have a look at https://github.com/ml4/terraform-azurerm-network-vnet

//// three tier arch - set app to false for a web/db 2-tier arch
//
module "n-tier-windows-web" {
  source    = "app.terraform.io/ml4-hc/n-tier-windows/azurerm"
  version   = "1.0.13"
  prefix    = "ml4"
  rg_name   = "test_net_rg_windows_web"
  location  = "West Europe"
  subnet_id = module.network-vnet.avn-as-public-subnet_id[0]

  web = true
  web_instance_config = {
    vm_name                      = "test-web"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "bill"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }
}

module "n-tier-windows-app" {
  source    = "app.terraform.io/ml4-hc/n-tier-windows/azurerm"
  version   = "1.0.13"
  prefix    = "ml4"
  rg_name   = "test_net_rg_windows_app"
  location  = "West Europe"
  subnet_id = module.network-vnet.avn-as-public-subnet_id[0]

  app = true
  app_instance_config = {
    vm_name                      = "test-app"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "bill"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }
}

module "n-tier-windows-db" {
  source    = "app.terraform.io/ml4-hc/n-tier-windows/azurerm"
  version   = "1.0.13"
  prefix    = "ml4"
  rg_name   = "test_net_rg_windows_db"
  location  = "West Europe"
  subnet_id = module.network-vnet.avn-as-public-subnet_id[0]

  database = true
  db_instance_config = {
    vm_name                      = "test-db"
    machine_size                 = "Standard_D2_v4"
    os_publisher                 = "MicrosoftWindowsServer"
    os_offer                     = "WindowsServer"
    os_sku                       = "2019-Datacenter"
    os_version                   = "2019.0.20190410"
    os_disk_storage_account_type = "Standard_LRS"
    admin_username               = "bill"
    admin_password               = "donotusethispasswordN123_" // obviously don't commit a real password and instead, get it from a secrets manager
  }
}

