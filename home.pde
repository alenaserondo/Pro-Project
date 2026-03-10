Table data;
Flights flights;

void setup()
{
  data = loadTable("data.csv", "header"); // if there is a header for us
}

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
    if (flights.late())
    {
       statusCol = color(#FFA30D); // orange
    }
    
    if (flights.cancelled())
    {
      statusCol = color(#FF0D0D); // red
    }
    
    fill(statusCol);
  }
  
  
}

//Delayed, cancelled (colour-coded) 
//Airport, airline, dates 
// go through and find flights between dates - section dates 

//row.getInt("CANCELLED");
//    this.date = row.getString("FL_DATE");
//    this.depTime = row.getString("");
//    this.schdepTime = row.getString("");
//    this.depTime = row.getString("");
