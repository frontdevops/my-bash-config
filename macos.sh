chbg()
{
    osascript ~/Library/Mobile\ Documents/com~apple~ScriptEditor2/Documents/bgImgIterm.scpt $@
}


if `whoami` -eq 'root'
then
    chbg "kali4.jpg"
else
    chbg "kali5.jpg"
fi

