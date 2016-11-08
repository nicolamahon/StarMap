// Name: Nicola Mahon
// Student No: C15755031

void setup()
{
  size(800, 800);
  loadData();
  printStars();
}

// global variables
int border = 50;
int parsecs = 10;
int tableSize = width-(2*border);
int minParsec = -5;
int maxParsec = 5; 

// arrayList
ArrayList<Star> data = new ArrayList<Star>();

// load data from file
void loadData()
{
  // clear data of any random leftovers
  data.clear();

  // load table row by row
  Table t = loadTable("HabHYG15ly.csv", "header");
  
  // add each star to the data arrayList
  for (int i = 0; i < t.getRowCount(); i ++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star(row);
    data.add(star);
  }
}

// print the values in the stars arrayList
void printStars()
{
 for(int i=0; i<data.size(); i++)
  {
     Star s = data.get(i);
     println(s);
  } 
}


// plot the stars from the data arrayList
void plotStars()
{
  for(int i=0; i<data.size(); i++)
  {
    // read a single star's data
    Star s = data.get(i);
    
    // map the stars co-ordinates onto values on the grid
    float sx = map(s.Xg, minParsec, maxParsec, 0, width);
    float sy = map(s.Yg, minParsec, maxParsec, 0, height);
    float size = s.AbsMag;
    
    // draw the stars
    strokeWeight(3);
    stroke(255, 0, 0);
    ellipse(sx, sy, size, size);
    
    // this function is incomplete, need to include X in centre of the ellipse
  }
}

// draw purple grid
void drawGrid()
{
  // line weight and colour
  strokeWeight(2);
  stroke(255, 0, 255);
  
  // draw lines 
  for(int i=border; i<width; i+=(width-(2*border))/parsecs)
  {   
    line(i, border, i, height-border);
    line(border, i, width-border, i);
  } 
}



// call draw function to draw grid and plot stars
void draw()
{
  background(0);
   drawGrid();
   plotStars();
}