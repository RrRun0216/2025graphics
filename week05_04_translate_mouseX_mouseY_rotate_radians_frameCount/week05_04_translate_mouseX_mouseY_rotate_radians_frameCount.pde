  //week05_04_translate_mouseX_mouseY_rotate_radians_frameCount
  //比較rotate與translate的順序
  void setup(){
    size(400, 400);
  }
  void draw() {
    background(204);
    //請做以下測試 : 把下面兩行，調一下順序
    //會發現:畫東西之前的translate()才有效果
    //在電腦圖學理,畫圖時會照著之前累積的移動、來放東西
    translate(mouseX, mouseY);//移到mouse所在位置
    rotate(radians(frameCount));//1秒60個frame, 轉60度,要變radians單位
    rect(-50, -5, 100, 10); //寬度100的棒子,但放在左下角
  }
