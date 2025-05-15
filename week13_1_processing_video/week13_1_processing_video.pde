//week13_1_processing_video
//Sketch - Library - manage libraries...安裝video
import processing.video.*; //Java使用外掛的匯入
//Capture video;//有視訊鏡頭的用這個版本
Movie movie;//沒有視訊鏡頭的用這個版本
void setup(){
  size(640,480); //常見的視訊
  //video = new Capture(this, 640, 480);
  //video.start(); //打開視訊
  movie = new Movie(this, "street.mov"); //讀檔案
  movie.loop();
}
void draw(){
  //if(video.available()) video.read();//若沒有視訊就註解掉
  //image(video, 0, 480);//若沒有視訊就註解掉
  if(movie.available()) movie.read();
  image(movie, 0, 0);
}
