#include <stdio.h>

__global__ void hellFromGPU()
{
    printf("Hello World from GPU \n");
}

int main()
{
    // Launch the kernel
    hellFromGPU<<<1, 10>>>();

    // Wait for the GPU to finish before accessing on host
    cudaDeviceReset();

    return 0;
}