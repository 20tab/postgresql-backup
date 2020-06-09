FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
        bzip2 \
        postgresql-client-12 \
    && rm -rf /var/lib/apt/lists/*

COPY pg_dump.sh .

CMD [ "./pg_dump.sh" ]