x86_app: main.c
    $(CC) main.c -o x86_app -target x86_64-apple-macos10.12
arm_app: main.c
    $(CC) main.c -o arm_app -target arm64-apple-macos11
universal_app: x86_app arm_app
    lipo -create -output universal_app x86_app arm_app
