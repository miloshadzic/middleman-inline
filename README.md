middleman-inline
================

[![Build Status](https://travis-ci.org/miloshadzic/middleman-inline.svg?branch=master)](https://travis-ci.org/miloshadzic/middleman-inline) [![Code Climate](https://codeclimate.com/github/miloshadzic/middleman-inline/badges/gpa.svg)](https://codeclimate.com/github/miloshadzic/middleman-inline)

This gem adds helpers for middleman that inline your stylesheets and JavaScript. To use, add ``activate :inline`` to your ``config.rb``, and, helpers will be available in any template. Here shown in an example ERB layout:

```
<html>
  <head>
    <%= include_js 'jquery' %>
    <%= include_css 'style', 'normalize.css' %>
    ...
```
