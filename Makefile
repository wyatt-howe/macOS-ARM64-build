
x86_app: main.c
	$(CC) --version
	sudo xcode-select -switch /Applications/Xcode_12.2.app
	$(CC) --version
	$(CC) main.c -o x86_app -target x86_64-apple-macos10.12
arm_app: main.c
	$(CC) --version
	sudo xcode-select -switch /Applications/Xcode_12.5.1.app
	$(CC) --version
	$(CC) main.c -o arm_app -target arm64-apple-macos11
universal_app: x86_app arm_app
	$(CC) --version
	lipo -create -output universal_app x86_app arm_app
	
