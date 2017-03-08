echo Setting Leap Motion: libs 2.3.1 + headers 2.1.3
rm libs
ln -s libs2.3.1headers2.1.3 libs
otool -L libs/lib/osx/libLeap.dylib | grep libLeap
