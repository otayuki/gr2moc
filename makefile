FC=gfortran
FFLAG= -Wall -O0

##############################################################
FOBJS= \
	commn_var.o \
	commn_msg.o \
	main.o

.SUFFIXES: .f90 .o

.f90.o:
	$(FC) $(FFLAG) -c $< -o $@

gr2moc.exe: $(FOBJS)
	$(FC) $(FFLAG) $(FOBJS) -o gr2moc.exe 

clean:
	rm -f $(FOBJS) *.mod *.f90~ *~

veryclean:
	rm -f $(FOBJS) *.mod *.f90~ *~ gr2moc.exe 

