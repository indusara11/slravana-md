FROM quay.io/souravkl11/raganork:multidevice

RUN git clone https://github.com/indusara11/slravana-md /skl/slravana-md
WORKDIR /skl/slravana-md
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
