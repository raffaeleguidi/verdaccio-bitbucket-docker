FROM verdaccio/verdaccio
USER root
WORKDIR $APPDIR
RUN npm i
RUN npm i -g rimraf babel-cli
RUN npm i -s verdaccio-bitbucket@1.0.4 # waiting for the fix in 1.0.6
USER verdaccio

