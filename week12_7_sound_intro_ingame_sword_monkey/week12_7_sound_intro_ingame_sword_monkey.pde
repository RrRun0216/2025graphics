//week12_7_sound_intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame, sndIntro, sndMonkey, sndSword; //改一下變數名

void setup(){
  size(400, 400);
  sndInGame = new SoundFile(this, "In Game Music.mp3"); //改檔名
  sndIntro = new SoundFile(this, "Intro Song_Final.mp3"); //改檔名
  sndMonkey = new SoundFile(this, "Monkey 1.mp3"); //改檔名
  sndSword = new SoundFile(this, "sword slash.mp3"); //改檔名
  sndIntro.play();//播放
}
boolean playingIntro = true;
void keyPressed(){ //按下空白建,會進入遊戲音樂
  if(playingIntro){ //若在播開場簡介
    sndIntro.stop(); //開場簡介的音樂stop
    sndInGame.play(); //進入遊戲關卡的音樂play
    playingIntro = false;
  }else{ //若沒播開場簡介
    sndInGame.stop();
    sndIntro.play();
    playingIntro = true;
  }
}
void mousePressed(){
  if(mouseButton==LEFT) sndSword.play();
  if(mouseButton==RIGHT) sndMonkey.play();
}
void draw(){ //記得要有個空的draw()函式,才會持續更新,才會有聲音
  
}
