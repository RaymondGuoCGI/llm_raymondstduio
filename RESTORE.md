# Restore Notes

These steps are intentionally high level because the full secret-bearing archive is stored in `../local-backups/`.

## Minimum pieces required

- `docker-compose.redacted.yml`
- `nginx-llm.raymondstudio.cn.conf`
- Full SQL dump from the local archive
- Optional app data and logs from the local archive

## Recovery outline

1. Provision a Linux server with Docker and nginx.
2. Restore the full backup archive from `../local-backups/`.
3. Recreate `/opt/new-api`.
4. Replace the redacted values in `docker-compose.redacted.yml` with the real secrets from the full backup.
5. Restore PostgreSQL from the SQL dump.
6. Restore nginx site config and certificates if needed.
7. Start the stack and verify:
   - `/api/status`
   - site homepage
   - token-protected API routes

## What is not in this sanitized repo

- Database passwords
- Session secret
- Live SQL dumps
- SSL private keys
- Runtime logs with possible sensitive content
