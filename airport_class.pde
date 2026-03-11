class Airport
{
  String code;
  String city;
  String state;
  int wac;
  
  Airport(String code, String city, String state, int wac)
  {
    setCode(code);
    setCity(city);
    setState(state);
    setWac(wac);
  }
  
  
  void setCode(String code)
  {
    if(code.length() == 3)
    {
      this.code = code;  
    }
    
  }
  void setCity(city)
  {
    this.city = city
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

