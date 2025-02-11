resource "azurerm_kubernetes_cluster" "aks" {
  name                = "dev-aks-cluster"
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "devaks"
  kubernetes_version  = "1.30.9"

  default_node_pool {
    name                = "spotpool"
    node_count          = 1
    vm_size            = "Standard_B2s"  
    enable_auto_scaling = true
    min_count          = 1
    max_count          = 3
    node_labels = {
      "kubernetes.azure.com/scalesetpriority" = "spot"
    }
  }

  identity {
    type = "SystemAssigned"
  }
}
