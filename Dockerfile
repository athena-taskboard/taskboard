FROM nodebb/docker:latest

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY lib /usr/src/app/lib

RUN npm link --save lib/* && \
    npm cache clean --force && \
    mkdir /storage && \
    ln -s /storage/config.json /usr/src/app/config.json
    
ENV NODE_ENV=production \
    daemon=false \
    silent=false

EXPOSE 4567

CMD node ./nodebb build ;  node ./nodebb start
