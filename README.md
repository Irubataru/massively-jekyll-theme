# HTML5 UP "Massively" - Jekyll Theme

A Jekyll version of the "Massively" theme by [HTML5 UP](https://html5up.net/).

### [Demo here](http://irubataru.com/alpha-jekyll-theme/)

## Installation

If you are using it with GitHub pages you can simply use it as a [remote
theme][gh-remote] by adding the following to your `_config.yml` file:

``` yml
remote_theme: irubataru/massively-jekyll-theme
```

An example `_config.yml` and `Gemfile` is located in the [docs](docs) folder.

If you'd rather not use Jekyll remote themes you may also either fork this
repository or copy its contents. In this case you may safely delete

 * docs
 * massively_jekyll_theme.gemspec
 * README.md
 * LICENSE.txt

## Configuration

As always the main page configuration is through changing the `_config.yml`
file. The theme specific configs are:

``` yml
title: # Name of your webpage
subtitle: # Short name that only appears in the main header
email: # Contact email address
description: # Short description, shown on the home banner

# Social settings
github: mygithub
twitter: mytwittername
facebook: myfacebook
instagram:
```

The final set of social settings will define which icons show up in the webside
footer.

### Navigation

Site navigation is populated by reading a YAML file `_data/navigation.yml`. This
file should contain at least the list `main`, which specify the main navigation
and is expected to be of the following form:

``` yml
main:
  - url: "/"
    title: "This is massively"
  - url: "/generic/"
    title: "Generic page"
  - url: "/elements/"
    title: "Elements reference"

include_social: true
```

The final tag `include_social` specifies whether or not to also include the
social tags in the navigation bar.

### Contact

The data stored in `_data/contact.yml` is used to populate the contact at the
bottom. It can also be used to disable it all together. The file has the
following format:

``` yml
use: true
action: "#"
address:
  - "1234 Somewhere Road #87257"
  - "Nashville, TN 00000-0000"
```

Where `action` refers to the post action of the form.

### Assets

Here you can change the main background image of the site to point to something
other than the default (which is `assets/images/bg.jpg`). The file currently has
the following fields:

``` yml
background:
  image: assets/images/bg.jpg
  no_overlay: false
```

Where `no_overlay` refers to the theme overlay picture which is a bit of white
noise and a gradient added on top of the background image.

One can also specify a list of scripts and styles, these will be loaded on top
of the default list of script and stylefiles:

``` yml
scripts:
  - assets/js/my_script.js
  - https://code.jquery.com/jquery-3.3.1.min.js

styles:
  - assets/cs/mu_style.js
```

These variables can also be set on a page by page level in the same header.

## Layouts

The theme currently has two main layouts that can be used: `home` and `post`.
These correspond to the landing page of your website and a generic post.

### Default layout

The default layout takes a single option `is_preload` which decides whether to
add the `is-preload` class flag to the page. This is commonly used for the pages
which are part of your main navigation.

### Home layout

The home layout consists of a header, a main post which is the content followed
by a list of posts. The fade-in header has content that reads from the page
variable `intro`, this is as follows:

``` yml
intro:
  title: "This is<br />Massively"
  text: >
    A free, fully responsive HTML5 + CSS3 site template designed by
    <a href="https://twitter.com/ajlkn">@ajlkn</a> for 
    <a href="https://html5up.net">HTML5 UP</a><br />and released for free under
    the <a href="https://html5up.net/license">Creative Commons license</a>.
```

#### Pagination

The theme also supports pagination through the `jekyll-pagination` plugin.
Simply add these lines to your config to enable:

``` yml
plugins:
  - jekyll-paginate        # Load the theme

paginate: 6                # Number of posts per page
paginate_path: /page:num/  # Url pattern for pages
```

The pagination will load the title, date and description from your posts (see
section on post) as well as an image if one is set in the post header.
`image.thumbnail` will be preferred if supplied. If no description is provided
for the post, it will use the jekyll excerpt.


### Post layout

The post layout is the general layout for any generic page and takes the
following header arguments:

``` yml
layout: post
title: "Sed magna<br />ipsum faucibus"
date: "2018-04-17"
description: >
  Donec eget ex magna. Interdum et malesuada fames ac ante ipsum primis in
  faucibus. Pellentesque venenatis dolor imperdiet dolor mattis sagittis magna
  etiam.
image: 
  header: assets/images/pic02.jpg
  thumbnail: assets/images/pic02.jpg
```

The `title` and `date` can be inferred by jekyll based on the name of the file
in the standard way, e.g. if the file is named `year-month-day-title.md`, but
can also be overwritten by the user.

## Credits

Original README from HTML5 UP:

```
Alpha by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


A clean, super minimal responsive template geared towards startups, app devs, and other
dedicated folks working tirelessly to launch their products. Includes a landing page,
generic page, contact page, and a page with a whole mess of pre-styled elements (something
new I'm trying out). Sass sources are also included.

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = Not included)

Feedback, bug reports, and comments are not only welcome, but strongly encouraged :)

AJ
aj@lkn.io | @ajlkn

PS: Not sure how to get that contact form working? Give formspree.io a try (it's awesome).


Credits:

	Demo Images:
		Unsplash (unsplash.com)

	Icons:
		Font Awesome (fortawesome.github.com/Font-Awesome)

	Other:
		jQuery (jquery.com)
		html5shiv.js (@afarkas @jdalton @jon_neal @rem)
		CSS3 Pie (css3pie.com)
		background-size polyfill (github.com/louisremi)
		Respond.js (j.mp/respondjs)
		Skel (skel.io)

```

[gh-remote]: https://blog.github.com/2017-11-29-use-any-theme-with-github-pages/
