%: %.asm
	as $< -o build/$@.o
	ld -o build/$@ build/$@.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path`
