#!/bin/bash
pandoc --from markdown+pipe_tables+strikeout+task_lists+gfm_auto_identifiers+autolink_bare_uris+emoji \
       --metadata-file master.yaml \
       --template template.tex \
       --pdf-engine=xelatex \
       --lua-filter gfm-to-latex.lua \
       toki_pona_primer-0_Intro.md \
       toki_pona_primer-1_Grammar.md \
       toki_pona_primer-2_FullWordList.md \
       toki_pona_primer-3_NameRules.md \
       -o output.pdf

echo "PDF generated"