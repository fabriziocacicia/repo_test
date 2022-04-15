FROM node:16

RUN npm install --save-dev @commitlint/config-conventional @commitlint/cli
RUN echo "module.exports = {extends: ['@commitlint/config-conventional']}" > commitlint.config.js

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
