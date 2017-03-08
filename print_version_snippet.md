
Prints the version on the packaged dylib on the console.

```
ofApp::ofApp(int argc, char *argv[]) {
    string appBinaryPath = ofFile(argv[0]).getEnclosingDirectory();
    string libBinaryPath = appBinaryPath.append("libLeap.dylib");

    string cmd = "otool '";
    cmd = cmd.append(libBinaryPath);
    cmd = cmd.append("' -L | grep @loader");

    string leapLibVersion = ofSystem(cmd);
    leapLibVersion.erase(leapLibVersion.begin(), std::find_if(leapLibVersion.begin(), leapLibVersion.end(), std::not1(std::ptr_fun<int, int>(std::isspace))));
    ofLogNotice(ofToString(leapLibVersion));
}
```
