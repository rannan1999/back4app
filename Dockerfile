# 使用 Node.js 的官方镜像作为基础镜像
FROM node:latest

# 将工作目录设置为 /app
WORKDIR /app

# 复制 package.json 和 package-lock.json（如果存在）到 /app 目录
COPY package*.json ./

# 安装 Node.js 依赖
RUN npm install

# 复制 index.js、start.sh 和 swith 到 /app 目录，并设置权限
COPY --chown=node:node index.js start.sh swith ./
RUN chmod +x start.sh swith

# 开放端口 7860
EXPOSE 7860

# 在容器启动时运行 start.sh
CMD ["./start.sh"]
