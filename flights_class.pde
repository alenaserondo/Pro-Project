
// China Lynch, wrote flight class 10/3/26 2:30pm
class Flights  
{
  String date;
  String airline;
  int schDepTime;
  int depTime;
  int status;
  color statusCol; 
  //int arrTime;

 
  Flights(String airline, int status, String date, int depTime, int schDepTime)
  {
    this.status = status;
    this.date = date;
    this.depTime = depTime;
    this.schDepTime = schDepTime;
    this.airline = airline;
    //this.arrTime = arrTime;
  }
  
  // China, updated booleans to be boolean functions 10/3/26 7pm
  boolean cancelled()
  {
  if (status == 1)
    {
      return true;
    } else
    {
      return false;
    }
  }
  
  boolean late()
  {
    return (schDepTime == depTime);
  }
  
  void drawFlights()
  {
    // China, fixed colour setting loops to work with functions, 11/3/26 9pm
    if (late())
    {
       statusCol = color(#FFA30D); // orange
    }
    
    if (cancelled())
    {
      statusCol = color(#FF0D0D); // red
    }
    
    fill(statusCol);
  }
  
}
