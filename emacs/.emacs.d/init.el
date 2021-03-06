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

(let ((el (locate-user-emacs-file "straight/repos/straight.el/bootstrap.el")))
  (load el nil t t))

(straight-use-package 'use-package)
(setq use-package-compute-statistics t
      use-package-expand-minimally nil)

(dolist (el (directory-files-recursively (locate-user-emacs-file "init") "\\.el\\'" nil nil t))
  (load el nil t t))
