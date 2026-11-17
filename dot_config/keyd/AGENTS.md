# keyd Configuration Guidelines

## Scope

This directory manages the keyd configuration through chezmoi.

## Rules

- Preserve existing keyboard mappings unless explicitly requested.
- Keep `[ids] *` so built-in and external keyboards are supported.
- Do not replace wildcard matching with a fixed device ID without discussing connection types.
- Preserve the existing `/etc/keyd/default.conf` symlink integration.
- Keep the `toggle-keyd` script behavior unchanged unless explicitly requested.
- Avoid unnecessary layers, macros, or abstractions.
- Do not change live configuration during project review.

## Validation

Validate candidate configurations with:

```bash
keyd check /path/to/default.conf
```

Validate the installed configuration with:

```bash
sudo keyd check
```

Reload only after validation and explicit approval:

```bash
sudo keyd reload
```

## Deployment

Do not run `chezmoi apply` during individual project work. Deployment is reserved for the final repository-wide deployment stage.
