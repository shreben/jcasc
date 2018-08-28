FROM jenkins/jenkins:lts
COPY initial-configuration/plugins/plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY initial-configuration/jcasc/jcasc.yml /usr/share/jenkins/ref/jenkins.yaml
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt