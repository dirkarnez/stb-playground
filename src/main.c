#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
#include <stdio.h>
#include <stdlib.h>

int main() {
    unsigned int width = 100;
    unsigned int height = 100;
    unsigned int channel = 3;
    
    unsigned char *imgData = (unsigned char *)malloc( channel * width * height * sizeof( unsigned char ) );

    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            int index = (y * width + x) * channel; // Calculate the correct index

            // Example: Fill with red color (255, 0, 0) for RGB
            imgData[index] = 255;     // Red
            imgData[index + 1] = 0;   // Green
            imgData[index + 2] = 0;   // Blue
        }
    }

    int result = stbi_write_jpg("output.jpg", width, height, channel, imgData, 100);
    printf("Hello World! %d", result);
    return 0;
}
