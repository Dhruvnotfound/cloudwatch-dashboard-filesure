resource "aws_sns_topic" "alarm_topic" {
  name = "filesure-alarms"
}

resource "aws_sns_topic_subscription" "alarm_subscription" {
  topic_arn = aws_sns_topic.alarm_topic.arn
  protocol  = "email"
  endpoint  = var.alert_mail
}
