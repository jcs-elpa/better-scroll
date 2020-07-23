[![Build Status](https://travis-ci.com/jcs-elpa/better-scroll.svg?branch=master)](https://travis-ci.com/jcs-elpa/better-scroll)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# better-scroll
> Improve user experience when scrolling window.

## Usage

```el
(define-key global-map (kbd "<prior>") #better-scroll-down)
(define-key global-map (kbd "<next>") #better-scroll-up)

(define-key global-map (kbd "S-<prior>") #better-scroll-down-other-window)
(define-key global-map (kbd "S-<next>") #better-scroll-up-other-window)
```

## Contribution

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!
