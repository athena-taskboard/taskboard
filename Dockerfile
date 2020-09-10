FROM nodebb/docker:latest

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY . /usr/src/lib

RUN npm install -g grunt-cli && \
    npm install --dev && \
    npm link --save ../lib/lib/* && \
    mkdir /storage && \
    ln -s /storage/config.json /usr/src/app/config.json
    
ENV NODE_ENV=development \
    daemon=false \
    silent=false \
    NODE_PATH=./node_modules 

EXPOSE 4567

CMD node ./nodebb build ;  node ./nodebb start
