set-strictMode -version 3

function get-textFromInput {

   param (
      [string] $param
   )

   if ($param -eq 'clipboard') {
      return get-clipboard
   }

   $param_ = $param -replace '^\w:', '' # remove leading C: etc. because the colon is an illegal character

 # Check if $param_ contains characters that are illegal in NTFS:
   if ( $param_ -ne '/' -and $param_ -notMatch '[?\*:<>|"\n]') {

       if (test-path -pathType leaf -literalPath $param) {
          return get-content -raw $param
       }
   }

   return $param
}
