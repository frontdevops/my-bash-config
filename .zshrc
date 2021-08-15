
export CLICOLOR=1
# Default
# export LSCOLORS=ExFxCxDxBxegedabagacad

# You can use this if you are using a black background
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
# or
export LSCOLORS=GxFxCxDxBxegedabagaced

# If you'd like to mimic the colors of a typical Linux terminal:
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd


source ~/my-bash-config/alias.sh
source ~/my-bash-config/docker.sh

# Only for MacOS
if [[ "$OSTYPE" == "darwin"* ]]
then
    source ~/my-bash-config/macos.sh
fi

