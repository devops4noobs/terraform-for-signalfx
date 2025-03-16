module "signalfx" {
  source             = "./modules/signalfx"
  signalfx_api_token = var.signalfx_api_token
  slack_webhook_url  = var.slack_webhook_url
  target_groups = var.target_groups
}