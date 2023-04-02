# Use the official PHP image with Apache
FROM php:7.4-apache

# Install necessary packages and PHP extensions
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    libicu-dev \
    libpq-dev \
    && docker-php-ext-install \
    intl \
    pdo \
    pdo_mysql \
    && a2enmod rewrite

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set the working directory
WORKDIR /var/www/html

# Copy the application code
COPY . /var/www/html

# Install Symfony and the application dependencies
RUN composer install

# Change ownership to www-data
RUN chown -R www-data:www-data /var/www/html

# Expose the port Apache is running on
EXPOSE 80
