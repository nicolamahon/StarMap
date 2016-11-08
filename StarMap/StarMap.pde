// Name: Nicola Mahon
// Student No: C15755031

void setup()
{
  size(800, 800);
  loadData();
  //printStars();
  //noLoop();
}

// arrayList
ArrayList<Star> data = new ArrayList<Star>();

void loadData()
{
  data.clear();

  Table t = loadTable("HabHYG15ly.csv", "header");
  for (int i = 0; i < t.getRowCount(); i ++)
  {
    TableRow row = t.getRow(i);
    Star star = new Star(row);
    data.add(star);
  }
}

void printStars()
{
 for(int i=0; i<data.size(); i++)
  {
     Star s = data.get(i);
     println(s);
  } 
}

int border = 50;
int parsecs = 10;

void draw()
{
  background(0);
  strokeWeight(3);
  stroke(255, 0, 255);
  
  for(int i=border; i<width; i+=(width-(2*border))/parsecs)
  {   
    line(i, border, i, height-border);
    line(border, i, width-border, i);
  }
  
  
}