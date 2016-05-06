make clean
make html

cd _build/html/_static/
rm basic.css pygments.css
rm jquery*.js underscore*.js
rm -rf css/ fonts/ images/ js/
rm ajax-loader.gif comment-bright.png comment-close.png comment.png down-pressed.png down.png file.png minus.png plus.png up-pressed.png up.png
rm ribokit.gif

cd ../../..
