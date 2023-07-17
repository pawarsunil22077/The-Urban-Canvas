#include <stdio.h>

#define NUM_COLORS 4
#define MAX_ROWS 8
#define MAX_COLS 8

// Utility function to clear the screen
void clearScreen()
{
    printf("\033[H\033[J");
}

// Utility function to reset the cursor position
void resetCursor()
{
    printf("\033[0;0f");
}

// data structure to store the colors of each tile
struct Color
{
    int r;
    int g;
    int b;
};

// data structure to store all canvas data
struct Canvas
{
    int height;
    int width;
    struct Color colors[NUM_COLORS];
    int grid[MAX_ROWS][MAX_COLS];
};

// data structure to store brushes
struct Brush
{
    char character;
    struct Color color;
};

// function to initialize the canvas
void initCanvas(struct Canvas *canvas)
{
    // set up canvas dimensions
    canvas->height = MAX_ROWS;
    canvas->width = MAX_COLS;

    // clear grid
    for (int row = 0; row < MAX_ROWS; row++)
    {
        for (int col = 0; col < MAX_COLS; col++)
        {
            canvas->grid[row][col] = 0;
        }
    }

    // set up colors
    canvas->colors[0].r = 255;
    canvas->colors[0].g = 255;
    canvas->colors[0].b = 255;

    canvas->colors[1].r = 128;
    canvas->colors[1].g = 92;
    canvas->colors[1].b = 153;

    canvas->colors[2].r = 255;
    canvas->colors[2].g = 239;
    canvas->colors[2].b = 139;

    canvas->colors[3].r = 0;
    canvas->colors[3].g = 0;
    canvas->colors[3].b = 0;
}

// function to draw the canvas
void drawCanvas(struct Canvas *canvas)
{
    for (int row = 0; row < canvas->height; row++)
    {
        for (int col = 0; col < canvas->width; col++)
        {
            int colorIndex = canvas->grid[row][col];
            printf("\033[48;2;%d;%d;%dm ", canvas->colors[colorIndex].r, canvas->colors[colorIndex].g, canvas->colors[colorIndex].b);
            printf(" ");
        }
        printf("\n");
    }
    printf("\033[0m");
}

// function to use the brush
void useBrush(struct Canvas *canvas, struct Brush *brush, int row, int col)
{
    canvas->grid[row][col] = brush->character;
    canvas->colors[brush->character].r = brush->color.r;
    canvas->colors[brush->character].g = brush->color.g;
    canvas->colors[brush->character].b = brush->color.b;
}

// function to update the canvas
void updateCanvas(struct Canvas *canvas)
{
    clearScreen();
    resetCursor();
    drawCanvas(canvas);
}

int main(void)
{
    struct Canvas canvas;
    initCanvas(&canvas);

    struct Brush brush;
    brush.character = 0;
    brush.color.r = 0;
    brush.color.g = 0;
    brush.color.b = 0;

    useBrush(&canvas, &brush, 0, 0);
    useBrush(&canvas, &brush, 1, 1);
    useBrush(&canvas, &brush, 2, 2);
    useBrush(&canvas, &brush, 3, 3);
    useBrush(&canvas, &brush, 4, 4);
    useBrush(&canvas, &brush, 5, 5);
    useBrush(&canvas, &brush, 6, 6);
    useBrush(&canvas, &brush, 7, 7);

    updateCanvas(&canvas);

    return 0;
}