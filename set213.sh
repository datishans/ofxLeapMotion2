echo Setting Leap Motion libs to 2.1.3
rm libs
ln -s libs2.1.3 libs
otool -L libs/lib/osx/libLeap.dylib | grep libLeap
