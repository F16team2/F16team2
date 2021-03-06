############################
# Final container
############################
FROM registry.cto.ai/official_images/node:2-12.13.1-stretch-slim

WORKDIR /ops
USER ops:9999

ADD --chown=ops:9999 package.json .
ADD --chown=ops:9999 app.js .

RUN npm install --production

