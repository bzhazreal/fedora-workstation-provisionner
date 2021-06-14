FROM fedora:34

###
#
# This dockerfile is only used to test this ansible playbook.
#
###

LABEL maintainer="bzhazreal <stanislas.david@protonmail.com>"

ARG username="ansible-test"
ARG password="ansible-test"
ARG homedir="/home/${username}/"

RUN dnf install -y ansible\
        python3-pip\
        firewalld\
        python3-firewall\
        openssl &&\
    useradd "${username}" -p "$(openssl passwd -1 -stdin <<< ${password})" -d /home/"${username}" &&\
    usermod -aG wheel "${username}"

COPY playbook.yml "${homedir}"
ADD roles "${homedir}"

USER "${username}"

WORKDIR "${homedir}"

RUN ansible-playbook playbook.yml --extra-vars="ansible_become_pass=${password} username=${username}"
