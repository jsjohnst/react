#
# Makefile for Project EA_Two
#   VBI  18-July-2007
#
#  primary target goes first
#
CFLAGS=-O3 -c -I./

React: DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o
	g++ DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o -O3 -o React

BitStringNew.o: BitString.cpp
	gcc BitStringNew.cpp $(CFLAGS)

DynSysModel.o: DynSysModel.cpp
	gcc DynSysModel.cpp $(CFLAGS)

NTuple.o: NTuple.cpp
	gcc NTuple.cpp $(CFLAGS)

Monomial.o: Monomial.cpp
	gcc Monomial.cpp $(CFLAGS)

Polynomial.o: Polynomial.cpp
	gcc Polynomial.cpp $(CFLAGS)

GAParams.o: GAParams.cpp
	gcc GAParams.cpp $(CFLAGS)

FileManager.o: FileManager.cpp
	gcc FileManager.cpp $(CFLAGS)

GAModel.o: GAModel.cpp
	gcc GAModel.cpp $(CFLAGS)

React.o: React.cpp
	gcc React.cpp $(CFLAGS)


clean:
	rm -rf *.o React

