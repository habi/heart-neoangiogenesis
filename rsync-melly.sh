# 2214 -> 1272
echo "2214 -> 1272"
rsync --verbose --recursive --update --omit-dir-times --exclude="*.?if" ~/2214/Hearts\ Melly/ ~/1272/Hearts\ Melly/
# 2214 -> archiv
echo "2214 -> archiv"
rsync --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --include="*.pdf" --exclude="*" ~/2214/Hearts\ Melly/ ~/research-storage-uct/Archiv_Tape/Hearts\ Melly/
# 1272 -> Archiv
echo "1272 -> archiv"
rsync --verbose --recursive --update --omit-dir-times --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/1272/Hearts\ Melly/ ~/research-storage-uct/Archiv_Tape/Hearts\ Melly/
