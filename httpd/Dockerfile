FROM php:5.6-apache

RUN apt-get update \
  && apt-get install -y --no-install-recommends libpq-dev \
  && docker-php-ext-install pdo_pgsql pdo_mysql \
  && apt-get install -y libapache2-mod-log-sql-mysql libapache2-mod-log-sql libapache2-mod-log-sql-dbi libapache2-mod-log-sql-ssl \
  && apt-get install -y logrotate mysql-client \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y postfix

RUN useradd -ms /bin/bash tr

Run a2enmod unique_id
