# Terraform playground

## Usage

- use the `run-docker.sh` script to start a docker container with terraform installed
- workspace will be mounted in above container under `/code` dir

## Examples

### Loop over map in template

This example may be used to generate environment variables for ECS task definition. 
Inspired by: https://medium.com/ovni/terraform-templating-and-loops-9a88c0786c5c