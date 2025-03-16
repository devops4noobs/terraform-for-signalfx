variable "signalfx_api_token" {
  type      = string
  sensitive = true
}
variable "slack_webhook_url"  { 
  type = string 
  sensitive = true 
}
variable "target_groups" {
  type    = list(string)
  default = ["client-alpha-tg", "client-beta-tg"]
}
variable "signalfx_realm" {
  default = "eu1"
}