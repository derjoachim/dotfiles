#
# ~/.profile: executed by the command interpreter for login shells.
# set PATH so it includes user's private bin if it exists
if [ -d ~/bin ] ; then
    PATH=~/bin:"${PATH}"
fi
if [ -d ~/.gem ] ; then
    PATH=~/.gem/ruby/2.4.0/bin:"${PATH}"
fi
if [ -d ~/.composer/vendor/bin ] ; then
    PATH=~/.composer/vendor/bin:"${PATH}"
fi
if [ -d ~/go ] ; then
    PATH=~/go/bin:"${PATH}"
fi

eval $(ssh-agent)
