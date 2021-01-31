;; Copyright (C) 2021 Ben Challenor
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

(use-package display-line-numbers
  :straight (:type built-in)
  :config
  (global-display-line-numbers-mode 1))

(use-package paren
  :straight (:type built-in)
  :config
  (show-paren-mode 1))

(use-package whitespace
  :straight (:type built-in)
  :init
  (setq whitespace-style '(face tabs trailing))
  :config
  (global-whitespace-mode 1))

(use-package solarized-theme
  :straight t
  :if (or (>= (tty-display-color-cells) (* 256 256 256))
          (display-graphic-p))
  :init
  (setq solarized-use-variable-pitch nil)
  (setq solarized-scale-org-headlines nil)
  :config
  (load-theme 'solarized-dark t))

(setq line-number-mode 1
      column-number-mode 1
      column-number-indicator-zero-based nil)

(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
