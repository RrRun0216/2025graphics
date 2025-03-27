//week06_7_push_RRT_many_TRT_inside_pop
void setup(){
  size(500, 800, P3D);//step00 放大視窗
}
void draw(){
  background(255);
  translate(width/2, height/2);
  sphere(10);//中心
  
  fill(252,131,77);
  pushMatrix();
    if(mousePressed && mouseButton==RIGHT) rotateY(radians(frameCount));//step03 右鍵旋轉
    if(mousePressed && mouseButton==RIGHT) rotateZ(radians(frameCount));//step02 右鍵旋轉
    translate(0, -100);//translate(x, y);//step01 要往上抬升 把關節到中心
    box(50, 200, 25);// 手臂
    pushMatrix();
      translate(0, -100); //step00 掛到手臂上觀察到0,-100
      //if(mousePressed) //step00 讓他一直轉
      rotateZ(radians(frameCount));
      translate(100, 0);
      box(200, 50, 25);//手肘
    
      pushMatrix();
        translate(100, 0);
        rotateZ(radians(frameCount));
        translate(25, 0, 0);
        box(50, 25, 50);//小手腕
      popMatrix();
    popMatrix();
  popMatrix();
}
float x = 0, y= 0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y); 
}
