[![Build Status](https://travis-ci.com/jcs-elpa/better-scroll.svg?branch=master)](https://travis-ci.com/jcs-elpa/better-scroll)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# better-scroll
> Improve user experience when scrolling window.

Normally scroll up/down will move the cursor to the window boundry corresponding to
the direction on how the window scrolls. This package provides it's own scrolling
functions that will preserve cursor's position.

| Normal                       | With Better Scroll                  |
|:----------------------------:|:-----------------------------------:|
|<img src="./etc/scroll.gif"/> | <img src="./etc/better-scroll.gif"/>|

## Usage

There are total 4 interactive functions in this package.

* `better-scroll-down`
* `better-scroll-up`
* `better-scroll-down-other-window`
* `better-scroll-up-other-window`

I will recommend to bind these function to global keys like the snippet below.

```el
(define-key global-map (kbd "<prior>") #better-scroll-down)
(define-key global-map (kbd "<next>") #better-scroll-up)

(define-key global-map (kbd "S-<prior>") #better-scroll-down-other-window)
(define-key global-map (kbd "S-<next>") #better-scroll-up-other-window)
```

*P.S. `<prior>` and `<next>` is corresponds to `page up` and `page down` key.*

### Aligment

You can set the cursor aligment by tweaking `better-scroll-align-type` variable.

```el
(setq better-scroll-align-type 'center)  ; 'center or 'relative
```

## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
