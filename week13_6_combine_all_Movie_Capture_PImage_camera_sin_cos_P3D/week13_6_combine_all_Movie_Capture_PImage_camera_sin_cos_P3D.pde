//week13_6_combine_all_Movie_Capture_PImage_camera_sin_cos_P3D
//all
import processing.video.*;
Movie movie; 
PImage img;
void setup(){
  size(400, 400, P3D);
  movie = new Movie(this, "street.mov"); //720x480
  movie.loop();//循環播放
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
  video = new Capture(this, 640, 480);
  video.start(); //要記得開始撥放
}
Capture video; //有鏡頭在加他
void draw(){
  camera(200, 200, 200, 200+cos(radians(frameCount)), 200, 200 + sin(radians(frameCount)), 0, 1, 0);
  background(128);
  if(movie.available()) movie.read();
  beginShape(); //正前方
  vertex(0, 0, 0, 0, 0);//x, y, z, u, v
  vertex(400, 0, 0, 1, 0);
  vertex(400, 400, 0, 1, 1);
  vertex(0, 400, 0, 0, 1);
  endShape();
  translate(0, 0, 1);
  image(movie, 0, 0, 360, 240); //放影片,用2D的放圖方法
  if(movie.available()) video.read(); //有畫面就讀入畫面
  beginShape(); //左方直接放視訊畫面
  texture(video); //把視訊 當成是一面牆的貼圖
  vertex(0, 0, 0, 0, 0);//x, y, z, u, v
  vertex(0, 400, 0, 1, 0);
  vertex(0, 400, 400, 1, 1);
  vertex(0, 0, 400, 0, 1);
  endShape(); 
}
