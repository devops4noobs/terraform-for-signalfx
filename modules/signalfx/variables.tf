variable "signalfx_api_token" {
  type      = string
  sensitive = true
}

variable "slack_webhook_url" {
  type      = string
  sensitive = true
}

variable "target_groups" {
  type = list(string)
}
