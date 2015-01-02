if !exists("g:branch_regex")
  let g:branch_regex = "\'W[TO]-[0-9]*\'"
endif

if !exists("g:commit_prefix")
  let g:commit_prefix = 'JIRA:'
endif

function! s:Promote_with_prefix( commit_message )
  let branch_name = system("git branch | grep '*' | cut -d' ' -f2 | tr -d '\n'")
  let keyword = system( "echo " . branch_name . "| grep -oh ". g:branch_regex. " | tr -d '\n' " )
  let new_commit_message = g:commit_prefix . keyword . " | " . a:commit_message
  execute "silent ! git commit -am '". new_commit_message. "'"
  execute "! git push origin " . branch_name
endfunction

command!  -nargs=1 Promote call s:Promote_with_prefix(<f-args>)
