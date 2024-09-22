resource "aws_cloudwatch_dashboard" "filesure_dashboard" {
  dashboard_name = "filesure-demo"

  dashboard_body = jsonencode({
    widgets = [
      {
        "type"   : "metric",
        "x"      : 0,
        "y"      : 0,
        "width"  : 12,
        "height" : 6,
        "properties" : {
          "metrics" : [
            [ "AWS/EC2", "CPUUtilization", "InstanceId", var.InstanceId ]
          ],
          "period"  : 300,
          "stat"    : "Sum",
          "region"  : "us-east-1",
          "view"  : "bar"
          "title"   : "EC2 CPU Utilization"
        }
      },
      {
        "type"   : "metric",
        "x"      : 12,
        "y"      : 0,
        "width"  : 12,
        "height" : 6,
        "properties" : {
          "metrics" : [
            [ "AWS/Lambda", "Invocations", "FunctionName", "filesure-lambda" ],
            [ ".", "Errors", ".", "filesure-lambda" ] 
          ],
          "period"  : 300,
          "stat"    : "Sum",
          "region"  : "us-east-1",
          "title"   : "Lambda Invocations and Errors"
        }
      },
      {
        "type"   : "metric",
        "x"      : 0,
        "y"      : 6,
        "width"  : 12,
        "height" : 6,
        "properties" : {
          "metrics" : [
            [ "AWS/S3", "BucketSizeBytes", "BucketName", "filesure-s3", "StorageType", "StandardStorage" ]
          ],
          "period"  : 86400,
          "stat"    : "Average",
          "region"  : "us-east-1",
          "title"   : "S3 Bucket Size (Standard Storage)"
        }
      },
      {
        "type"   : "metric",
        "x"      : 12,
        "y"      : 6,
        "width"  : 12,
        "height" : 6,
        "properties" : {
          "metrics" : [
            [ "AWS/S3", "NumberOfObjects", "BucketName", "filesure-s3", "StorageType", "AllStorageTypes" ]
          ],
          "period"  : 86400,
          "stat"    : "Average",
          "region"  : "us-east-1",
          "title"   : "S3 Number of Objects"
        }
      },
      {
        type   = "alarm"
        x      = 0
        y      = 6
        width  = 12
        height = 6
        properties = {
          alarms = [aws_cloudwatch_metric_alarm.ec2_high_cpu_alarm.arn]
          title  = "EC2 High CPU Alarm Status"
        }
      },
      {
        type   = "alarm"
        x      = 12
        y      = 6
        width  = 12
        height = 6
        properties = {
          alarms = [aws_cloudwatch_metric_alarm.lambda_error_alarm.arn]
          title  = "Lambda Error Alarm Status"
        }
      }
    ]
  })
}
