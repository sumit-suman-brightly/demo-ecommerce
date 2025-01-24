# Stage-1 & spacify a name 'builder'
FROM  node:latest AS builder

# Create a directory  and go to directory 
WORKDIR /app

# Copy the package.json file to my current directory for install necessary dependence  
COPY package.json .

# Install the dependence
RUN npm install

# Copy other file to my current directory
COPY . .

ENV PORT 3000

CMD ["npm", "start"]