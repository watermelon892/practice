#include <boost/iterator/counting_iterator.hpp>
#include <numeric>
#include <iostream>

int factorial(int n) {
  return std::accumulate(boost::counting_iterator<int>(1),
                         boost::counting_iterator<int>(n + 1),
                         1,
                         std::multiplies<int>());
}

int main(void) {
  int n;

  std::cin >> n;
  std::cout << factorial(n) << std::endl;

  return 0;
}
