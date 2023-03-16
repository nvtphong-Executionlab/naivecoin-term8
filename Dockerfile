FROM node

RUN mkdir /naivecoin
ADD package.json /naivecoin/
ADD tsconfig.json /naivecoin/
ADD tslint.json /naivecoin/
ADD src /naivecoin/
ADD node /naivecoin/

RUN cd /naivecoin && npm install

EXPOSE 3001
EXPOSE 6001

ENTRYPOINT cd /naivecoin && npm install && PEERS=$PEERS npm start
