
void getInput(String msg) {
  try
  {
    println(msg);
    value = Integer.parseInt(msg.replaceAll("(\\r|\\n)", ""));
    average = 0;
    for(int i=numSample - 1; i>0; i--){
      values[i] = values[i-1];
      average += values[i];
    }
    values[0] = value;
    average += value;
    average /= numSample;
  }
  catch(NumberFormatException e)
  {
    //println(e.getMessage());
  }
  catch(NullPointerException e)
  {
    //println(e.getMessage());
  }
}