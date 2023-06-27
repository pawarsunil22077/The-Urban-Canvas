#include <stdio.h>
#include <stdlib.h>

//Structures for the Urban Canvas objects
typedef struct
{
    int x;
    int y;
    int width;
    int height;
    int depth;
} Object;

typedef struct
{
    int x;
    int y;
    int width;
    int height;
} PaintObject;

//Function prototypes for the Urban Canvas functions
void createObject(Object*);
void showObject(Object*);
void paintObject(PaintObject*, const int);
void moveObject(Object*, const int);

//Main function of the Urban Canvas
int main()
{
    Object o;
    PaintObject po;
    int color;
    int direction;

    //Create object
    createObject(&o);
    showObject(&o);

    //Paint object
    paintObject(&po, color);

    //Move object
    moveObject(&o, direction);

    //Show object
    showObject(&o);

    return 0;
}

//Function definitions
void createObject(Object *o)
{
    o->x = 0;
    o->y = 0;
    o->width = 10;
    o->height = 10;
    o->depth = 2;
}

void showObject(Object *o)
{
    printf("Object is at %d,%d with size %dx%dx%d\n", o->x, o->y, o->width, o->height, o->depth);
}

void paintObject(PaintObject *po, const int c)
{
    po->x = o->x;
    po->y = o->y;
    po->width = o->width;
    po->height = o->height;
    po->color = c;
}

void moveObject(Object *o, const int d)
{
    o->x += d;
    o->y += d;
}