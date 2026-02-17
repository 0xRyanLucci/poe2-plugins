#!/usr/bin/env bash
export SECRET_KEY="04618cdc0924247dc1bade3d322f973a85341be65c24534c196808a2442b1f12"
export ENCRYPTION_KEY="ed6c150223c5fd40b10c565304ce5c0d3014a7548582ef8e9dc9b6a929697f68"
export POESESSID="919c87eb8378aaa7903b386d75c88a65"
cd /home/ryan/ryan-personal/poe2-mcp
exec /home/ryan/ryan-personal/poe2-mcp/.venv/bin/python src/mcp_server.py 2>/dev/null
