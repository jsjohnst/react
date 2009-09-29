#
# Makefile for Project EA_Two
#   VBI  18-July-2007
#
#  primary target goes first
#
React: BitStringNew.o DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o
	g++ BitStringNew.o DynSysModel.o NTuple.o Monomial.o Polynomial.o GAParams.o FileManager.o GAModel.o React.o -O3 -o React

BitStringNew.o: BitString.cpp
	gcc BitStringNew.cpp -O3 -c

DynSysModel.o: DynSysModel.cpp
	gcc DynSysModel.cpp -O3 -c -g

NTuple.o: NTuple.cpp
	gcc NTuple.cpp -O3 -c -g

Monomial.o: Monomial.cpp
	gcc Monomial.cpp -O3 -c -g

Polynomial.o: Polynomial.cpp
	gcc Polynomial.cpp -O3 -c -g

GAParams.o: GAParams.cpp
	gcc GAParams.cpp -O3 -c -g

FileManager.o: FileManager.cpp
	gcc FileManager.cpp -O3 -c -g

GAModel.o: GAModel.cpp
	gcc GAModel.cpp -O3 -c -g

React.o: React.cpp
	gcc React.cpp -O3 -c -g


clean:
	rm -rf *.o React

