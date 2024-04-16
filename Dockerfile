FROM node:19

WORKDIR /app

# COPY package.json .
# COPY yarn.lock .
# RUN yarn install --frozen-lockfile && mv ./node_modules ../node_modules && yarn 

COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000

# CMD ["node", "page.js"]docker build -t backend-g .
CMD ["npm", "start"]
