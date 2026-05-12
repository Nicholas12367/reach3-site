FROM nginx:1.27-alpine

# Replace the default nginx config with ours (adds security headers + caching)
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the static site
COPY . /usr/share/nginx/html

# Don't ship the Dockerfile, nginx.conf, or git metadata to the served site
RUN rm -rf /usr/share/nginx/html/Dockerfile \
           /usr/share/nginx/html/nginx.conf \
           /usr/share/nginx/html/.git \
           /usr/share/nginx/html/.github \
           /usr/share/nginx/html/README.md

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
