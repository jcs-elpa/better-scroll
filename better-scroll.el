;;; better-scroll.el --- Improve user experience when scrolling window  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Shen, Jen-Chieh
;; Created date 2020-07-23 18:26:34

;; Author: Shen, Jen-Chieh <jcs090218@gmail.com>
;; Description: Improve user experience when scrolling window.
;; Keyword: scrolling scroll window better improvement
;; Version: 0.1.1
;; Package-Requires: ((emacs "24.3"))
;; URL: https://github.com/jcs-elpa/better-scroll

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; Improve user experience when scrolling window.
;;

;;; Code:

(require 'cl-lib)

(defun better-scroll--recenter-positions (type)
  "Return the recenter position value by TYPE."
  (cl-case type (top '(top)) (middle '(middle)) (bottom '(bottom))))

(defun better-scroll--recenter-top-bottom (type)
  "Recenter the window by TYPE."
  (let ((recenter-positions (better-scroll--recenter-positions type)))
    (recenter-top-bottom)))

(defun better-scroll--move-to-window-line-top-bottom (type)
  "Move to window line by TYPE."
  (let ((recenter-positions (better-scroll--recenter-positions type)))
    (move-to-window-line-top-bottom)))

;;;###autoload
(defun better-scroll-down ()
  "Scroll down."
  (interactive)
  (scroll-down)
  (better-scroll--move-to-window-line-top-bottom 'middle))

;;;###autoload
(defun better-scroll-up ()
  "Scroll up."
  (interactive)
  (scroll-up)
  (better-scroll--move-to-window-line-top-bottom 'middle)
  (when (= (point) (point-max)) (better-scroll--recenter-top-bottom 'middle)))

;;;###autoload
(defun better-scroll-down-other-window ()
  "Scroll down other window."
  (interactive)
  (save-selected-window (other-window 1) (better-scroll-down)))

;;;###autoload
(defun better-scroll-up-other-window ()
  "Scroll up other window."
  (interactive)
  (save-selected-window (other-window 1) (better-scroll-up)))

(provide 'better-scroll)
;;; better-scroll.el ends here
