.PHONY: clean install

default: win d2d d3d opengl d3d12

win:
	clang -l user32.lib -l gdi32.lib -o helloengine_win.exe helloengine_win.c

d2d:
	clang -l user32.lib -l ole32.lib -l d2d1.lib -o helloengine_d2d.exe helloengine_d2d.cpp

d3d:
	fxc /T vs_5_0 /Zi /Fo copy.vso copy.vs
	fxc /T ps_5_0 /Zi /Fo copy.pso copy.ps
	clang -l user32.lib -l d3d11.lib -l d3dcompiler.lib -o helloengine_d3d.exe helloengine_d3d.cpp

d3d12:
	cl /EHsc helloengine_d3d12.cpp user32.lib d3d12.lib dxgi.lib d3dcompiler.lib

opengl:
	clang -l user32.lib -l gdi32.lib -l opengl32.lib -o helloengine_opengl.exe helloengine_opengl.cpp

