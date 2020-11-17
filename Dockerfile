FROM python:3.7-alpine

LABEL "com.github.actions.name"="cp file from S3"
LABEL "com.github.actions.description"="Copy a file from an AWS S3 bucket"
LABEL "com.github.actions.icon"="copy"
LABEL "com.github.actions.color"="green"

LABEL version="1.0.0"
LABEL repository="https://github.com/rohittayal96/action-cp-from-s3/"
LABEL homepage="https://github.com/rohittayal96/action-cp-from-s3/"
LABEL maintainer="Rohit <rohit.tayal@zomato.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.232'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
