terraform {
  required_providers {
    signalfx = {
      source  = "splunk-terraform/signalfx"
      version = "~> 7.0"
    }
  }
}

provider "signalfx" {
  auth_token = var.signalfx_api_token
  api_url    = "https://api.${var.signalfx_realm}.signalfx.com"
}
