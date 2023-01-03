# ---- Put data to where we need it ---- #
# Copy scan data from 2214 to 1272
echo "2214 -> 1272 (without *.?if)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --exclude="*.?if" ~/2214/Hearts\ Melly/ ~/1272/Hearts\ Melly/
# Copy scan data from 2214 to fastSSD on anaklin04
echo "2214 -> anaklin04-f (without *.?if)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --exclude="*.?if" ~/2214/Hearts\ Melly/ ~/anaklin04-f/Hearts\ Melly/
# Copy scan data from 1272 to fastSSD on anaklin04
echo "2214 -> anaklin04-f (without *.?if)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --exclude="*.?if" ~/1272/Hearts\ Melly/ ~/anaklin04-f/Hearts\ Melly/
# Copy log files, encrypted log files and ROIs from Tim from 1272, 2214 and anaklin04 to logfiles subfolder, for adding to GitHub
echo "1272 -> Github repository (logfiles subfolder)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.csv" --include="*.roi" --include="*.txt" --include="*.md" --include="*.enc" --exclude="*" ~/1272/Hearts\ Melly/ ~/P/Documents/Hearts-Melly/logfiles/
echo "2214 -> Github repository (logfiles subfolder)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.csv" --include="*.roi" --include="*.txt" --include="*.md" --include="*.enc" --exclude="*" ~/2214/Hearts\ Melly/ ~/P/Documents/Hearts-Melly/logfiles/
echo "anaklin04-f -> Github repository (logfiles subfolder)"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.csv" --include="*.roi" --include="*.txt" --include="*.md" --include="*.enc" --exclude="*" ~/anaklin04-f/Hearts\ Melly/ ~/P/Documents/Hearts-Melly/logfiles/
# ---- Archive everything all we need ---- #
echo "1272 -> archiv"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/1272/Hearts\ Melly/ ~/research-storage-uct/Archiv_Tape/Hearts\ Melly/
echo "2214 -> archiv"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/2214/Hearts\ Melly/ ~/research-storage-uct/Archiv_Tape/Hearts\ Melly/
echo "anaklin04-f -> archiv"
rsync --verbose --recursive --update --omit-dir-times --prune-empty-dirs --include="*/" --include="*.?og" --include="*.c?v" --include="*.?oi" --include="*.?at" --include="*_spr*.bmp" --include="*.txt" --include="*.md" --include="*.sb" --include="*.info" --include="*.?nc" --include="*.bkp" --include="*.?if" --exclude="*" ~/anaklin04-f/Hearts\ Melly/ ~/research-storage-uct/Archiv_Tape/Hearts\ Melly/