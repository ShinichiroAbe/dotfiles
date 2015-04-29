#!/bin/bash

SVN="/usr/bin/svn"
VIM="/usr/bin/vim"

$SVN diff $@ | $VIM -R -
