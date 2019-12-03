FROM amazeeio/php:7.3-cli-drupal

COPY composer.json composer.lock /app/
COPY scripts /app/scripts
RUN composer install --no-dev
COPY . /app

# Define where the Drupal Root is located
ENV WEBROOT=web