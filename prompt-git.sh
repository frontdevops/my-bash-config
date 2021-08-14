
function find_git_branch()
{
    local branch
    if branch=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
    then
        if [[ "$branch" == "HEAD" ]]
        then
            branch='detached*'
        fi
        
        find_git_dirty
        
        git_branch="❰ $branch $git_dirty ❱"
    else
        git_branch=""
    fi
}


function find_git_dirty()
{
    local status=$(git status --porcelain 2> /dev/null)
    if [[ "$status" != "" ]]
    then
        git_dirty=' changed'
    else
        git_dirty=''
    fi
}


#
# Install
#
#if -z `echo $PROMPT_COMMAND | grep 'find_git_branch1'`
if ! grep -q 'find_git_branch' <<< $PROMPT_COMMAND
then
    PROMPT_COMMAND="find_git_branch;;$PROMPT_COMMAND"
fi


# EOF #
