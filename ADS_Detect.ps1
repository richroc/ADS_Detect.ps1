#Script that will check files for Alternate Data Streams.#

[CmdletBinding()]
Param(
  [Parameter(Mandatory=$False,Position=1)]
   [string]$Directory
	)

If (!$Directory) {
	$Directory = "C:\"
	}
	
$items = Get-ChildItem -Directory $Directory -Recurse


foreach ($item in $items){
	$STREAMS=Get-Item $item.FullName -Stream *
	$Streams
		ForEach ($Stream in $Streams){
		 if ($Stream.Stream -notmatch ":$DATA"){

			$Stream.stream 
		}
		}

	
	}