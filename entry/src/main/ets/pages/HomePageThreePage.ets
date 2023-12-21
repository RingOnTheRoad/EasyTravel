@Entry
@Component
export default struct partThree {
  build() {
    Column({space: 12}){
      Line()
      .width('100%')
      .height(20)
      .startPoint([10,10])
      .endPoint([395,10])
      .stroke(Color.Black)
      Row({space:10}){
        Image($r('app.media.recommend'))
          .width(60)
          .padding({left: 10})
        Text($r('app.string.recommendText'))
          .fontSize(20)
          .padding({right: 80})
      }
      Row({space: 10}){
        Image($r('app.media.H1'))
          .width(180)
        .height(120)
        .borderRadius(15)
        Row({space: 10}){
          Image($r('app.media.S1'))
            .width(90)
            .borderRadius(15)
          Image($r('app.media.S2'))
            .width(90)
            .borderRadius(15)
        }
      }
      Image($r('app.media.L2'))
        .width('100%')
        .height(80)
        .padding({left:15, right: 15})
        .borderRadius(15)
      Row({space: 8}){
        Image($r('app.media.Live'))
          .width(50)
          .borderRadius(15)
        Text($r('app.string.liveText'))
          .fontSize(20)
      }
      Row({space: 20}){
        Stack(){
          Column(){
            Text($r('app.string.liveText1'))
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
              .fontSize(20)
            Image($r('app.media.playCircle'))
              .width(50)
              .margin({top:20})
          }.zIndex(1)
          Image($r('app.media.america'))
            .width(150)
            .borderRadius(15)
        }
        Stack(){
          Column(){
            Text($r('app.string.liveText2'))
              .fontColor(Color.White)
              .fontWeight(FontWeight.Bold)
              .fontSize(20)
            Image($r('app.media.playCircle'))
              .width(50)
              .margin({top:20})
          }.zIndex(1)
          Image($r('app.media.japan'))
            .width(150)
            .borderRadius(15)
        }
      }
      .margin({top:5})
    }
    .width('100%')
    .height('100%')
  }
}