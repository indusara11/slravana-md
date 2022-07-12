FROM quay.io/souravkl11/raganork:multidevice

RUN git clone https://github.com/indusara11/slravana-md /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
