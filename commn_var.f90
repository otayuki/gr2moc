!!$////////////////////////////////////////////////////////////////////
!!$  Module of common variables
!!$////////////////////////////////////////////////////////////////////
      module commn_var
        implicit none
        
!!$--- Define constants
        !! Avogadro const. (1/mol)
        double precision,parameter::avoga=6.0221367d23 
        !! Boltzmann const. (J/K)
        double precision,parameter::boltz=1.380658d-23
        !! 1 eV = 1.602E-19 J
        double precision,parameter::ev_to_jl=1.60217733d-19
        !! 1 cal = 4.184 J (def.)
        double precision,parameter::cl_to_jl=4.184d0
        !! 1 Hartree = 27.21 eV
        double precision,parameter::ha_to_ev=27.2113962d0
        !! 1 Bohr = 0.5292 Angstrom
        double precision,parameter::au_to_ang=0.529177249d0
        !! 1 eV = 23.06 kcal/mol
        double precision,parameter::ev_to_kcm=23.060542301389d0 
        !! 1 eV = 96.49 kJ/mol
        double precision,parameter::ev_to_kjm=96.48530898901d0
        !! 1 Hartree = 627.5 kcal/mol
        double precision,parameter::ha_to_kcm=627.50955314995d0
        !! 1 Hartree = 2625 kJ/mol
        double precision,parameter::ha_to_kjm=2625.4999703794d0

!!$---List of unit
        integer,parameter::unit_inpgen=11
        integer,parameter::unit_outgen=12
        !!
        integer,parameter::unit_inpmoc=21
        integer,parameter::unit_arcmoc=22
        integer,parameter::unit_outmoc=23
        integer,parameter::unit_bufmoc=24
        !! 
        integer,parameter::unit_trj=31

      end module commn_var
        
