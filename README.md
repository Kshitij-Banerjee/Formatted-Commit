Formatted-Commit
================

A vim plugin to format your commit-message and promote from vim.

Configuration
=======
* Define the regex to extract from branch name in vimrc
 * example: <pre> let g:branch_regex = "\'W[TO]-[0-9]*\'" </pre>
* Define the commit-prefix string in vimrc
 * example: <pre> let g:commit_prefix = 'JIRA:' </pre>
 
Example :-
=======
* branch-name-WO-001
* promote from vim using the following command
 * <pre>:Promote your_commit_message</pre>
* The commit is formatted as so.
 * <pre>JIRA:WO-001 | your_commit_message</pre>

Installation
==============
* Directly do a git clone into your ~/.vim/plugin directory
* Install using your favourite method like Vundle/Pathogen 
 * https://github.com/gmarik/Vundle.vim 
 * https://github.com/tpope/vim-pathogen
