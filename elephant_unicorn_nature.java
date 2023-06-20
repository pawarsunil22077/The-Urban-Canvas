import java.util.*;

public class urban_canvas {
	public static void main(String[] args){
		//Create Scanner Object
		Scanner sc = new Scanner(System.in);
		
		//Print Welcome Message
		System.out.println("Welcome to The Urban Canvas!");
		
		//Prompt User for canvas size
		System.out.println("Please enter the canvas size that you would like to make: ");
		int size = sc.nextInt();
		
		//Create Canvas
		char[][] canvas = new char[size][size];
		
		//Populate Canvas with '_'
		for(int i = 0; i < size;i++){
			for(int j = 0; j < size; j++){
				canvas[i][j] = '_';
			}
		}
		
		//Print Canvas
		System.out.println("Your canvas is ready!");
		for(int i = 0; i < size;i++){
			for(int j = 0; j < size; j++){
				System.out.print(canvas[i][j] + " ");
			}
			System.out.println();
		}
		
		//User Choice
		System.out.println("What would you like to do?");
		System.out.println("1. Draw a Line\n2. Fill an Area\n3. Clear Canvas\n4. Exit Program");
		int choice = sc.nextInt();
		
		//Draw Line
		if(choice == 1){
			//Prompt user for coordinates 
			System.out.println("Please enter the coordinates of the line you'd like to draw: ");
			
			System.out.print("From x: ");
			int x1 = sc.nextInt();
			
			System.out.print("From y: ");
			int y1 = sc.nextInt();
			
			System.out.print("To x: ");
			int x2 = sc.nextInt();
			
			System.out.print("To y: ");
			int y2 = sc.nextInt();
			
			//Draw line
			for(int x = x1; x <= x2; x++){
				canvas[x][y2] = 'X';
			}
			
			for(int y = y1; y <= y2; y++){
				canvas[x2][y] = 'X';
			}
			
			//Print Canvas
			System.out.println("Your line has been drawn!");
			for(int i = 0; i < size;i++){
				for(int j = 0; j < size; j++){
					System.out.print(canvas[i][j] + " ");
				}
				System.out.println();
			}
		}
		
		//Fill Area 
		if(choice == 2){
			//Prompt user for coordinates
			System.out.println("Please enter the coordinates of the area you'd like to fill: ");
			
			System.out.print("From x: ");
			int x1 = sc.nextInt();
			
			System.out.print("From y: ");
			int y1 = sc.nextInt();
			
			System.out.print("To x: ");
			int x2 = sc.nextInt();
			
			System.out.print("To y: ");
			int y2 = sc.nextInt();
			
			//Fill area
			for(int x = x1; x <= x2; x++){
				for(int y = y1; y <= y2; y++){
					canvas[x][y] = 'X';
				}
			}
			
			// Print Canvas 
			System.out.println("Your area has been filled!");
			for(int i = 0; i < size;i++){
				for(int j = 0; j < size; j++){
					System.out.print(canvas[i][j] + " ");
				}
				System.out.println();
			}
		}
		
		//Clear Canvas
		if(choice == 3){
			//Replace all elements with '_'
			for(int i = 0; i < size;i++){
				for(int j = 0; j < size; j++){
					canvas[i][j] = '_';
				}
			}
			
			//Print Canvas
			System.out.println("Your canvas has been cleared!");
			for(int i = 0; i < size;i++){
				for(int j = 0; j < size; j++){
					System.out.print(canvas[i][j] + " ");
				}
				System.out.println();
			}
		}
		
		//Exit Program 
		if(choice == 4){
			System.out.println("Thanks for using The Urban Canvas!");
			System.exit(0);
		}
		
		//Close Scanner Object
		sc.close();
	}
}