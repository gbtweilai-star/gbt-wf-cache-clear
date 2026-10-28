#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_wf_cache_clear info
PYTHONPATH=src python -m gbt_wf_cache_clear check --payload '{}'
PYTHONPATH=src python -m gbt_wf_cache_clear run   --payload '{}'
