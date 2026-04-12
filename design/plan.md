# Flypy 18-key design plan

## Goal

Build a practical, maintainable 18-key Flypy **schema** for Hamster on iOS.

## Approach

1. Start from known-good baseline: `double_pinyin_flypy.schema.yaml` (Rime).
2. Implement minimal, stable merged-key behavior first.
3. Keep docs focused on merge mapping and compatibility notes.

## Current decisions

- Rime schema id: `double_pinyin_flypy_18`
- Merged key behavior: key sends first letter, schema derives second letter to first-letter input path.
- Current repo scope: schema only (skin handled separately).

## Next refinement items

1. Integrate and adapt your selected third-party 18-key skin for Flypy use.
2. Verify interaction with custom scripts/features that rely on specific trigger letters.
3. Add optional compatibility patch notes (if the selected skin emits non-primary letters).
