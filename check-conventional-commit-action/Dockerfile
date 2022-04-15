FROM node:16

RUN npm install --save-dev @commitlint/config-conventional @commitlint/cli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
