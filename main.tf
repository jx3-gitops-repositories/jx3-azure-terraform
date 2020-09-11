module "jx" {
  source = "github.com/jenkins-x/terraform-azurerm-jx"
}

output "connect" {
  description = "Connect to cluster"
  value       = module.jx.connect
}

output "next_install" {
  description = "Follow instructions to enable Jenkins X install via GitOps"
  value       = "https://jenkins-x.io/docs/v3/guides/operator"
}
