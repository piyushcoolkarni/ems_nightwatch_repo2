FROM www.cybage-docker-registry.com:9080/jenkins_node_slave:1.2

RUN npm install gulp
RUN npm install -g gulp
RUN npm install -g gulp-cli

# Define working directory.
RUN mkdir -p "/data/emsapp"
WORKDIR /data/emsapp/

# Define default command.
CMD ["bash"]

ADD coverage coverage
ADD html html
ADD jshint-report jshint-report
ADD models models
ADD mocha-report mocha-report
ADD routes routes
ADD reports reports
ADD node_modules node_modules
ADD test test
ADD selenium-server-standalone-2.47.1.jar server.js nightwatch.js package.json Gulpfile.js ./

EXPOSE 4545
