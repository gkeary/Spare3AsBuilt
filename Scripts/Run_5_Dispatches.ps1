  function run_it($d) {
     $h = 'C:\Spare3\scripts\Src\configs\'      
     cd ($h + $d)      
     .\RossDispatch1-4.exe     
  }

   # note; MA is missing...
   $sites ="CT","NH","VT", "ME"   
   #$sites = "ME"
   foreach ($r in $sites) {      
      run_it($r)
   }

   cd  'c:\Spare3\scripts\Src\configs\MA'
   .\RossDispatch1-6.exe 
   
   cd 'C:\Spare3\scripts\'


      
   
