FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# Default port 
ENV PORT 80

EXPOSE ${PORT}

CMD [ "npm", "run", "dev" ]
