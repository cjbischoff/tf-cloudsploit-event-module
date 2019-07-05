output "SNSTopicARN" {
  value = ["${aws_sns_topic.this.arn}"]
}
