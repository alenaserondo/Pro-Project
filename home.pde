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
  int arrTime;
  int status;
  boolean cancelled;
 
  Flights(String airline, int status, String date, int depTime, int arrTime, int schDepTime)
  {
    this.status = status;
    this.date = date;
    this.depTime = depTime;
    this.schDepTime = schDepTime;
    this.depTime = depTime;
    this.airline = airline;
    this.arrTime = arrTime;
  }
  
  if (status == 1)
  {
    cancelled = true;
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
