class Airport
{
  String code;
  String city;
  String state;
  int wac;
  
  Airport(String code, String city, String state, int wac)
  {
    setCode(code);
    this.city = city;
    setState(state);
    this.wac = wac;
  }
  
  
  void setCode(String code)
  {
    if(code.length() == 3)
    {
      this.code = code;  
    }
    
  }
  void setCity()
  {
  
  }
  
  void setState(String state)
  {
    if(state.length() == 2)
    {
      this.state = state;
    }
  }
  
  void setWac(int wac)
  {
    if(wac < 100 && wac > 0)
    {
      this.wac = wac;
    }
  }
}
