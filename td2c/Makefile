td2dc: td2dc.cpp
	icpc td2dc.cpp -o td2dc_i
	objdump -d td2dc_i > td2dc.icc
	g++ td2dc.cpp -o td2dc_g
	objdump -d td2dc_g > td2dc.gcc
td2dcx: td2dc
	./td2dc_i
td2dcd: td2dc
	gdb ./td2dc_i
clean:
	rm *_i *_g *icc *gcc > /dev/null 2>&1 &