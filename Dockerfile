FROM ubuntu

RUN apt-get update

RUN apt-get -y install curl unzip jq less python3 python3-pip nano && \
    pip3 install awslogs

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install

ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY
ARG AWS_DEFAULT_REGION
ARG MFA_SERIAL_NUMBER    

ENV DEF_AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
ENV DEF_AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
ENV AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION
ENV AWS_DEFAULT_OUTPUT=json
ENV MFA_SERIAL_NUMBER=$MFA_SERIAL_NUMBER

COPY mfalogin.sh .
RUN chmod a+x mfalogin.sh
