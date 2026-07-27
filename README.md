# Formbricks Cube for Railway

The Cube semantic layer that Formbricks 5 requires, packaged as an image.

## Why this exists

Formbricks 5 will not start without Cube — its environment validation fails on
`CUBEJS_API_URL` and `CUBEJS_API_SECRET` before the app boots. Upstream runs Cube
with its configuration bind-mounted from the repository:

```yaml
volumes:
  - ./cube/cube.js:/cube/conf/cube.js:ro
  - ./cube/schema:/cube/conf/model:ro
```

A platform deploy has no host directory to mount from. This image contains those
same two files, so the service is deployable as an image with no mounts.

## Contents

| Path | Source |
|------|--------|
| `conf/cube.js` | `docker/cube/cube.js` from formbricks/formbricks |
| `conf/model/FeedbackRecords.js` | `docker/cube/schema/FeedbackRecords.js` from the same |

Both are unmodified.

## License

The Cube configuration and data model are from Formbricks
(https://github.com/formbricks/formbricks) and are licensed **AGPL-3.0** — their
LICENSE places everything outside `apps/web/modules/ee` and the listed `packages/`
directories under AGPLv3. This repository is therefore AGPL-3.0 as well.

Cube itself is by Cube Dev, under its own license.
