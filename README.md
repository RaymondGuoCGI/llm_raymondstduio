# llm.raymondstudio.cn Backup

This directory is a sanitized deployment backup for the RackNerd-hosted `llm.raymondstudio.cn` instance.

It intentionally excludes live secrets and database contents.

## Current deployment summary

- Host alias: `racknerd`
- Host address: `67.215.248.144`
- App path: `/opt/new-api`
- Public domain: `https://llm.raymondstudio.cn`
- Reverse proxy: `nginx`
- App container: `calciumion/new-api:latest`
- Data services: `postgres:15`, `redis:latest`
- Public proxy target: `127.0.0.1:3000`

## Important notes

- The live server contains local changes that are not pushed anywhere.
- The upstream git remote on the server points to the official repository, not a personal backup repository.
- The full local recovery archive is stored separately under `../local-backups/`.
- This sanitized repo is safe to push to a private GitHub repository after review.

## Files

- `docker-compose.redacted.yml`: sanitized compose file from the live server
- `nginx-llm.raymondstudio.cn.conf`: nginx site config from the live server
- `REMOTE_STATE.md`: git and deployment state captured from the live server
- `RESTORE.md`: high-level recovery steps
