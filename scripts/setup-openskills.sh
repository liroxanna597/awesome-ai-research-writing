#!/usr/bin/env bash
set -euo pipefail

# Project-local universal install so AGENTS.md can be shared across agents.
# Requires network access to npm/GitHub.

SOURCE="${1:-anthropics/skills}"

echo "Installing OpenSkills from: ${SOURCE}"

npx -y openskills install "${SOURCE}" --universal -y
npx -y openskills sync -y

cat <<'MSG'
Done.
- Skills location (universal mode): ./.agent/skills/
- Updated file: ./AGENTS.md

For private repos you can also run:
  npx openskills install git@github.com:your-org/private-skills.git --universal -y

Restart your agent session after installation.
MSG
