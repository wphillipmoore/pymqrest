# MQSC and PCF mapping extraction rules

This document defines how to gather and analyze IBM MQ MQSC and PCF documentation to produce attribute and value mappings for the wrapper.

## Table of Contents
- [Purpose](#purpose)
- [Inputs](#inputs)
- [Output format](#output-format)
- [Extraction process](#extraction-process)
- [Type extraction](#type-extraction)
- [Validation and iteration](#validation-and-iteration)
- [Edge cases](#edge-cases)

## Purpose
Create a repeatable process that converts IBM MQ documentation into consistent mapping tables between MQSC attributes, PCF attributes, and snake_case names.

## Inputs
- MQSC command reference pages for the target command.
- PCF command format and response pages for the equivalent command.
- A list of supported qualifiers and command families (queues, channels, queue manager).

## Output format
Mappings are recorded in a simple schema with three names per attribute and optional value mappings.

```yaml
version: 1
qualifiers:
  <qualifier>:
    attributes:
      - mqsc: <MQSC_ATTRIBUTE>
        pcf: <PCFAttributeName>
        snake: <snake_case_name>
        type: <python_type>
        pcf_type: <pcf_type>
        values:
          <MQSC_VALUE>: <snake_case_value>
```

Rules:
- `mqsc` is the MQSC attribute token, in its canonical uppercase form.
- `pcf` matches the PCF attribute name from IBM docs.
- `snake` is the external name derived from `pcf`.
- `type` is the target Python type derived from `pcf_type`.
- `pcf_type` is the PCF C-structure type from IBM docs.
- `values` is optional; include only when MQSC uses symbolic tokens.

## Extraction process
1. Identify the MQSC command and the PCF command that represent the same operation.
2. Extract MQSC attribute names and their allowed values from the MQSC command page.
3. Extract PCF attribute names from both the command format and response pages.
4. Pair attributes by meaning, not by spelling, using IBM’s wording and examples as the tie-breaker.
5. Convert PCF attribute names to snake_case for external use.
6. Map MQSC attribute values to snake_case when values are symbolic tokens; keep numeric values as-is.
7. Assign mappings at the qualifier level by default; add command-specific overrides only when necessary.
8. Record any ambiguity in a separate notes log and mark the mapping as provisional.

## Type extraction
Types are sourced from PCF command format and response pages. MQSC documentation is used only as a secondary reference when PCF does not define a type.

Type mapping rules:
- PCF `MQCFST` or string-valued fields -> `str`.
- PCF `MQCFIN`/`MQCFIN64` numeric fields -> `int`.
- PCF list or array fields -> `list[str]` or `list[int]` based on element type.
- PCF boolean-style flags -> `bool` only when the docs define a true/false semantic; otherwise keep `int`.

When MQSC documents numeric values with symbolic tokens:
- Use `int` as the type and add a `values` mapping for the symbolic tokens.
- If both numeric and string values are allowed by the API, treat the type as `str | int` and note it as provisional.

## Validation and iteration
- Validate mappings against real command responses during integration tests.
- Replace provisional mappings with confirmed ones as soon as empirical data is available.
- Treat response payloads as the source of truth when docs and behavior diverge.

## Edge cases
- One MQSC attribute maps to multiple PCF attributes: document the split and use a command-specific override.
- Value tokens that collide or alias: prefer IBM’s current terminology and note deprecated forms.
- Attributes present in responses but not in command input: include them in mappings with a response-only note.
- Attributes that vary by platform or MQ version: record the version constraint in the notes log and keep the mapping conservative.
