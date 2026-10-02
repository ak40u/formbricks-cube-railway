# Cube reads its configuration and data model from files. The upstream compose
# file bind-mounts them from the Formbricks repository, which a platform deploy
# cannot do - so they are baked into the image here instead.
FROM cubejs/cube:v1.7.49

COPY conf/cube.js /cube/conf/cube.js
COPY conf/model /cube/conf/model
