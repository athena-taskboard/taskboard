FROM nodebb/docker:latest

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY lib /usr/src/app/lib

RUN npm i -g recursive-install &&\
    npm-recursive-install --rootDir=lib --production  && \
    npm cache clean --force
    
ENV NODE_ENV=production \
    daemon=false \
    silent=false

EXPOSE 4567

CMD node ./nodebb build ;  node ./nodebb start
