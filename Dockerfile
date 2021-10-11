FROM node
LABEL name="test-vue"
LABEL version="1.0"
# 将当前容器里面的代码 拷贝到 新建基于 node 容器里面 /app 目录下
COPY . /app
# cd /app
WORKDIR /app
RUN npm install
EXPOSE 3000
CMD npm run dev