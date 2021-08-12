
function chbg()
{
    osascript /Users/mayorov/Library/Mobile\ Documents/com~apple~ScriptEditor2/Documents/bgImgIterm.scpt $@
}

function new()
{
    if [[ "$TERM_PROGRAM" == "iTerm.app" ]]
    then
        app_name="iTerm"
    else
        app_name="Terminal"
    fi
    
    if [[ $# -eq 0 ]]
    then
        open -a "$app_name" "$PWD"
    else
        open -a "$app_name" "$@"
    fi
}



#
# -----
#
if [ $(id -u) = 0 ]
then
    chbg "kali4.jpg"
else
    chbg "kali5.jpg"
fi


function logout()
{
    chbg "kali5.jpg"
}


trap logout EXIT
