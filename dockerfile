# เลือกภาพฐานของ Node.js
FROM node:latest

# ติดตั้งทุกอย่างที่จำเป็น
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

# คัดลอกโค้ดและคอมไพล์ TypeScript
COPY . .
RUN npx tsc

# ระบุพอร์ตที่แอปพลิเคชันของคุณใช้
EXPOSE 3000

# เรียกใช้โปรแกรมที่คอมไพล์แล้ว
CMD ["node", "dist/server.js"]