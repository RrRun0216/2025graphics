//week02_7_keyPressed_if_key_s_for_for_println_vertex_beginShape_endShape
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
