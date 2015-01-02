Formatted-Commit
================

A vim plugin to format your commit-message and promote from vim.

Usage
=======
* Create branch names that contain the JIRA ticket number 
* Example :-
 * branch-name-WT-001
 * branch-name-WO-001
* promote from vim using the following command
 * <pre>:Promote "your commit message"</pre>
* The JIRA ticket number is prefixed and the final commit will be like so
 * <pre>JIRA:WO-001 | your commit message</pre>
