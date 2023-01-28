class Timer{
  float time;
  
  boolean timeb;
  
  void startTime(float endTime){
    timeb=false;
    time++;
    if(time>=endTime){
      timeb=true;
      time=0;
    }
  }
  boolean checkTime(){
    if(timeb)return true;
    return false;
  }
}
