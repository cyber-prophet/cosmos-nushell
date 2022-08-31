def _query [ _subcom = "" ] { 
 let t1 = ( cyber ( $_subcom | split row " " ) -h | lines | parse "  {_command} {_description}" | str trim |
 where _command !~ '^cyber$' | where _command !~ '^-' | where _command =~ '.' | where _command !~ '[,\"\$A-Z]' | 
 insert _command_root $_subcom | move _command_root --before _command
 )

 $t1 | save $"cyber-($_subcom).json"

 $t1
 }
 
let _df1 = _query 
$_df1
 
def _query_down [ _df ] { 
    $_df | each { 
        |it| _query ( $"($it._command_root) ($it._command)" | str trim ) 
        } | 
    each { 
        |it| if $it != [] {$it} } | reduce {|it, acc| ( $acc | append $it ) 
        } 
    }
 
let _df2 = _query_down $_df1 

$_df2

let _df3 = _query_down $_df2 

$_df3

let _df4 = _query_down $_df3

$_df4

let _df5 = _query_down $_df4

$_df5