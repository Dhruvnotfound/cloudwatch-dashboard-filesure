output "cloudwatch_dashboard_url" {
  value = "https://console.aws.amazon.com/cloudwatch/home?region=${var.region}#dashboards:name=${aws_cloudwatch_dashboard.filesure_dashboard.dashboard_name}"
}

output "sns_topic_arn" {
  value = aws_sns_topic.alarm_topic.arn
  description = "The ARN of the SNS topic for CloudWatch alarms"
}