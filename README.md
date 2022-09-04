[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![MELPA](https://melpa.org/packages/better-scroll-badge.svg)](https://melpa.org/#/better-scroll)
[![MELPA Stable](https://stable.melpa.org/packages/better-scroll-badge.svg)](https://stable.melpa.org/#/better-scroll)

# better-scroll
> Improve user experience when scrolling window.

[![CI](https://github.com/jcs-elpa/better-scroll/actions/workflows/test.yml/badge.svg)](https://github.com/jcs-elpa/better-scroll/actions/workflows/test.yml)

Normally scroll up/down will move the cursor to the window boundary corresponding to
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

## Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
