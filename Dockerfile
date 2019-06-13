FROM jenkins/jenkins:lts

ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yml"
ENV CASC_VAULT_FILE="/var/jenkins_home/vault.yml"

COPY jenkins.yml ${CASC_JENKINS_CONFIG}
COPY vault.yml ${CASC_VAULT_FILE}

USER jenkins

RUN /usr/local/bin/install-plugins.sh configuration-as-code configuration-as-code-support git workflow-cps-global-lib
