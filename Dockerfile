FROM ubuntu

# apt-get
RUN sudo apt-get update -y
RUN sudo apt-get upgrade -y
RUN sudo apt-get install -y git wget
RUN sudo apt-get install -y nodejs nodejs-legacy npm 

WORKDIR /root

RUN git clone https://github.com/ifapmzadu6/kibana-auth-proxy
WORKDIR hoppin.tokyo

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]

