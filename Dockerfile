FROM rasa/rasa

COPY app /app

EXPOSE 5005

COPY server.sh /app/server.sh

ENTRYPOINT ["/app/server.sh"]
