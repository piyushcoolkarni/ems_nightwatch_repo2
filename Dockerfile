FROM www.cybage-docker-registry.com:9080/jenkins_node_slave:1.3

RUN npm install -g gulp
RUN ln -s /usr/local/bin/node /usr/bin/node
RUN ln -s /usr/local/bin/gulp /usr/bin/gulp


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
