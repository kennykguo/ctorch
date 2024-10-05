CXX = g++
CXXFLAGS = -std=c++17 -O3 -g

SOURCES = main.cpp Network.cpp LinearLayer.cpp Neuron.cpp ReLU.cpp SoftmaxCrossEntropy.cpp
OBJECTS = $(SOURCES:.cpp=.o)
TARGET = nn

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $^ -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(TARGET)
