# rime-hamster-flypy-18keys

Flypy double-pinyin 18-key **schema** for Rime/Hamster:

- Rime schema: `double_pinyin_flypy_18`

## Repository layout

- `rime/`
  - `double_pinyin_flypy_18.schema.yaml`
- `design/`
  - design/plan docs for iterative refinement

## Rime setup

1. Copy `rime/double_pinyin_flypy_18.schema.yaml` into your Rime user directory (or install by Plum from this repo).
2. In your own `default.custom.yaml`, add this schema to `schema_list`:

```yaml
patch:
  schema_list:
    - schema: double_pinyin_flypy_18
```

3. Deploy Rime.

## Hamster skin

Use any compatible 18-key Hamster skin, then select schema `double_pinyin_flypy_18`.

## 18-key design rule (current version)

- Shared keys: `WE RT IO SD FG JK XC BN`
- Single keys: `Q Y U P A H L Z V M`
- Shared keys send the **first letter** in keycap text.
- Rime `speller/algebra` adds derive mappings to accept second letters as the same key:
  - `e->w, t->r, o->i, d->s, g->f, k->j, c->x, n->b`
