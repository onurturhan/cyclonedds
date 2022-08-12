#git reset --hard
git clean -fd

sudo apt-get install libcunit1 libcunit1-doc libcunit1-dev

rm -rif build
mkdir build

cd build
cmake -DCMAKE_BUILD_TYPE=Debug -DBUILD_TESTING=ON -DBUILD_EXAMPLES=ON ..
cmake --build . 


# ssh-keygen -t rsa -b 4096 -C "onurturhan@gmail.com"
# cat ~/.ssh/id_rsa.pub