//week14_8_inverse_kinematics_part6
//用簡單的線段,來解真的ID的運算
void setup(){
  size(400, 400);//先用2D 
  for(int i=0; i<6; i++){ //把頂點從下到上放好
    p[i] = new PVector(200, 350-50*i);
  }
}
PVector [] p = new PVector[6]; //有6個頂點
void draw(){
  background(255);
  for(int i=0; i<6; i++){ //用迴圈,畫點,畫字
    if(i>0) line(p[i-1].x, p[i-1].y, p[i].x, p[i].y);
    fill(255, 0, 0);//紅色的圈圈
    ellipse(p[i].x, p[i].y, 8, 8);
    fill(0);//黑色的字
    text("p:"+i, p[i].x+10, p[i].y); //字往右一點
  }
  PVector now = new PVector(mouseX, mouseY); //現在的位置
  for(int i=5; i>0; i--){
  PVector v = PVector.sub(now, p[i]).normalize().mult(50);//短向量
  //因為長度限制50,所以常項輛 先長度變成1在乘上50
  p[i].x = now.x -v.x;//新的位置,是中心,在加長度50的這小段
  p[i].y = now.y -v.y;//新的位置,是中心,在加長度50的這小段
  now = p[i];
  }
  ellipse(mouseX, mouseY, 6, 6);//滑鼠也有一個小點,要控制座標移動
  //line(p[4].x, p[4].y, mouseX, mouseY);
}
