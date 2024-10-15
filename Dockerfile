#FROM ubuntu:20.04
#RUN apt-get update && apt-get install -y python3.9 python3.9-dev

FROM python:3.9 

# Install dependencies
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# Copy source
COPY . .

# Run app
CMD ["python", "./voicecreate.py"] 



## Create app directory
#WORKDIR /usr/src/app
#
## Install app dependencies
## A wildcard is used to ensure both package.json AND package-lock.json are copied
## where available (npm@5+)
#COPY package*.json ./
#
#RUN npm install
## If you are building your code for production
## RUN npm ci --only=production
#
## Bundle app source
#COPY . .
#
#CMD [ "node", "bot.js" ]


