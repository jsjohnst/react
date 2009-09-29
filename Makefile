#
# Makefile for Project EA_Two
#   VBI  18-July-2007
#
#  primary target goes first
#
React: BitString.o DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o
	g++ BitString.o DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o -O3 -o React

BitString.o: BitString.cpp
	gcc BitString.cpp -O3 -c

DynSysModel.o: DynSysModel.cpp
	gcc DynSysModel.cpp -O3 -c

NTuple.o: NTuple.cpp
	gcc NTuple.cpp -O3 -c

Monomial.o: Monomial.cpp
	gcc Monomial.cpp -O3 -c

Polynomial.o: Polynomial.cpp
	gcc Polynomial.cpp -O3 -c

GAParams.o: GAParams.cpp
	gcc GAParams.cpp -O3 -c

FileManager.o: FileManager.cpp
	gcc FileManager.cpp -O3 -c

GAModel.o: GAModel.cpp
	gcc GAModel.cpp -O3 -c

React.o: React.cpp
	gcc React.cpp -O3 -c


clean:
	rm -rf *.o React

