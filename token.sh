#!/bin/bash
aws ecr get-login --no-include-email --region us-west-1 |cut -d ' ' -f 6
