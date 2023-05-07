IntList deltaFrameBetweenTwoClick = new IntList();
FloatList BPMs = new FloatList();
int finalAverageBpm;

Button initButton = new Button(200);
Button pressButton = new Button(250, 50, 100);

PFont font;

void setup()
{
  size(100, 100);
  background(128);
}

void draw()
{
  initButton.UpdateButtonWithGray();
}

void mouseClicked()
{
  deltaFrameBetweenTwoClick.append(frameCount);
  finalAverageBpm = CalculateBPM();
  println("frameCount: " + deltaFrameBetweenTwoClick.get(deltaFrameBetweenTwoClick.size() - 1));
  println("frameRate: " + frameRate);
  println("clickCount: " + BPMs.size());
  println("BPM: " + finalAverageBpm);
  println("\n");

  pressButton.UpdateButtonWithRGB();
}

int CalculateBPM()
{
  if (deltaFrameBetweenTwoClick.size() > 1)
    BPMs.append(frameRate * 60 / (deltaFrameBetweenTwoClick.get(deltaFrameBetweenTwoClick.size() - 1) - deltaFrameBetweenTwoClick.get(deltaFrameBetweenTwoClick.size() - 2)));

  float count = 0;
  for (int i = 0; i < BPMs.size(); i++)
  {
    count += BPMs.get(i);
  }
  return round(count / BPMs.size());
}
