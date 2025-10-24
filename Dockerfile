FROM hashicorp/vault:latest

# Optional: disable TLS for quick dev mode
ENV VAULT_ADDR=http://0.0.0.0:8200
EXPOSE 8200

# Run in dev mode (auto-unsealed, ephemeral)
CMD ["vault", "server", "-dev", "-dev-root-token-id=root"]
