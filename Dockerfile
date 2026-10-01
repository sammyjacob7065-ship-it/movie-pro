FROM n8nio/n8n:latest

ENV TZ=Africa/Lagos
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://your-app.onrender.com/

# Basic auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin

# n8n's official Docker image already starts n8n.
# Set N8N_BASIC_AUTH_PASSWORD and other secrets in Render Environment Variables.
