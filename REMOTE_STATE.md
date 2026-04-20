# Remote State

Captured on 2026-04-20.

## RackNerd host

- SSH alias: `racknerd`
- Hostname: `racknerd-fdd5e7a`
- Public domain status: `https://llm.raymondstudio.cn` returned HTTP 200
- API status endpoint: `/api/status` returned success

## App repository

- Path: `/opt/new-api`
- Git remote: `https://github.com/QuantumNous/new-api.git`
- Branch: `main`
- Commit: `28347402`

## Local modifications on remote

- Modified: `docker-compose.yml`
- Untracked: `docker-compose.yml.orig`

## Live containers

- `new-api`
- `postgres`
- `redis`

## Data locations

- App data: `/opt/new-api/data`
- App logs: `/opt/new-api/logs`
- Postgres named volume: `pg_data`

## Branding override

- `SystemName`: `RaymondStudioLLM`
- `Logo`: custom inline SVG data URI
- SQL patch stored in `branding-20260420.sql`

## Nginx tuning

- Updated on 2026-04-20 to improve first-load performance for China/mobile clients
- Enabled `gzip_vary on`
- Enabled `gzip_proxied any`
- Enabled `gzip_comp_level 6`
- Enabled `gzip_min_length 1024`
- Enabled gzip for `text/css`, `application/javascript`, `application/json`, `text/javascript`, and `image/svg+xml`
