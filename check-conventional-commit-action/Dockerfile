FROM node:alpine
RUN apk add --update --no-cache git
RUN npm install -g --save-dev @commitlint/config-conventional @commitlint/cli
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
