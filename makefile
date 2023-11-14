CXX = nvc++

all: mmgpu gpu_magic_matrix_with_timing

mmgpu:
		$(CXX) -fopenmp -mp=gpu -target=gpu -o mmgpu gpu_magic_matrix.cpp

gpu_magic_matrix_with_timing:
		$(CXX) -fopenmp -mp=gpu -target=gpu -o mmgpu_with_timing gpu_magic_matrix.cpp