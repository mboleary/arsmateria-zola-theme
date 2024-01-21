---
title: "Article Frontmatter"
description: "A brief description of what needs to be added to articles"
date: 2024-01-21
taxonomies:
  tags:
    - docs
    - test
extra:
  titlecard: bg-gradient-a1-a2
  titlecard_text: fg-dark-color
---

# Article Frontmatter

There are a group of tags that should be present on articles written for the template. These are largely what are suggested by the [Zola Documentation](https://www.getzola.org/documentation/getting-started/overview/), but there are a few additional fields that are helpful to add for SEO purposes.

## Fields

This is an example of article frontmatter:

```toml
+++
title = "Article"
description = "Description"

date=2023-06-09

[taxonomies]
categories=["projects"]
tags=["code", "js", "html", "audio", "music", "engine", "library", "opensource"]

[extra]
titlecard = "bg-gradient-a3-a4"
titlecard_text="fg-dark-color text-shadow-dark"
+++
```

Present are the following fields:
- `title`: The title of the page
- `description`: Description of the page
- `date`: Date that the page shows as published
- `taxonomies.tags`: Tags for the page, used to build the tag pages and also can show up as keywords for SEO
- `taxonomies.categories`: Categories for the page
- `extra.titlecard`: CSS class used for the background of the titlecard
- `extra.titlecard_text`: CSS class used for the titlecard text