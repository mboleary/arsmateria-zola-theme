---
title: "Blocks"
description: "How blocks are setup in the template"
date: 2024-01-21
taxonomies:
  tags:
    - docs
    - blocks
extra:
  titlecard: bg-gradient-a1-a2
  titlecard_text: fg-dark-color
---

# Blocks

This template provides many points in which to override content using [blocks](https://keats.github.io/tera/docs/#inheritance). Note that some blocks will prevent setting other ones. The hierarchy of blocks is shown below.

## index.html template blocks
- `title`: Title of the page, defaults to `{{config.title}}`
- `description`: Description metadata, useful for SEO, defaults to `{{config.extra.default_description}}`
- `author`: Author of the page, defaults to `{{config.extra.author}}`
- `keywords`: Website keywords, useful for SEO, defaults to `{{config.extra.keywords}}` which should be an array of strings
- `head`: Additional tags to be added to the head
- `body`: Override the entire html body
  - `header`: Override the header of the page
    - `headerTitle`: Override the header title content, defaults to some HTML containing `{{config.title}}`
    - `headerMenu`: Override the header menu
  - `content`: Override the content block, defaults to displaying the page or section content
  - `footer`: Override the whole footer content
    - `footerFront`: Override the front content of the footer, defaults to a horizontal rule and a button to toggle dark mode

## landingPage.html blocks
- `headerTitleLanding`: Custom larger title block for the landing page, defaults to displaying the `{{config.title}}` and `{{config.extra.subtitle}}`

## error.html blocks
- `error`: Override the error page block. There should be an `error_values` array present containing the HTTP error code and a message (Example `["404", "Not Found", "Content has moved or does not exist"]`) 