FROM bitriseio/docker-bitrise-base:latest

MAINTAINER Nick Hammond <n.hammond@waracle.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get update &&\
    apt-get install -y \
        gettext-base \
        jq &&\
    rm -rf /var/lib/apt/lists/*

# Download the latest system report which will be called prior to our one with the new tools
RUN wget https://raw.githubusercontent.com/bitrise-io/bitrise-base/master/system_report.sh -O /bitrise/src/system_report-base.sh &&\
    chmod +x /bitrise/src/*.sh

