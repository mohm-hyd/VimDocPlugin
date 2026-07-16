
---

## README

```markdown
# VimDoc

A Neovim documentation browser that brings external library documentation into the Vim help workflow.

## Goals

- Fetch external documentation
- Convert documentation into Vim-readable help files
- Cache generated documentation locally
- Access documentation without leaving Neovim

## Current Development

Currently experimenting with using MediaWiki-based documentation sources, starting with the LÖVE 2D wiki.

## Current Progress

Implemented:

- Neovim plugin development environment using Nix
- Isolated testing workflow
- Initial API request pipeline using `vim.system()` and curl

Currently investigating:

- MediaWiki REST API
- MediaWiki Action API
- Wikitext to Vim help conversion

## Current Source

- LÖVE2D MediaWiki documentation

## Current Goal

Generate a working Vim help page:
