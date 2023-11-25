# clinicadentalssn.es

[![clinicadentalssn.es](/assets/media/logo.png)](https://clinicadentalssn.es/)


## STEPS


### Repositories


### Local

- Star Git LFS: `git lfs install`
- If new project (not fork):
  - Copy [clinicadentalssn.es project files](https://github.com/ssndental/clinicadentalssn.es)
  - `git submodule add https://github.com/lorensansol/sansoul.git themes/sansoul`
- Else if fork:
  - Download submódule theme files: `git submodule update --init --recursive`
- If you want use svg emojies:
  - `git submodule add https://github.com/lorensansol/sansoul-emojis.git layouts/partials/svg/emojis`
- Now you can see the run project in the browser with the `do server` comand
- `README.md` ⏩ edit baseURL ("clinicadentalssn.es") + delete steps bit by bit
- Design
  - You can edit any file with the same structure of theme sansoul
  - GENERAL
    - `config.yml`
    - `data/*.{yml,md}`
  - IMG + LOGO + FAVICON
    - `assets/media/` folder ⏩ [Compress image tool](https://compressor.io/)
      - `fondo.jpg`
      - `logo.svg`
      - `logo.png`
      - `icon.png`
      - `favicon.ico` ⏩ [Favicon converter tool](https://favicon.io/favicon-converter/)
    - Gitlab, Github, Netlify and Cloudflare Pages update icon (project and account)
  - FONTS
    - Fonts that not be in Google Fonts:
      - .otf/.ttf files in `assets/fonts` + rename
      - You need the `sansoul_tools` project in `../_tools` folder
      - Run `do fonts` comand
      - `Family` + `Style` + `Weight` must match in `config.yml ⏩ params.fonts` + `_fonts.scss` (and disable `params.fonts.google` if appropriate)
  - CONTENT
    - `content/*`
      - `blog/divisores.md` ⏩ remove
      - `admin` ⏩ `draft: true` and/or change params and content
      - SCRAP
        - Copy [this Spreadsheet Layout](https://docs.google.com/spreadsheets/d/1bXK2OW_SYJK3u3SUO8KRoXUXr9kj42yehXw2O0UapEY/)
        - First scrap with Screaming Frog and paste `url` and `title`
        - Second scrap with `IMPORTXML` formula in `content-start` tab
        - If need HTML content
          - Three scrap with `Web Scraper` chrome extension and paste in `content-scrap` tab
          - Copy `content-start` tab into `content-next` and get `body_code` (by `content-scrap`) with `VLOOKUP` formula
          - Copy `body_code` column to `body`, [convert to Markdown](https://codebeautify.org/html-to-markdown) and clean it
        - Copy `content-next` to `content-export` without `url` and `body_code`
        - Export to CSV ⏩ [convert to YM](https://onlineyamltools.com/convert-csv-to-yaml) ⏩ paste in `./Downloads/DIR/pages.yml` and clean it + write `___` to split files
        - Execute `../_tools/yml-split.command`
        - Paste Markdown files in `blog`
  - HTML
    - `layouts/*`
    - `data/config.yml ⏩ custom_code.html_head.code`
    - `data/config.yml ⏩ custom_code.html_body.code`
  - CSS
    - `assets/css/*`
    - `assets/css/` ⏩ `_variables-custom.scss` + `_custom.scss`
    - `data/config.yml ⏩ custom_code.css.code`
  - JS
    - `assets/js/*`
    - `layouts/partials/sections/common/scripts.html`
    - `data/config.yml ⏩ custom_code.js.code`
  - IMG
    - `assets/media/*`
  - REDIRECTS
    - `assets/redirects.md`
  - ROBOTS
    - `assets/robots.md`
  - If Multilanguaje and Multihosting, add `cp ./public/[es|en]/404.html ./public/` in `netlify.toml ⏩ build.command`
  - Try in Safari and Firefox
  - Check in [W3 Validator](https://validator.w3.org/)
  - Check in [PageSpeed Insights](https://pagespeed.web.dev/)


### After client validate web


#### [Google Search Console](https://search.google.com/search-console)

- Add property
- Verify versions ⏩ `data/config.yml`
  - `google_analytics`
  - `google_site_verification`
  - `google_file_verification`
  - DNS:
    From: `@`
    DNS Record: `TXT`
    To: `google-site-verification=[google_site_verification]`
- Link with Analytics
- Add sitemap.xml


##### Delivery

Send to all collaborators next:

```
*ENTREGA WEB clinicadentalssn.es:* https://seacomoseo.com/entrega/
```
