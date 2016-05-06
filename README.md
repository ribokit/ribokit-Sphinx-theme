# RiboKit Theme for Sphinx

<img src="https://github.com/t47io/ribokit-Jekyll-theme/blob/master/thumbnail.png" alt="Leap Day" align="right">

Inspired by the `2.0` version used by _GitHub Pages_, this theme is retrofitted from [**mattgraham/leapday**](https://github.com/mattgraham/leapday), used by https://ribokit.github.io and https://t47io.github.io.

### Installation

Please follow the following steps:

* Clone or download the [**RiboKit Theme**](https://github.com/t47io/ribokit-Sphinx-theme) and place under your project directory. Create a `_theme/` folder:

```
├── docs/
│   ├── source/ 
│   │   ├── _theme/
│   │   │   ├── ribokit-Sphinx-theme/
...
```
Now in your `source/conf.py`, add the following lines:

```python
html_theme = 'ribokit-Sphinx-theme'
html_theme_path = ['_theme']
html_theme_options = {
    'description': 'PCR Assembly Primer Design',
    'author': author.split(',')[0].strip(),
    'github_repo': 'DasLab/Primerize',
    'ribokit_flag': True
}
```

> The `ribokit_flag` variable is very important. It dictates whether static _CSS_ and _JS_ files can be loaded successfully. The RiboKit server uses a different path to avoid repeated files in the repository.

* Copy the `sphinx_make.sh` from **Theme** repository into `docs/sphinx_make.sh`. This script is used for final submission to RiboKit website.

> The `sphinx_make.sh` script removes repeated/shared _CSS_ and _JS_ files from the `build/html` folder, so you can later copy the enitre folder to the RiboKit site.

> When testing, call `make clean && make html` instead, to exclude file removal.

### Production

* Run `sphinx_make.sh`.

> Make sure that `ribokit_flag` is set to `True` in `source/conf.py` for submission!

* Clone or checkout `ribokit/ribokit.github.io` a copy to your local enviroment.

* Inside `ribokit/ribokit.github.io` repository, create a folder for your package.

> Use lower case letter of package name only. **No spaces. Replace `-` with `_` (underscore).**

* Copy the entire `build/html` folder into the package folder in `ribokit/ribokit.github.io`:

```
├── ribokit.github.io/
│   ├── _includes/
│   ├── _layouts/
│   ├── assets/
...
│   ├── package/
│   │   ├── _images/
│   │   ├── _sources/
│   │   ├── _static/
│   │   ├── index.html
...
│   └── _config.yml
```

* Push the changes to GitHub. The website should be updated automatically (may be with some delay _[< 30s]_).

### Documentation

Varibles available in the [**Front Matter**](https://jekyllrb.com/docs/frontmatter/) block are described in detail below (or see at https://ribokit.github.io/std/sphinx/#theme):

There are several options that are passed from `conf.py` into _Sphinx_ when making **.html**. Their default values are defined in `source/_theme/ribokit-Sphinx-theme/theme.conf`:

| Key | Value |
| --- | --- |
| `description` | The subtitle for display. For acronyms, mark the initials with `<u>` for highlighting (on hover). |
| `author` | The creator of the page. It will be displayed in the footer. |
| `github_repo` | The repository name in format of `organization/repository`. This powers the "View on GitHub" and "Download" buttons. |
| `collapse_navigation` | Boolean flag for whether the `<ul>` of sidebar are expanded; default is `true`. |
| `display_version` | Boolean flag for whether to display current package version next to search box; default is `true`. |
| `ribokit_flag` | Flag for testing or RiboKit deployment; default is `false`. When testing the docs locally, use `false`; when generating **.html** files for RiboKit site, use `true`. This toggles the _CSS_ and _JS_ static asset path only. |

### Credits

Created by [**t47**](http://t47.io/), *May 2016*.

Creative Commons Attributes: [**CC BY 3.0**](http://creativecommons.org/licenses/by/3.0/)
