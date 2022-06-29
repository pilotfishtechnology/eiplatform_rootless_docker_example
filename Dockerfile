FROM pilotfishtechnology/eiplatform:latest

RUN groupadd -r pilotfish --gid=888 ; \
    useradd -r -g pilotfish --uid=888 --home-dir=/opt/pilotfish --shell=/bin/bash pilotfish ; \
    chown -R pilotfish:pilotfish /opt/pilotfish ; \
    chown -R pilotfish:pilotfish /usr/local/tomcat 

USER pilotfish