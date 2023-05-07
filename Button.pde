class Button
{
  int gray, r, g, b;

  Button(int _gray)
  {
    gray = _gray;
  }

  Button(int _r, int _g, int _b)
  {
    r = _r;
    g = _g;
    b = _b;
  }

  void UpdateButtonWithGray()
  {
    background(128);
    fill(gray);
    AfterFill();
  }

  void UpdateButtonWithRGB()
  {
    background(128);
    fill(r, g, b);
    AfterFill();
  }

  void AfterFill()
  {
    rectMode(CENTER);
    rect(width/2, height/2, 200, 200);
    fill(0);
    font = loadFont("ExtraLight-48.vlw");
    textFont(font, 40);
    textAlign(CENTER, CENTER);
    if (finalAverageBpm == 0)
    {
      text("TAP", width/2, height/2);
    }
    else
    {
      text(finalAverageBpm, width/2, height/2);
    }
  }
}
