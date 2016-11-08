// Name: Nicola Mahon
// Student No: C15755031

void setup()
{
  size(800, 800);
  loadData();
  printStars();
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

void draw()
{
  
}