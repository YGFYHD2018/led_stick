#include "fileutils.h"
#include <iostream>

bool is_file(std::string filePath)
{  
  try {
    filesys::path pathObj(filePath);
    if (filesys::exists(pathObj) && filesys::is_regular_file(pathObj))
      return true;
    }
    catch (filesys::filesystem_error & e)
    {
       std::cerr << e.what() << std::endl;
    }
    return false;
}
 
struct path
{  
  filesys::path operator()(const filesys::directory_entry entry) const
  {
    return entry.path();
  }
};
 
void read_directory(const std::string& name, std::vector<filesys::path>& v)
{
  filesys::path p(name);
  filesys::directory_iterator start(p);
  filesys::directory_iterator end;
  std::transform(start, end, std::back_inserter(v), path());
}

