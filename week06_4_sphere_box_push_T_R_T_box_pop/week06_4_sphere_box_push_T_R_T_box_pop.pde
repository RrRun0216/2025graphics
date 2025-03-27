//week06_4_sphere_box_push_T_R_T_box_pop
void setup(){
  size(500, 400, P3D);
}
void draw(){
  background(255);//step00
  translate(width/2, height/2);//step00
  sphere(10); //step 放圓球
  
  box(200, 50, 25); //step05手肘
  
  fill(252,131,77);
  pushMatrix(); //step03
  translate(x, y);//step06 發現放100, 0 很好
  if(mousePressed) rotateZ(radians(frameCount)); //step 03
    translate(25, 0, 0);//step02 往右推讓左端放中心
    box(50, 25, 50); //step01
  popMatrix(); //step03
}
float x = 0, y= 0;//step 06會動的位置
void mouseDragged(){//step06
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y); //step07 印出來
}
