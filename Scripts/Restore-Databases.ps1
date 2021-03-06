
function get-latest($site='NH') {
   $r = get-childitem -Path "${backdir}dispatch_${s}*.bak" | sort $_.LastwriteTime | select -First 1 
   return $r
}

function get-server {
$h = hostname
if ($h -eq "Spare3") { 
   $hroot = "Spare3\" 
   } else { 
   $hroot = "DISPATCHSPARE2\"
   } 
return  $hroot + "SQLExpress"
}

$SS = get-server

$backdir = 'C:\spare3\scripts\BACKUP\'
$datadir  = 'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLExpress\MSSQL\DATA\'

#$sites ="CT","PRODUCTION","sutton","VT"
$sites ="CT","PRODUCTION","sutton","VT", "ME"
#$sites ="VT","CT"
write-host "Backdir: $backdir"
write-host "DataDir: $datadir"
write "Server: $SS" 

Write-host "values for sqlcmd"
$format = '|{0,-25}|{1,20}|{2,-23}|{3,10}|{4,10}|{5,10}|' 
$format -f "RestoreDB", "MOVE1","MOVE2","mdfFile", "ldffile","BACKFILE"  # print a heading  
#foreach($s in $sites) {  write "${backdir}$(get-latest($s))"  }; exit

foreach($s in $sites) { 
  
   $backfile = "$(get-latest($s))"   
   $sourcedb= "dispatch_${$s}"  
   $restoredb= "dispatch_$s"

   $mdf= $datadir + "dispatch_$s.mdf"
   $ldf= $datadir + "dispatch_$s.ldf"
   
   # following is untested  "ME" may not work
   if ($s -eq "ME") { 
       $move1 = "dispatch_VT"
       $move2 = "dispatch_VT_log"   
   } else {
       $move1 = "dispatch_$s"
       $move2 = "dispatch_$s" + "_log"   
   } 
   
   $format -f $restoredb, $move1, $move2,$mdf,$ldf,$backfile   # print a row   
   
    $sql= @"
RESTORE DATABASE [$restoredb] 
FROM  DISK = N'$backfile' 
   WITH  FILE = 1,  
    MOVE N'$move1' 
     TO N'$mdf',  
    MOVE N'$move2' 
     TO N'$ldf',  
     NOUNLOAD,  REPLACE,  STATS = 10
GO
"@
   #write $sql
   
   sqlcmd -S $SS -U sa -P 123ross321 -Q $sql

   }



#RESTORE DATABASE [dispatch_ct] 
#  FROM  DISK = N'C:\HotSpare\BACKUP\dispatch_ct_FullBackup_20100224_0750.bak' 
#    WITH  FILE = 1,  
#    MOVE 
#      N'dispatch_ct' 
#    TO 
#      N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLExpress\MSSQL\DATA\dispatch_ct.mdf',  
#    MOVE N'dispatch_ct_log' 
#     TO N'c:\Program Files\Microsoft SQL Server\MSSQL10.SQLExpress\MSSQL\DATA\dispatch_ct.ldf',  
#     NOUNLOAD,  STATS = 10
#GO
#
