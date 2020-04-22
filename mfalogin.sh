#!/bin/sh                                                                                                                                                                                               

# Set env vars for login
set AWS_ACCESS_KEY_ID=$DEF_AWS_ACCESS_KEY_ID
set AWS_SECRET_ACCESS_KEY=$DEF_AWS_SECRET_ACCESS_KEY
set AWS_SESSION_TOKEN=

aws s3 ls

