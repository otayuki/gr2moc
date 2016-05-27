# gr2moc
Interface Fortran90 code between GRRM14 and MOPAC

 //////////////////////////////////////////////////
 | Interface b/w MOPAC and GRRM14  (ver1.2)       |
 |  Yukihiro Ota      (otayuki@gmail.com)         |
 |  Sergi Ruiz-Barragan                           |
 |  Motoyuki Shiga                                |
 |  Last update: May 27th, 2016                   |
 |                                                |
 |  Reference:                                    |
 |  Yukihiro Ota, Sergi Ruiz-Barragan,            |
 |  Masahiko Machida, and Motoyuki Shiga,         |
 |  A screened automated structural search with   |
 |  semiempurical methods,                        |
 |  Chem. Phys. Lett. 648 (2016) 119-123.         |
 |  DOI: 10.1016/j.cplett.2016.02.013             |
 |  Preprint: arXiv:1602.03174                    |
 //////////////////////////////////////////////////
  
 Usage: ./gr2moc.exe [arg1]                        
        arg1: automatically suppiled by GRRM       
  
 MOPAC is called in this program as follows:       
   MOPAC2012.exe foo > bar 2>&1                    
  
 Important option in GRRM: 
   You MUST set 'Derivative=Force' in GRRM input.
   This is because the current version NEVER uses
   hessian data calculated by MOPAC.
  
 -REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-
 You have to set PATH to the install location of   
 MOPAC. Alternatively, you may make a symbolic link
 to MOPAC somewhere, such as /usr/local/bin .
 -REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-
  
 **************************************************
 This is an interface program from MOPAC to GRRM,  
 and vice versa. GRRM automatically calls this     
 program. So, users do not run it by yourself.     
 Put this program in your CURRENT WORK directory.  
 Then, start GRRM. 
  
 Users need to prepare two input files. One is your
 GRRM input. The other is the summary of keywords  
 of MOPAC. You have to carefully name a keyword    
 file. The file name MUST be consistent with your  
 GRRM input. For example, when your GRRM input is  
          foo.com
 then you have to prepare a MOPAC keyword file,    
          foo.key
 The filename extention, '.key', is needed.        
 Moreover, you have to type some keywords          
 within just 1 line. For example,                  
          PM6 RHF CHARGE=0 THREADS=1 XYZ           
 In the GRRM input, the coordinates of atoms are   
 written by the XYZ format. So, MOPAC keyword, XYZ 
 is needed. The following keywords are neglected   
 if you put them in a keyword file:                
          OPT, GRADIENTS, 1SCF, FORCE, FORCETS     
          FREQCY, HESSIAN, EF, PRECISE, RESTART    
 Part of them is automatically supplied by GRRM,   
 depending on calcualtion tasks.                   
 **************************************************
  
 [Supporting information] 
 The following functions are NOT supported in this 
 interface. Wait future update! 
   1. MOPAC does not read MO data given by GRRM,   
      as an initial guess.                         
   2. MOPAC never calculate hessian data. So, you  
      must set Derivative=Force in GRRM input.     
   3. MICROITERATION task in GRRM is not available.
   4. The information of 'dipole derivatives' and  
      'polarizability' is not sent to GRRM. The    
      correspoding parts are always set as zero.   
  
 MOPAC:                                            
      http://OpenMOPAC.net                         
      DOI:10.1021/ct3004645                        
 GRRM:                                             
      http://grrm.chem.tohoku.ac.jp/GRRM/          
  
 [Change log]                                      
 May 27, 2016:                                     
 Paper information is added.
 Aug 27, 2015:                                     
 Trajectry data is available (Ver 1.2)             
 Aug 19th, 2015:                                   
 Fortran90 prototype is made (Ver 1.1)             
 July 10, 2015:                                    
 First script-type interface is made. 
  
