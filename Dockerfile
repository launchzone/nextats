FROM node

RUN git clone https://github.com/nextyio/nextats /nextats
WORKDIR /nextats
RUN npm install
RUN npm install -g grunt-cli
RUN grunt

EXPOSE  3000
CMD ["npm", "start"]
