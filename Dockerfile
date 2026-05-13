FROM nginx:1.27-alpine

# Replace the default nginx config with ours (adds security headers + caching + private-preview auth)
COPY nginx.conf /etc/nginx/nginx.conf

# Install the basic-auth password file used by nginx (private-preview gate)
COPY .htpasswd /etc/nginx/.htpasswd

# Copy the static site
COPY . /usr/share/nginx/html

# Don't ship the Dockerfile, nginx.conf, the .htpasswd, or git metadata to the served site
RUN rm -rf /usr/share/nginx/html/Dockerfile \
           /usr/share/nginx/html/nginx.conf \
           /usr/share/nginx/html/.htpasswd \
           /usr/share/nginx/html/.git \
           /usr/share/nginx/html/.github \
           /usr/share/nginx/html/README.md \
           /usr/share/nginx/html/SEO_PLAYBOOK.md

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
