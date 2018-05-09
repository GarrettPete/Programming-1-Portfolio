class Button {
  int x, y, w, h, n; //Member variables
  char a;
  boolean hov, num; //Hover

  //Constructor
  Button(int x, int y, int w, int h) {    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  Button asNumber(int n) {
    num = true;
    this.n = n;
    return this;
  }

  Button asOperator(char a) {
    num = false;
    this.a = a;
    return this;
  }

  void display() {
    fill(180, 180, 180, 80);
    noStroke();
    rect(x+50, y+50, w, h);
    if (hov) {
      fill(235, 255, 253);
    } else {
      fill(201);
    }
    stroke(0);
    rect(x, y, w, h);
    fill(0);
    textSize(20);
    if (num) {
      text(n, x+19, y+h-15);
    } else {
      if (a == '±') {
        text("+/-", x+6, y+h-17);
      } else if (a == '/') {
        text("÷", x+15, y+h-17);
      } else if (a == 's') {
        text("sin", x+9, y+h-17);
      } else if (a == 'c') {
        text("cos", x+9, y+h-17);
      } else if (a == 't') {
        text("tan", x+9, y+h-17);
      } else if (a == 'E') {
        text("EE", x+15, y+h-17);
      } else {
        text(a, x+19, y+h-17);
      }
    }
  }

  void over() {
    hov = mouseX>x && mouseX<x+w && mouseY>y && mouseY<y+h;
  }
}