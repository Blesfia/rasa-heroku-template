FROM rasa/rasa:latest-full

COPY app /app

EXPOSE 5005

COPY server.sh /app/server.sh

ENTRYPOINT ["/app/server.sh"]
