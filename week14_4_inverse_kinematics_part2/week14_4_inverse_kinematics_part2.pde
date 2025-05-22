//week14_4_inverse_kinematics_part2
void setup(){
  size(400, 400);//先用2D 
}
float [] angle = new float[5];
void draw(){
  background(255);
  translate(width/2, height/2);//放下面一點
  ellipse(0, 0, 12, 12); //(0,0)放圓
  
  pushMatrix();
    rotate(radians(angle[0])); //2D對z軸轉
    rect(0, -5, 50, 10); //直的棒子
    pushMatrix();
    translate(50, 0); //2D移動往右
    rotate(radians(angle[1]));
    rect(0, -5, 50, 10); //直的棒子
    popMatrix();
  popMatrix();
}

void mouseDragged(){
  angle[ID] += mouseX - pmouseX;
}
int ID = 0;
void keyPressed(){
  if(key=='0') ID = 0;
  if(key=='1') ID = 1;
}
