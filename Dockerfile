FROM rasa/rasa:1.10.0
USER root
RUN pip3 install --no-cache-dir spacy && python3 -m spacy download es_core_news_md && python3 -m spacy link es_core_news_md es

COPY app /app

EXPOSE 5005

COPY server.sh /app/server.sh

ENTRYPOINT ["/app/server.sh"]
