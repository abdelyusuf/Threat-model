FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
COPY yarn.lock ./
RUN yarn install

COPY . .
RUN yarn build

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app

FROM scratch

COPY --from=builder /bin/busybox /bin/busybox

COPY --from=builder --chown=appuser:appgroup /app/build /app

USER appuser

EXPOSE 8080

ENTRYPOINT ["/bin/busybox", "httpd", "-f", "-p", "8080", "-h", "/app"]

