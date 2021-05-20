;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;; Liskov: An dark color theme
;; Author: Guillermo Andres Urbano.
;; https://github.com/GuillermoGAndres/
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme church
  "An cool dark color theme :D")

(let ((church-background      "#141414")
      (church-foreground      "#ededed")
      (church-mid-gray        "#666666")
      (church-black           "#0B0B0B")
      (church-white           "#FFFFFF")
      (church-off-white       "#F8F8F0")
      (church-light-gray-blue "#d0dfe6")
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
      (church-light-blue     "#A4D1F2")
      (church-comment-white     "#EFFBFF")
      (church-light-yellow    "#FFF8DC")
      (church-light-purple    "#CAB4CC")
      (church-light-green    "#BCEDDE")
      (church-light-orange    "#FFDAB5")
      (church-region-yellow    "#FFFDD5")
      (church-region-letter    "#525252")
      (church-linum-yellow    "#F3EFDE")
      (church-mode-line-black      "#0B0B0B")
      (church-mode-line-white      "#cacaca")
      )

  (custom-theme-set-faces
   'church

   ;; ----------------- Frame stuff --------------------
   `(default ((t (:background ,church-background :foreground ,church-foreground))))
   `(cursor  ((t (:background ,church-light-blue))))
   ;;Marcado de la linea actual si es que esta activado.
   `(hl-line ((t (:background ,church-mid-gray))))
   ;;------------------------Mode-line------------------------------
   `(mode-line-inactive ((t (:box nil :background ,church-mid-gray :foreground ,church-light-gray-blue))))
   `(mode-line ((t (:box nil :foreground ,church-foreground :background ,church-mode-line-black))))
   '(mode-line-buffer-id ((t (:weight semibold))))
   ;;-------------------- Dir-ed search prompt --------------------
   ;;`(minibuffer-prompt ((default (:foreground ,church-white))))
   '(minibuffer-prompt ((t (:foreground "#8ce7cc"))))
   ;; --------------------Highlight region color ------------------------------
   ;;`(region ((t (:foreground ,church-region-letter :background ,church-region-yellow))))
   ;;`(region ((t (:foreground "#EFFBFF" :background "#1b3552")))) ;; Region azul
   `(region ((t (:foreground "#ffffff" :background "#525252")))) ;; Region gris

   ;; ---------------- Code Highlighting ----------------------------------------------

   ;; Builtin-faces
   '(font-lock-builtin-face ((t (:foreground "#A4D1F2")))) ;

   ;; Comments
   '(font-lock-comment-face ((t (:foreground "#616161" :slant italic)))) ;

   ;; Constant
   '(font-lock-constant-face ((t (:foreground "#CAB4CC")))) ;Constantes: 

   ;;Doctring
   ;;'(font-lock-doc-face ((t (:foreground "#F4B3A0")))) ;Docsting 

   ;; Function names
   '(font-lock-function-name-face ((t (:foreground "#A4D1F2")))) ;Funcion names:  

   ;; Keywords
   '(font-lock-keyword-face ((t (:foreground "#FFF8DC")))) ; keyword;  

   ;; Preprocessor
   ;;'(font-lock-preprocessor-face ((t (:foreground "dark slate blue"))))
   '(font-lock-preprocessor-face ((t (:inherit (font-lock-builtin-face)))))

   ;; Strings
   '(font-lock-string-face ((t (:foreground "#F4B3A0")))) ;Cadenas; 

   ;; Variables
   '(font-lock-variable-name-face ((t (:foreground "#BCEDDE")))) ;Color: 
   ;;'(font-lock-type-face ((t (:foreground "#fff2c0")))) ; Clases y types:
   '(font-lock-type-face ((t (:inherit (font-lock-keyword-face))))) ; Clases y types:

   ;; Warning
   '(font-lock-warning-face ((t (:foreground "pink"))))

   ;;fringe
   `(fringe ((t (:background ,church-background))))

   ;; show-parent-match
   ;;'(show-paren-match ((t (:foreground "#1ead05"))))

   ;;------------------------------ Highlight linum color------------------------------
   ;;'(linum ((t (:inherit (shadow default) :background "#0B0B0B" :foreground "#F3EFDE"))))

   ;;------------------------------Company------------------------------
   '(company-preview ((t (:background "#373B41" :foreground "wheat"))))
   '(company-preview-common ((t (:inherit company-preview :foreground "wheat"))))
   '(company-tooltip-common ((t (:foreground "#FFFDD5")))) ;Color de las letras en coincidencia en pop
   '(company-tooltip-selection ((t (:background "#7B7B7B")))) ;Color de seleccion resaltado.
   '(company-tooltip ((t (:background "#0B0B0B" :foreground "#C5C8C6")))) ;Color fondo y letra
   '(company-scrollbar-bg ((t (:background "#282A2E")))) ;Color de scrollbar
   '(company-scrollbar-fg ((t (:background "#373B41"))))
   '(company-tooltip-annotation ((t (:foreground "#F0DFAF"))))

   ;;------------------------------Helm------------------------------
   '(helm-source-header ((t (:extend t :foreground "#5bb499" :weight bold))))
   '(helm-match ((t (:extend t :foreground "#8ce7cc"))))
   '(helm-selection ((t (:extend t :background "gray37" :distant-foreground "black"))))

   '(helm-ff-directory ((t (:extend t :foreground "#F0DFAF"))))
   '(helm-ff-dotted-directory ((t (:extend t :foreground "#d6d6d6"))))

   ;;-------------------------Tabs------------------------------
   '(tab-bar ((t (:inherit variable-pitch :background "#000000" :foreground "#FFDAB5"))))
   '(tab-bar-tab-inactive ((t (:inherit tab-bar-tab :background "#000000" :foreground "#d6d6d6"))))

   ;; ---------------- Package Specific Stuff -----------

   ;;-------------------------Powerline------------------------------
   `(powerline-active1 ((t (:background ,church-off-white :foreground ,church-background))))
   '(mode-line ((t (:background "#000000" :foreground "#EFFBFF" :box nil))))

   ;;--------------------Web mode --------------------
   '(web-mode-doctype-face ((t (:foreground "lightblue")))) ;turquoise , lightblue, PaleTurquoise
   '(web-mode-html-tag-face ((t (:foreground "#FFF8DC")))); amarillo
   ;;'(web-mode-html-tag-face ((t (:foreground "#EFFBFF"))));Color de los brackets
   '(web-mode-html-attr-name-face ((t (:foreground "#BCEDDE")))) ;verde claro
   '(web-mode-html-attr-value-face ((t (:foreground "#CAB4CC")))) ;morado
   '(web-mode-comment-face ((t (:foreground "#EFFBFF" :slant italic)))) ;; Color blanco

   ;;----------------------JS2-mode------------------------------------
   '(js2-function-call ((t (:foreground "#FFF8DC")))) ; amarillo claro
   '(js2-object-property ((t (:foreground "#FFF8DC")))) ;amarillo claro
   '(js2-external-variable ((t (:foreground "#F4B3A0")))) ; naranja
   ;;'(js2-error ((t (:foreground "#f05666")))) ;; rojo claro
   ;;'(js2-warning ((t (:underline "#EB9490")))) ;; rojo
   '(js2-error ((t (:foreground "#ed5f70" :slant italic :weight semi-bold))))
   '(js2-warning ((t (:underline (:color "#EB9490" :style wave) :slant italic))))
   '(js2-function-param ((t (:foreground "#d6d6d6")))) ;; color de la letra normal

   ;;----------------- Diredfl -----------------------------
   '(diredfl-date-time ((t (:foreground "#b8c4d7"))))
   '(diredfl-dir-heading ((t (:foreground "#ceeca4"))))
   '(diredfl-dir-name ((t (:foreground "#F0DFAF"))))
   '(diredfl-dir-priv ((t (:foreground "#96e7e5"))))
   '(diredfl-exec-priv ((t (:foreground "#D1907F"))))
   '(diredfl-file-name ((t nil)))
   '(diredfl-file-suffix ((t (:inherit diredfl-file-name))))
   '(diredfl-no-priv ((t nil)))
   '(diredfl-number ((t (:foreground "#F0DFAF"))))
   '(diredfl-read-priv ((t (:foreground "#ceeca4"))))
   '(diredfl-symlink ((t (:foreground "#96e7e5"))))
   '(diredfl-write-priv ((t (:foreground "#F0DFAF"))))
   ;;----------- display line numbers--------------
   '(line-number-current-line ((t (:inherit line-number :foreground "#Ffffff")))) ;;
   )

  )



;;;###Autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background nil)))))))

(provide-theme 'church)

;; Local Variables:
;; no-byte-compile: t
;; End:
