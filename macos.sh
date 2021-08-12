chbg()
{
    osascript /Users/mayorov/Library/Mobile\ Documents/com~apple~ScriptEditor2/Documents/bgImgIterm.scpt $@
}


if [ $(id -u) = 0 ]
then
    chbg "kali4.jpg"
else
    chbg "kali5.jpg"
fi

