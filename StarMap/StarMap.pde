// Name: Nicola Mahon
// Student No: C15755031

void setup()
{
  size(800, 800);
  loadData();
  //printStars();
  calcMinMaxXg();
  calcMinMaxYg();
  plotStars();
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

void calcMinMaxXg()
{
  minXg = maxXg = data.get(13).Xg; 
  for (Star s : data)
  {
    if (s.Xg < minXg)
    {
      minXg = s.Xg;
    }
    if (s.Xg > maxXg)
    {
      maxXg = s.Xg;
    }
  }
}

void calcMinMaxYg()
{
  minYg = maxYg = data.get(14).Yg; 
  for (Star s : data)
  {
    if (s.Yg < minYg)
    {
      minYg = s.Yg;
    }
    if (s.Yg > maxYg)
    {
      maxYg = s.Yg;
    }
  }
}

void plotStars()
{
  for(int i=0; i<data.size(); i++)
  {
    //Star s = data.get(i);
    float sx = map(data.get(i).Xg, minXg, maxXg, 0, tableSize);
    float sy = map(data.get(i).Yg, minYg, maxYg, 0, tableSize);
    stroke(0, 0, 0);
    point(sx, sy);
    
   
    
  }
}


int border = 50;
int parsecs = 10;
int tableSize = width-(2*border);
float minXg, maxXg, minYg, maxYg;


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