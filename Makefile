.PHONY: clean install

default: x64

clean:
	rm -rf _builds _bin

_builds/x64/CMakeCache.txt:
	cmake -H. -B_builds/x64 -GNinja -DCMAKE_BUILD_TYPE="Release" -DCMAKE_TOOLCHAIN_FILE="toolchain.cmake"

x64: _builds/x64/CMakeCache.txt
	cmake --build _builds/x64

