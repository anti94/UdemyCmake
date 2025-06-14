recreate_build_folder:
	rm -rf build-wsl
	mkdir -p build-wsl

build_all: 
	mkdir -p build-wsl
	cd build-wsl && cmake .. && cmake --build .
