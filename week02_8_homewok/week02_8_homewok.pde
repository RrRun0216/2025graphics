//week02_8_homeeork
//想要很多段,不要一筆畫一直接著畫
ArrayList<Integer> x, y;//先有兩個還沒準備好_ 的(小的)資料結構,等mousePresses再新增準備
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();//大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png");
}
void draw(){
  background(img);
  fill(255, 200); //半透明的色彩 白色,alpha值是128
  rect(0, 0, 400, 400);//畫超大的四邊形全部蓋住
  //上面02_4 下面02_3
  for(int I=0; I<xx.size(); I++){ //大寫I 對應大的資料結構
    ArrayList<Integer> x = xx.get(I); // 取出裡面小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i=1; i<x.size(); i++){ //小的,在照舊畫
    line(x.get(i), y.get(i), x.get(i-1), y.get(i-1));
    }
  }
  noFill();
  strokeWeight(5);
  draw1();
}
void keyPressed(){
  if(key=='s' || key=='S'){ //如果按下英文的大小寫s想存檔的話
  for(int I=0; I<xx.size(); I++){ //大寫I 對應大的資料結構
  ArrayList<Integer> x = xx.get(I); // 取出裡面小的資料結構
  ArrayList<Integer> y = yy.get(I);
  println("beginShape();");
  for(int i=1; i<x.size(); i++){ //小的,在照舊畫
    println(" vertex(" + x.get(i) + ", " + y.get(i) + ");" );
      }
      println("endShape();");
    }
  }
}
void mouseDragged(){
  //println("vertex(mouseX, mouseY);");
  //println("vertex(" + mouseX + ", " + mouseY + ");" );不要在這印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){ //滑鼠按下去時,建新的資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
void draw1(){
beginShape();
 vertex(147, 144);
 vertex(147, 145);
 vertex(147, 146);
 vertex(147, 147);
 vertex(147, 148);
 vertex(147, 149);
 vertex(147, 150);
 vertex(147, 151);
 vertex(146, 151);
 vertex(146, 152);
 vertex(145, 152);
 vertex(145, 153);
 vertex(144, 153);
 vertex(144, 154);
 vertex(143, 154);
 vertex(142, 154);
 vertex(141, 154);
 vertex(141, 155);
 vertex(140, 155);
 vertex(139, 155);
 vertex(139, 156);
 vertex(138, 156);
 vertex(137, 156);
 vertex(136, 156);
 vertex(135, 156);
 vertex(134, 156);
 vertex(133, 156);
 vertex(132, 156);
 vertex(132, 157);
 vertex(131, 157);
 vertex(130, 157);
 vertex(129, 157);
 vertex(128, 157);
 vertex(128, 156);
 vertex(128, 155);
 vertex(127, 154);
 vertex(127, 153);
 vertex(127, 152);
 vertex(127, 151);
 vertex(127, 150);
 vertex(127, 149);
 vertex(127, 148);
 vertex(127, 147);
 vertex(127, 146);
 vertex(127, 145);
 vertex(127, 144);
 vertex(128, 144);
 vertex(129, 144);
 vertex(129, 143);
 vertex(130, 143);
 vertex(130, 142);
 vertex(131, 142);
 vertex(132, 142);
 vertex(132, 141);
 vertex(133, 141);
 vertex(134, 141);
 vertex(135, 141);
 vertex(136, 141);
 vertex(136, 140);
 vertex(137, 140);
 vertex(138, 140);
 vertex(139, 140);
 vertex(139, 139);
 vertex(140, 139);
 vertex(141, 139);
 vertex(141, 140);
 vertex(142, 140);
 vertex(143, 140);
 vertex(144, 140);
 vertex(144, 141);
 vertex(144, 142);
 vertex(145, 142);
 vertex(145, 143);
 vertex(145, 144);
 vertex(146, 144);
 vertex(146, 145);
endShape();
beginShape();
 vertex(196, 144);
 vertex(195, 144);
 vertex(194, 144);
 vertex(194, 145);
 vertex(193, 145);
 vertex(193, 146);
 vertex(192, 146);
 vertex(191, 146);
 vertex(190, 146);
 vertex(189, 146);
 vertex(189, 147);
 vertex(188, 147);
 vertex(187, 147);
 vertex(186, 147);
 vertex(185, 147);
 vertex(185, 148);
 vertex(184, 148);
 vertex(183, 148);
 vertex(182, 148);
 vertex(181, 148);
 vertex(180, 148);
 vertex(179, 148);
 vertex(178, 148);
 vertex(177, 148);
 vertex(177, 149);
 vertex(176, 149);
 vertex(175, 149);
 vertex(175, 148);
 vertex(175, 147);
 vertex(174, 147);
 vertex(174, 146);
 vertex(174, 145);
 vertex(174, 144);
 vertex(175, 144);
 vertex(175, 143);
 vertex(176, 143);
 vertex(177, 143);
 vertex(177, 142);
 vertex(178, 142);
 vertex(179, 142);
 vertex(180, 142);
 vertex(180, 141);
 vertex(181, 141);
 vertex(182, 141);
 vertex(183, 141);
 vertex(184, 141);
 vertex(185, 141);
 vertex(186, 140);
 vertex(187, 140);
 vertex(188, 140);
 vertex(189, 140);
 vertex(190, 140);
 vertex(191, 140);
 vertex(192, 140);
 vertex(193, 140);
 vertex(194, 140);
 vertex(195, 140);
 vertex(196, 140);
 vertex(196, 141);
 vertex(196, 142);
 vertex(196, 143);
endShape();
beginShape();
 vertex(230, 132);
 vertex(230, 133);
 vertex(229, 133);
 vertex(229, 134);
 vertex(228, 134);
 vertex(228, 135);
 vertex(227, 135);
 vertex(227, 136);
 vertex(227, 137);
 vertex(226, 137);
 vertex(226, 138);
 vertex(225, 138);
 vertex(224, 138);
 vertex(223, 138);
 vertex(223, 139);
 vertex(222, 139);
 vertex(221, 139);
 vertex(220, 139);
 vertex(219, 139);
 vertex(218, 139);
 vertex(217, 139);
 vertex(216, 139);
 vertex(215, 139);
 vertex(214, 139);
 vertex(214, 138);
 vertex(213, 138);
 vertex(213, 137);
 vertex(212, 137);
 vertex(212, 136);
 vertex(212, 135);
 vertex(211, 135);
 vertex(211, 134);
 vertex(211, 133);
 vertex(210, 133);
 vertex(210, 132);
 vertex(209, 132);
 vertex(209, 131);
 vertex(209, 130);
 vertex(209, 129);
 vertex(209, 128);
 vertex(209, 127);
 vertex(209, 126);
 vertex(209, 125);
 vertex(210, 125);
 vertex(210, 124);
 vertex(211, 124);
 vertex(212, 124);
 vertex(212, 123);
 vertex(213, 123);
 vertex(214, 123);
 vertex(214, 122);
 vertex(215, 122);
 vertex(215, 121);
 vertex(216, 121);
 vertex(217, 121);
 vertex(217, 120);
 vertex(218, 120);
 vertex(219, 120);
 vertex(220, 120);
 vertex(221, 120);
 vertex(222, 120);
 vertex(222, 119);
 vertex(223, 119);
 vertex(224, 119);
 vertex(224, 120);
 vertex(225, 120);
 vertex(226, 120);
 vertex(226, 121);
 vertex(227, 121);
 vertex(227, 122);
 vertex(228, 122);
 vertex(228, 123);
 vertex(228, 124);
 vertex(229, 124);
 vertex(229, 125);
 vertex(229, 126);
 vertex(229, 127);
 vertex(229, 128);
 vertex(229, 129);
 vertex(229, 130);
endShape();
}
