# tf-cloudsploit-event-module

Terraform module to deploy [CloudSploit's Events](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045890-what-is-cloudsploit-events) fully converted to Terraform from [CloudSploit's CloudFormation Template](https://s3.amazonaws.com/console.cloudsploit.com/other/cloudformation-template-events.json).

Details on how to connect CloudSploit Event is here - [Connecting Your AWS Account to CloudSploit Events](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045891-connecting-your-aws-account-to-cloudsploit-events)

## AWS Resources

- SNS::Topic
- SNS::TopicPolicy
- Several Events::Rule see [Events detected by CloudSploit](https://cloudsploit.freshdesk.com/support/solutions/articles/17000045931-what-events-are-detected-by-cloudsploit-)

## Variables

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|-----------| 
| id   | Provided by CloudSploit Console | STRING | NA | YES |
| tags | MAP of TAGs for all Resources | MAP | Name | NO |

## Outputs

| Name | Description |
|------|-------------|
| arn  | Email SNS topic ARN |

## Usage

To use this module:

```TERRAFORM
module "cloudsploit-event-module" {
    source                      = "git@github.com/cjbischoff/tf-cloudsploit-event-module?ref=<VERSION>"
    id                          = "String provided from CloudSploit Console"
    tags                         = { Environment = "test", Department = "test"}
}
```
