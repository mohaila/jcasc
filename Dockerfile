FROM jenkins/jenkins:lts
ENV JAVA_OPTS=-Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/ref/jcasc.yaml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY jcasc.yaml /usr/share/jenkins/ref/jcasc.yaml
RUN /usr/bin/jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt