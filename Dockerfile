# Use official n8n image (you can pin a version instead of latest)
FROM n8nio/n8n:latest

# Heroku sets PORT env; n8n defaults to 5678, so override it at runtime
ENV N8N_PORT=5678 \
    N8N_HOST=0.0.0.0 \
    N8N_PROTOCOL=http

# Make sure n8n listens on the Heroku-provided PORT
# (Heroku will route $PORT -> container:5678 via its proxy)
EXPOSE 5678

# Default command provided by the base image starts n8n,
# so we don't need to override CMD unless you want custom args.
# CMD ["n8n", "start"]
