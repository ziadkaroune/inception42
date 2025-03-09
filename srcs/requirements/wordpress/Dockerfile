FROM debian:buster

# Install PHP 7.3 and required extensions
RUN apt update && apt upgrade -y \
    && apt install -y php7.3 php7.3-curl php7.3-mysql php7.3-fpm curl \
    && apt clean

# Create necessary directories
RUN mkdir -p /run/php /var/www/html

# Set permissions for the web directory
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Copy the WordPress installation script
COPY ./tools/wp-install.sh /wp-install.sh
# Make the script executable
RUN chmod +x /wp-install.sh

# Expose port 9000 for PHP-FPM
EXPOSE 9000

# Start PHP-FPM and run the installation script
ENTRYPOINT ["/wp-install.sh", "php-fpm7.3", "-F"]