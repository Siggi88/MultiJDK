FROM ubuntu:20.04
COPY multijdk.sh /multijdk.sh
COPY jdks /usr/local/jdks
RUN chown -R 0:0 /multijdk.sh /usr/local/jdks && \
    chmod 755 /multijdk.sh && \
    chmod -R g-w,o-w /usr/local/jdks
