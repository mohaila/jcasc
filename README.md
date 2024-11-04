# Jenkins configuration using JCasC Plugin

Jenkins is configured by:
- set JAVA_OPTS to disable running setup wizard
- set CASC_JENKINS_CONFIG to the file contains Jenkins configuration
- plugins.txt to install needed plugins
- jcasc.yaml to set Jenkins initial Configuration

To build docker image using Dockerfile:
```sh
make build
```

To run Jenkins using docker-compose.yml
```sh
make up
```

To stop Jenkins:
```sh
make down
```

For security .env file must be ignored by Git