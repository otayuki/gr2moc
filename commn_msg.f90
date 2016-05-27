!!$////////////////////////////////////////////////////////////////////
!!$  Module of system messages
!!$////////////////////////////////////////////////////////////////////
      module commn_msg
        implicit none

        integer,parameter :: unit_stdo=6

!!$---Subroutines inside module
      contains

!!$---Header of error messages
        subroutine header_err_msg ()
          write(unit_stdo,*)                                       &
               "mopac-grrm interface is abnormally terminated."
          return
        end subroutine header_err_msg
!!$--- End of "header of error messages"

!!$---Description of this interface
        subroutine descript_std_msg ()

          write(unit_stdo,*)                                       &     
               "//////////////////////////////////////////////////"
          write(unit_stdo,*)                                       &
               "| Interface b/w MOPAC and GRRM14  (ver1.2)       |"
          write(unit_stdo,*)                                       &
               "|  Yukihiro Ota      (otayuki@gmail.com)         |"
          write(unit_stdo,*)                                       &
               "|  Sergi Ruiz-Barragan                           |"
          write(unit_stdo,*)                                       &
               "|  Motoyuki Shiga                                |"   
          write(unit_stdo,*)                                       &
               "|  Last update: May 27th, 2016                   |"
          write(unit_stdo,*)                                       &     
               "|                                                |"
          write(unit_stdo,*)                                       &     
               "|  Reference:                                    |"
          write(unit_stdo,*)                                       &     
               "|  Yukihiro Ota, Sergi Ruiz-Barragan,            |"
          write(unit_stdo,*)                                       &     
               "|  Masahiko Machida, and Motoyuki Shiga,         |"
          write(unit_stdo,*)                                       &     
               "|  A screened automated structural search with   |"          
          write(unit_stdo,*)                                       &     
               "|  semiempurical methods,                        |"
          write(unit_stdo,*)                                       &     
               "|  Chem. Phys. Lett. 648 (2016) 119-123.         |"
          write(unit_stdo,*)                                       &     
               "|  DOI: 10.1016/j.cplett.2016.02.013             |"
          write(unit_stdo,*)                                       &     
               "|  Preprint: arXiv:1602.03174                    |"
          write(unit_stdo,*)                                       &     
               "//////////////////////////////////////////////////"
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &
               "Usage: ./gr2moc.exe [arg1]                        "
          write(unit_stdo,*)                                       &     
               "       arg1: automatically suppiled by GRRM       "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "MOPAC is called in this program as follows:       "
          write(unit_stdo,*)                                       &     
               "  MOPAC2012.exe foo > bar 2>&1                    "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "Important option in GRRM: "
          write(unit_stdo,*)                                       &     
               "  You MUST set 'Derivative=Force' in GRRM input."
          write(unit_stdo,*)                                       &     
               "  This is because the current version NEVER uses"
          write(unit_stdo,*)                                       &     
               "  hessian data calculated by MOPAC."
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-"
          write(unit_stdo,*)                                       &     
               "You have to set PATH to the install location of   "
          write(unit_stdo,*)                                       &     
               "MOPAC. Alternatively, you may make a symbolic link"
          write(unit_stdo,*)                                       &     
               "to MOPAC somewhere, such as /usr/local/bin ."
          write(unit_stdo,*)                                       &     
               "-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-REMARK-"
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "**************************************************"
          write(unit_stdo,*)                                       &     
               "This is an interface program from MOPAC to GRRM,  "
          write(unit_stdo,*)                                       &     
               "and vice versa. GRRM automatically calls this     "
          write(unit_stdo,*)                                       &     
               "program. So, users do not run it by yourself.     "
          write(unit_stdo,*)                                       &     
               "Put this program in your CURRENT WORK directory.  "
          write(unit_stdo,*)                                       &     
               "Then, start GRRM. "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "Users need to prepare two input files. One is your"
          write(unit_stdo,*)                                       &     
               "GRRM input. The other is the summary of keywords  "
          write(unit_stdo,*)                                       &     
               "of MOPAC. You have to carefully name a keyword    "
          write(unit_stdo,*)                                       &     
               "file. The file name MUST be consistent with your  "
          write(unit_stdo,*)                                       &     
               "GRRM input. For example, when your GRRM input is  "
          write(unit_stdo,*)                                       &     
               "         foo.com"
          write(unit_stdo,*)                                       &     
               "then you have to prepare a MOPAC keyword file,    "
          write(unit_stdo,*)                                       &     
               "         foo.key"
          write(unit_stdo,*)                                       &     
               "The filename extention, '.key', is needed.        "
          write(unit_stdo,*)                                       &     
               "Moreover, you have to type some keywords          "
          write(unit_stdo,*)                                       &     
               "within just 1 line. For example,                  "
          write(unit_stdo,*)                                       &     
               "         PM6 RHF CHARGE=0 THREADS=1 XYZ           "
          write(unit_stdo,*)                                       &     
               "In the GRRM input, the coordinates of atoms are   "
          write(unit_stdo,*)                                       &     
               "written by the XYZ format. So, MOPAC keyword, XYZ "
          write(unit_stdo,*)                                       &     
               "is needed. The following keywords are neglected   "
          write(unit_stdo,*)                                       &     
               "if you put them in a keyword file:                "
          write(unit_stdo,*)                                       &     
               "         OPT, GRADIENTS, 1SCF, FORCE, FORCETS     "
          write(unit_stdo,*)                                       &     
               "         FREQCY, HESSIAN, EF, PRECISE, RESTART    "
          write(unit_stdo,*)                                       &     
               "Part of them is automatically supplied by GRRM,   "
          write(unit_stdo,*)                                       &     
               "depending on calcualtion tasks.                   "
          write(unit_stdo,*)                                       &     
               "**************************************************"
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "[Supporting information] "
          write(unit_stdo,*)                                       &     
               "The following functions are NOT supported in this "
          write(unit_stdo,*)                                       &     
               "interface. Wait future update! "
          write(unit_stdo,*)                                       &     
               "  1. MOPAC does not read MO data given by GRRM,   "
          write(unit_stdo,*)                                       &     
               "     as an initial guess.                         "
          write(unit_stdo,*)                                       &     
               "  2. MOPAC never calculate hessian data. So, you  "
          write(unit_stdo,*)                                       &     
               "     must set Derivative=Force in GRRM input.     "
          write(unit_stdo,*)                                       &     
               "  3. MICROITERATION task in GRRM is not available."
          write(unit_stdo,*)                                       &     
               "  4. The information of 'dipole derivatives' and  " 
          write(unit_stdo,*)                                       &     
               "     'polarizability' is not sent to GRRM. The    "
          write(unit_stdo,*)                                       &     
               "     correspoding parts are always set as zero.   "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "MOPAC:                                            "
          write(unit_stdo,*)                                       &     
               "     http://OpenMOPAC.net                         "
          write(unit_stdo,*)                                       &
               "     DOI:10.1021/ct3004645                        "
          write(unit_stdo,*)                                       &     
               "GRRM:                                             "
          write(unit_stdo,*)                                       &     
               "     http://grrm.chem.tohoku.ac.jp/GRRM/          "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               "[Change log]                                      "
          write(unit_stdo,*)                                       &     
               "May 27, 2016:                                     "
          write(unit_stdo,*)                                       &     
               "Paper information is added."
          write(unit_stdo,*)                                       &     
               "Aug 27, 2015:                                     "
          write(unit_stdo,*)                                       &
               "Trajectry data is available (Ver 1.2)             "
          write(unit_stdo,*)                                       &     
               "Aug 19th, 2015:                                   "
          write(unit_stdo,*)                                       &     
               "Fortran90 prototype is made (Ver 1.1)             "
          write(unit_stdo,*)                                       &     
               "July 10, 2015:                                    "
          write(unit_stdo,*)                                       &     
               "First script-type interface is made. "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               " "
          write(unit_stdo,*)                                       &     
               " The program is normally terminated."

        end subroutine descript_std_msg
!!$--- End of "Description of this interface"


      end module commn_msg
