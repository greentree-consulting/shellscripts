
#get root access
su -
cd /tmp

#Remove old Ruby
yum remove ruby
 
# Install dependencies
yum groupinstall "Development Tools"
yum install zlib zlib-devel
yum install openssl-devel
wget http://pyyaml.org/download/libyaml/yaml-0.1.5.tar.gz
tar xzvf yaml-0.1.5.tar.gz
cd yaml-0.1.5
./configure
make
make install
 
# Install ruby
wget http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.gz
tar zxf ruby-2.1.0.tar.gz
cd ruby-2.1.0
./configure
make
make install
 
# Update rubygems
gem update --system
gem install bundler
 
#Test ruby and rubygems are working
#Close shell and reopen for changes to take effect
ruby -v
gem --version
 
# Rails
yum install sqlite-devel
gem install rails
gem install sqlite3
