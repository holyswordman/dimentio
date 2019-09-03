.PHONY: all clean

all:
	xcrun -sdk iphoneos clang -arch arm64 -Weverything dimentio.m -o dimentio -framework IOKit -framework CoreFoundation -framework Foundation -O2
	codesign -s ${CODESIGN_IDENTITY} --entitlements tfp0.plist dimentio
clean:
	$(RM) dimentio
