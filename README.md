# aws-cli-mfa-docker

> This is a WIP

 Dockerfile to create a container for running AWS CLI with MFA


 ```
docker build . -t aws-cli-mfa --build-arg --build-arg AWS_ACCESS_KEY_ID=xxxxxxxxxxx --build-arg AWS_SECRET_ACCESS_KEY=yyyyyyyyyyyy --build-arg AWS_DEFAULT_REGION=ap-southeast-2 --build-arg MFA_SERIAL_NUMBER=arn:aws:iam::999999999999999999:mfa/qqqqqqqq
 ```


 ```
 docker run --rm -it aws-cli-mfa /bin/bash
 ```


