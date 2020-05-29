FROM node:latest


RUN curl https://info.gbiz.go.jp/tools/imi_tools/resource/imi-enrichment-address/imi-enrichment-address-2.0.0.tgz -o imi-enrichment-address-2.0.0.tgz && \
    tar -xvzf imi-enrichment-address-2.0.0.tgz && \
    mv package /opt/geocoding-jp && \
    cd /opt/geocoding-jp && \
    npm install

WORKDIR /opt/geocoding-jp
EXPOSE 8080
CMD [ "npm", "start" ]
