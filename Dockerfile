FROM nginx:1.27-alpine

# Replace the default nginx config with ours (adds security headers + caching + private-preview auth)
COPY nginx.conf /etc/nginx/nginx.conf

# Install the basic-auth password file used by nginx (private-preview gate)
COPY .htpasswd /etc/nginx/.htpasswd

# Copy the static site
COPY . /usr/share/nginx/html

# Don't ship Dockerfile/nginx.conf/.htpasswd/git/internal-docs to the served site
RUN rm -rf /usr/share/nginx/html/Dockerfile \
           /usr/share/nginx/html/nginx.conf \
           /usr/share/nginx/html/.htpasswd \
           /usr/share/nginx/html/.git \
           /usr/share/nginx/html/.github \
           /usr/share/nginx/html/README.md \
           /usr/share/nginx/html/SEO_PLAYBOOK.md \
           /usr/share/nginx/html/competitor-keywords.md \
           /usr/share/nginx/html/lh-desktop.json \
           /usr/share/nginx/html/lh-mobile.json

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
