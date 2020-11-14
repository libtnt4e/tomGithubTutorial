function get1Repeat($foo){
# convert it to a character array
$charArray = $foo.ToCharArray()
$ht=@{} 
$charArray | foreach {$ht["$_"] += 1}
$ht.keys | where {$ht["$_"] -gt 1} | foreach {
        write-host "First Duplicate element found:  $_" 
        break;
    }
}
