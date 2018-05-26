MAINC=allocation_c
MAINCPP=allocation_cpp
mainc: $(MAINC).cpp
	g++ -g $(MAINC).cpp -o $(MAINC)
	objdump -d $(MAINC) > $(MAINC).gcc.dump
	icpc -g $(MAINC).cpp -o $(MAINC).icc
	objdump -d $(MAINC).icc >$(MAINC).icc.dump

	g++ -g $(MAINCPP).cpp -o $(MAINCPP)
	objdump -d $(MAINCPP) > $(MAINCPP).gcc.dump
	icpc -g $(MAINCPP).cpp -o $(MAINCPP).icc
	objdump -d $(MAINCPP).icc >$(MAINCPP).icc.dump