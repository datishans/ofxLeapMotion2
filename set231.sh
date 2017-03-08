echo Setting Leap Motion libs to 2.3.1
rm libs
ln -s libs2.3.1 libs
otool -L libs/lib/osx/libLeap.dylib | grep libLeap
