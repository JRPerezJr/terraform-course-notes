# Commands

- We have a configuration directory called /root/terraform-projects/ProjectA. Enable logging with the log level set to ERROR and then export the logs the path /tmp/ProjectA.log.

## Enable logging set to ERROR

`export TF_LOG=ERROR`

## Export log path

`export TF_LOG_PATH=/tmp/ProjectA.log`

- Untaint the resource called ProjectB so that the resource is not replaced any more.
- The resource is currently tainted.

## Untaint

`terraform untaint aws_instance.ProjectB`
