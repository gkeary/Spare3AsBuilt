get-process | 
  where-object{ $_.ProcessName -match "Ross"} | 
  foreach{ $_.kill() }
   