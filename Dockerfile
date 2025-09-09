FROM postgres:17.5

COPY ./config/postgresql.conf  /etc/postgresql/postgresql.conf
COPY ./config/pg_hba.conf /usr/share/postgresql/pg_hba.conf

RUN chmod 644 /etc/postgresql/postgresql.conf /usr/share/postgresql/pg_hba.conf

ENV POSTGRES_CONFIG_FILE=/etc/postgresql/postgresql.conf