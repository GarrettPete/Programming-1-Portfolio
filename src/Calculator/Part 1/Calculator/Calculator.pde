Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String ls, rs;
float ans; 
char op; 
boolean left, eq; 

void setup() {
  size(250, 325);
  ls = "0";
  rs = "0";
  ans = 0.0;
  op = ' ';
  left = true;
  eq = false;
  numButtons[0] = new Button(0, 275, 100, 50).asNumber(0);
  numButtons[1] = new Button(0, 225, 50, 50).asNumber(1);
  //numButtons[2] = new Button(50, 225, 50, 50).asNumber(2);
  //numButtons[3] = new Button(100, 225, 50, 50).asNumber(3);
  //numButtons[4] = new Button(0, 175, 50, 50).asNumber(5);
  //numButtons[5] = new Button(50, 175, 50, 50).asNumber(5);
  //numButtons[6] = new Button(100, 175, 50, 50).asNumber(6);
  //numButtons[7] = new Button(0, 125, 50, 50).asNumber(7);
  //numButtons[8] = new Button(50, 125, 50, 50).asNumber(8);
  //numButtons[9] = new Button(100, 125, 50, 50).asNumber(9);

  //opButtons[0] = new Button (150, 275, 50, 50).asOperator('=');
  //opButtons[1] = new Button (150, 225, 50, 50).asOperator('+');
  //opButtons[2] = new Button (150, 175, 50, 50).asOperator('-');
  //opButtons[3] = new Button (150, 125, 50, 50).asOperator('*');
  //opButtons[4] = new Button (150, 75, 50, 50).asOperator('/');
  //opButtons[5] = new Button (100, 75, 50, 50).asOperator('%');
  //opButtons[6] = new Button (50, 75, 50, 50).asOperator('±');
  //opButtons[7] = new Button (100, 275, 50, 50).asOperator('.');
  opButtons[8] = new Button (0, 75, 50, 50).asOperator('C');
  //opButtons[9] = new Button (200, 75, 50, 50).asOperator('s');
  //opButtons[10] = new Button (200, 125, 50, 50).asOperator('c');
  //opButtons[11] = new Button (200, 175, 50, 50).asOperator('t');
  //opButtons[12] = new Button (200, 225, 50, 50).asOperator('E');
  //opButtons[13] = new Button (200, 275, 50, 50).asOperator('e');
}

void draw() {
  background(222);
  for (int i=0; i<numButtons.length; i++) {
    //numButtons[i].display();
    //numButtons[i].over();
  //} 
  //for (int i=0; i<opButtons.length; i++) {
    //opButtons[i].display();
    //opButtons[i].over();
  //} 
  updateDisplay();
  }
}

void mouseReleased() {
  // 
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hov && left) {
      ls += numButtons[i].n;
    } else if (numButtons[i].hov && !left) {
      rs += numButtons[i].n;
    }
  }
}
 
void updateDisplay() {
  fill(236);
  noStroke();
  rect(0, 0, 250, 75);
  fill(236);
  stroke(0);
  rect(0, 0, 250, 75);
  fill(10);
  textSize(10);
  text("Eq: " + eq, 5, 10);
  text("left: " + left, 5, 20);
  text("Op: " + op, 5, 30);
  text("ls: " + ls, 60, 10); 
  text("rs: " + rs, 60, 20);
  text("Ans: " + (float)ans, 60, 30);
  textSize(33);
  fill(102);
  if (eq) {
    text((float)ans, 15, 70);
  } else {
    if (left) {
      text(ls, 10, 67);
    } else {
      text(rs, 10, 67);
    }
  }
  eq = false;
}