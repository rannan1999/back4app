# 使用 Node.js 的官方镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制应用程序文件到工作目录
COPY . .

# 暴露端口
EXPOSE 7860

# 运行应用程序
CMD ["node", "index.js"]
