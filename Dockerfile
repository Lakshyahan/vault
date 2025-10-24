FROM hashicorp/vault:latest

ENV VAULT_ADDR=http://0.0.0.0:8200
ENV PORT=8200
EXPOSE 8200

# Disable mlock and run as non-root
CMD ["vault", "server", "-dev", "-dev-root-token-id=root", "-dev-listen-address=0.0.0.0:8200", "-dev-no-store-token"]
