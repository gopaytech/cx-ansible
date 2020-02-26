FROM ubuntu:bionic

RUN apt-get update \
    && apt-get install software-properties-common -y \
    && apt-add-repository --yes --update ppa:ansible/ansible \
    && apt-get install git curl python3 python3-distutils ansible python3-pip -y

RUN python3 -m pip install jinja2 pyaml