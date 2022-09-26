#include <fstream>
#include <iostream>

unsigned rounds;
float x = 1.0f;
double pi = 1.0;

int main()
{
	std::ios::sync_with_stdio(false);
	
	std::ifstream infile("rounds.txt");
	infile >> rounds;
	infile.close();
	
	rounds += 2u;
	
	for (unsigned i=2 ; i < rounds ; ++i)
	{
		x = -x; 
		pi += (x / (2u * i - 1u));
	}
	
	pi *= 4;
	
	std::cout.precision(17);
	std::cout << pi << std::endl;
	return 0;
}