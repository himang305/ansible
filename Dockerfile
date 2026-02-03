FROM node:20-alpine

WORKDIR /app

RUN npm init -y \
 && npm install express

EXPOSE 3000

CMD ["node", "-e", "const express=require('express');const app=express();app.get('/',(req,res)=>res.send('Hello from ONE file docker-compose 🚀'));app.listen(3000,()=>console.log('Server running'));"]
