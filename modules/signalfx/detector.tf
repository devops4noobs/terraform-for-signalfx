resource "signalfx_detector" "aws_elb_5xx_detector" {
  name        = "AWS ELB - High 5xx Errors"
  description = "Detects high rates of 5xx errors for AWS ELB target groups"

  program_text = <<-EOF
    A = data('test.metric', rollup='sum')
    detect(when(A.sum(over='1m') > threshold(0))).publish('Manual Test Triggered')
  EOF

  rule {
    severity     = "Critical"
    detect_label = "Manual Test Triggered"
    description = "test description"
    #notifications = ["Team,GmGEaVlCgAE"]
    notifications = ["Email,devops4noobs@gmail.com"]
    runbook_url  = "https://your-runbook-url.com"
    tip          = "Check recent deployments or logs to identify the root cause."
    parameterized_subject = "{{ruleSeverity}} Detector Alert: {{{ruleName}}} ({{{detectorName}}})"
    parameterized_body    = "{{incidentId}}"
  }
}




# resource "signalfx_slack_integration" "alert_slack" {
#   name        = "Slack Integration"
#   webhook_url = var.slack_webhook_url
#   enabled     = true
# }