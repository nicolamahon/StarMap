class Star
{
  int Hab;
  String DisplayName;
  float Distance;
  float Xg;
  float Yg; 
  float Zg;
  float AbsMag;
  
  Star(String line)
  {
    String[] fields = line.split(",");
    Hab = Integer.parseInt(fields[2]);
    DisplayName = fields[3];
    Distance = Float.parseFloat(fields[12]);
    Xg = Float.parseFloat(fields[13]);
    Yg = Float.parseFloat(fields[14]);
    Zg = Float.parseFloat(fields[15]);
    AbsMag = Float.parseFloat(fields[16]);
    
  }
  
  Star(TableRow row)
  {
    Hab = row.getInt(2);
    DisplayName = row.getString(3);
    Distance = row.getFloat(12);
    Xg = row.getFloat(13);
    Yg = row.getFloat(14);
    Zg = row.getFloat(15);
    AbsMag = row.getFloat(16);
       
  }
  
  // converts the object to a string so it can be printed
  String toString()
  {
    return Hab + "\t" + DisplayName + "\t" + Distance 
    + "\t" + Xg + "\t" + Yg + "\t" + Zg + "\t" + AbsMag;
  }
  
  

}