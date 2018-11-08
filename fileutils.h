#include <string>
#include <vector>
#include <boost/filesystem.hpp>
 
namespace filesys = boost::filesystem;

bool is_file(std::string path);

void read_directory(const std::string& name, std::vector<filesys::path>& v);
