# RiboKit Theme for Sphinx

<img src="https://github.com/t47io/ribokit-Jekyll-theme/blob/master/thumbnail.png" alt="Leap Day" align="right">

Inspired by the `2.0` version used by _GitHub Pages_, this theme is evolved from [**mattgraham/leapday**](https://github.com/mattgraham/leapday), used by https://ribokit.github.io and https://t47io.github.io.

## Installation

Please follow the following steps:

* Clone or download the [**RiboKit Theme**](https://github.com/t47io/ribokit-Sphinx-theme) and place under your project directory. Create a `_theme/` folder:

```
├── PackageName/
│   ├── package_name/
│   ├── docs/
│   │   ├── build/
│   │   └── source/ 
│   │       ├── _static/
│   │       ├── _templates/
│   │       ├── _theme/
│   │       │   └── ribokit-Sphinx-theme/
│   │       ├── conf.py
│   │       └── index.rst
│   │
│   ├── setup.py
│   └── README
...
```
Now in your `source/conf.py`, add the following lines:

```python
html_theme = 'ribokit-Sphinx-theme'
html_theme_path = ['_theme']
html_theme_options = {
    'description': 'PCR Assembly Primer Design',
    'author': author.split(',')[0].strip(),
    'github_repo': 'DasLab/Primerize'
}
```

* Copy the `sphinx_make.sh` from **Theme** repository into `docs/sphinx_make.sh`. This script is used for final submission to RiboKit website.

> When testing, call `make clean && make html` instead, to exclude file removal.

<hr/>
## Production

* In `master` branch, run `sphinx_make.sh`.

* Now copy and save the `build/html/` folder.

* **Switch to `gh-pages` branch**.

* Copy over the entire `build/html/` folder as root (see below).

* Push the changes of `gh-pages` to GitHub. **The website should be updated automatically** (may be with some delay _[< 30s]_).

* Switch back to `master` for everyday use.

For first time setup, you also need to create a `.nojekyll` and `_config.yml` file:

* `.nojekyll`: to tell GitHub Pages do not parse your **.html** files using the _Jekyll_ engine;

* `_config.yml`: GitHub Pages (powered by _Jekyll_) ignores all folders that start wiht underscore (`_`) by default. Sadly, _Sphinx_ creates `_static`, _etc._ folder and the name is not configurable.

Thus, we create a `_config.yml` file to force include those folders. Otherwise, the static resources (_JS_, _CSS_, images) will return _404_ response. 

```yaml
include:
    - _images
    - _sources
    - _static
    - _modules
    - _templates
```

**After `make html`, your `master` should like like this**:

```
[master]
├── PackageName/
│   ├── package_name/
│   │   ├── __init__.py
│   │   └── ...
│   │
│   ├── docs/ 
│   │   ├── build/
│   │   │   ├── doctree/
│   │   │   └── html/
│   │   │       ├── _images/
│   │   │       ├── _sources/
│   │   │       ├── _static/
│   │   │       └── index.html
│   │   ├── source/ 
│   │   │   ├── _static/
│   │   │   ├── _templates/
│   │   │   ├── conf.py
│   │   │   └── index.rst
│   │   └── Makefile
│   │
│   ├── examples/
│   ├── setup.py
│   └── README
```

**Move the entire `build/html/` to your `gh-pages`**:

```
[gh-pages]
├── PackageName/
│   ├── _images/
│   ├── _sources/
│   ├── _static/
│   ├── index.html
│   │
│   ├── .nojekyll
│   └── _config.yml

```

<hr/>
## Documentation

There are several options that are passed from `conf.py` into _Sphinx_ when making **.html**. Their default values are defined in `source/_theme/ribokit-Sphinx-theme/theme.conf`:

| Key | Value |
| --- | --- |
| `description` | The subtitle for display. For acronyms, mark the initials with `<u>` for highlighting (on hover). |
| `author` | The creator of the page. It will be displayed in the footer. |
| `github_repo` | The repository name in format of `organization/repository`. This powers the "View on GitHub" and "Download" buttons. |
| `collapse_navigation` | Boolean flag for whether the `<ul>` of sidebar are expanded; default is `true`. |
| `display_version` | Boolean flag for whether to display current package version next to search box; default is `true`. |

<hr/>
## Credits

Created by [**t47**](http://t47.io/), *May 2016*.

Creative Commons Attributes: [**CC BY 3.0**](http://creativecommons.org/licenses/by/3.0/)
