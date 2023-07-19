#include <iostream>
#include <fstream>
#include <string>
#include <vector>

using namespace std;

// This class allows the user to create and store a design on the Urban Canvas
class UrbanCanvas 
{
    public:
        // Constructor
        UrbanCanvas()
        {
            // Initialize variables
            width = 0;
            height = 0;
            canvasDesigns = vector<vector<int> >(width, vector<int>(height));
        }
        
        // Functions
        void setDimensions(int w, int h) {
            width = w;
            height = h;
            canvasDesigns = vector<vector<int> >(width, vector<int>(height));
        }
        void setDesign(vector<vector<int> > design) {
            canvasDesigns = vector<vector<int> >(design);
        }
        bool storeDesignInFile() {
            if (width == 0 || height == 0) {
                return false;
            }
            ofstream design_file ("UC_Designs.txt");
            design_file << width << endl;
            design_file << height << endl;
            for (int i=0; i<width; i++) {
                for (int j=0; j<height; j++) {
                    design_file << canvasDesigns[i][j] << " ";
                }
                design_file << endl;
            }
            design_file.close();
            return true;
        }
    private:
        // Fields
        int width;
        int height;
        vector<vector<int> > canvasDesigns;
        
};


int main() {
    UrbanCanvas myCanvas;
    int width, height;
    cout << "Please enter the width of your design: " << endl;
    cin >> width;
    cout << "Please enter the height of your design: " << endl;
    cin >> height;
    myCanvas.setDimensions(width, height);
    
    vector<vector<int> > design(height, vector<int>(width));
    cout << "Please enter the design for the Urban Canvas (1 for paint, 0 for no paint): " << endl;
    for (int i=0; i<height; i++) {
        for (int j=0; j<width; j++) {
            int pixel;
            cin >> pixel;
            design[i][j] = pixel;
        }
    }
    
    myCanvas.setDesign(design);
    bool success = myCanvas.storeDesignInFile();
    if (success) {
        cout << "Design successfully stored in file!" << endl;
    }
    else {
        cout << "Error: design unsuccessfully stored in file." << endl;
    }
    
    
    return 0;
}