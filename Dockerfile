FROM ubuntu:xenial

RUN apt-get update

RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:ansible/ansible
RUN apt-get update
RUN apt-get install -y git curl ansible

ADD * /playbooks/
RUN ansible-playbook /playbooks/site.yml -i 'localhost' --connection=local

CMD ["/bin/bash"]
