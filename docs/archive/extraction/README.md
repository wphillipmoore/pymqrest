# Extraction pipeline (archived)

## Table of Contents

- [Overview](#overview)
- [Current source of truth](#current-source-of-truth)

## Overview

These artifacts were used to bootstrap the `snake_case` attribute
namespace from IBM MQ 9.4 MQSC and PCF documentation. The automated
output was then reviewed, customized, and rationalized into the
`MAPPING_DATA` structure in `src/pymqrest/mapping_data.py`.

## Current source of truth

`mapping_data.py` is now the sole authoritative source for attribute
mappings. The namespace has diverged significantly from what the
extraction pipeline would produce if re-run.

These files are retained for historical reference only.
