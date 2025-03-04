FROM debian:buster

# Install NGINX & OpenSSL
RUN apt-get update && apt-get install -y \
    nginx \
    openssl \
    && rm -rf /var/lib/apt/lists/*

# Create necessary directories
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled /etc/ssl/private

# Copy NGINX config
COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Copy SSL script and execute it
COPY ssl_setup.sh /ssl_setup.sh
RUN chmod +x /ssl_setup.sh && /ssl_setup.sh

# Expose HTTPS Port
EXPOSE 443

# Start NGINX in foreground
CMD ["nginx", "-g", "daemon off;"]
