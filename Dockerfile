FROM n8nio/n8n:latest

ENV TZ=UTC

# Basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=change_me_in_render

# Bind to all interfaces so Render can detect the port
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-app.onrender.com

# Tell n8n to listen on the port Render expects
ENV PORT=5678

EXPOSE 5678

# Use the full path to n8n inside the container
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n", "start"]
