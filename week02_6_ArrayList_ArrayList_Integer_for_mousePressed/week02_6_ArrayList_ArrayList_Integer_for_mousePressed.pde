//week02_6_ArrayList_ArrayList_Integer_for_mousePressed
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
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){ //滑鼠按下去時,建新的資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
