  function run_it($d) {
     $h = 'C:\Spare3\scripts\src\configs\'      
     cd ($h + $d)      
     .\RossDispatch1-4.exe     
  }

   $sites ="VT"
   foreach ($r in $sites) {      
      run_it($r)
   }
   cd 'C:\Spare3\scripts\'


      
   
