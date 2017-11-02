CXX=g++
CXXFLAGS=-c -std=c++11 -Wall -pedantic-errors -O3
LDFLAGS=
SOURCES=2-OPT.cpp tsp.cpp cities.cpp city.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=2OPT

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CXX) $(CXXFLAGS) $< -o $@

clean: 
	rm -f ${EXECUTABLE} *.o *~

	

