export FZF_DEFAULT_OPTS=" \
--color=bg+:{color8},bg:{background},spinner:{cursor},hl:{color1} \
--color=fg:{foreground},header:{color1},info:{color6},pointer:{cursor} \
--color=marker:{color4},fg+:{foreground},prompt:{color6},hl+:{color1} \
--color=selected-bg:{color0} \
--multi"

zstyle ':fzf-tab:*' fzf-flags --color=bg+:{color8},bg:{background},spinner:{cursor},hl:{color1},fg:{foreground},header:{color1},info:{color6},pointer:{cursor},marker:{color4},fg+:{foreground},prompt:{color6},hl+:{color1},selected-bg:{color0} --multi
