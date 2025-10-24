FROM hashicorp/vault:latest

ENV VAULT_ADDR=http://0.0.0.0:8200
ENV PORT=8200
EXPOSE 8200

# Ignore default entrypoint that sets Linux capabilities
ENTRYPOINT []

CMD ["vault", "server", "-dev", "-dev-root-token-id=root", "-dev-listen-address=0.0.0.0:8200"]
