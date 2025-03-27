//week06_5_push_T_box_push_T_R_T_box_pop
void setup(){
  size(500, 400, P3D);
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10);
  
  fill(252,131,77);
  pushMatrix();//step04 new一組
    translate(x, y);//step05 new轉動
    box(200, 50, 25);//step05 手肘
    pushMatrix();//step03
      translate(100, 0);//step01 把剛剛前一步發現的100, 0放好
      rotateZ(radians(frameCount)); //step02 只轉動
      translate(25, 0, 0);//往右推讓左端放中心
      box(50, 25, 50);//小手腕
    popMatrix();//step03 把程式往右縮排
  popMatrix();//step04 new一組
}
float x = 0, y= 0; //會動的位置
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y); 
}
