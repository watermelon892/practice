#include <boost/asio.hpp>

int main(void) {
  boost::asio::io_context io_context;
  boost::asio::ip::tcp::socket sock(io_context);
  boost::asio::ip::tcp::resolver resolver(io_context);
  boost::asio::ip::tcp::resolver::query query("localhost", "4321");

  boost::asio::connect(sock, resolver.resolve(query));
  boost::asio::write(sock, boost::asio::buffer("Hello, world!\r\n"));

  return 0;
}
