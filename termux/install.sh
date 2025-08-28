cp -v sources.list $PREFIX/etc/apt/sources.list
cat termux_package_list.txt | xargs pkg install -y
