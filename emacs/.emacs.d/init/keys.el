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

(use-package bind-map
  :straight t
  :after evil
  :config
  (bind-map my-leader-map
    :evil-keys ("SPC")
    :bindings ("h" #'windmove-left
               "l" #'windmove-right
               "k" #'windmove-up
               "j" #'windmove-down
               "w" #'save-buffer)))
