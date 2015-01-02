function! s:Promote_with_prefix( commit_message )
  let branch_name = system("git branch | grep '*' | cut -d' ' -f2 | tr -d '\n'")
  let prefix = system( "echo " . branch_name . "| grep -oh 'W[TO]-[0-9]*' | tr -d '\n' " )
  let new_commit_message = "JIRA:" . prefix . " | " . a:commit_message
  echom new_commit_message
  execute "silent ! git commit -am '". new_commit_message. "'"
  execute "! git push origin " . branch_name
endfunction

command!  -nargs=1 Promote call s:Promote_with_prefix(<f-args>)
