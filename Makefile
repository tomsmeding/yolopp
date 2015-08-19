all: y++
	./y++
	make output

main.o: main.cpp
	g++ -c main.cpp -Wall -std=c++11

translate.o: translate.cpp
	g++ -c translate.cpp -Wall -std=c++11

ast.o: ast.cc
	g++ -c ast.cc -Wall -std=c++11

y++: main.o translate.o ast.o
	g++ -o y++ translate.o ast.o main.o

output:
	g++ output.cc -o output -Wall -std=c++11 -lgmp -lgmpxx
