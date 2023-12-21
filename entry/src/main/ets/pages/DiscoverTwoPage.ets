@Entry
@Component
export default struct partTwo {
  build() {
    Column(){
      Line()
        .width('100%')
        .height(20)
        .startPoint([10,10])
        .endPoint([395,10])
        .stroke(Color.Black)
      Row({space:45}){
          Row({space:5}){
            Image($r('app.media.C1'))
              .width(30)
            Column(){
              Text($r('app.string.togetherGo'))
                .fontSize(15)
              Text($r('app.string.togetherGo'))
                .fontSize(10)
                .fontColor(Color.Gray)
          }
        }
          Row({ space: 5 }) {
            Image($r('app.media.C2'))
              .width(30)
            Column() {
              Text($r('app.string.travelTips'))
                .fontSize(15)
              Text($r('app.string.travelTips'))
                .fontSize(10)
                .fontColor(Color.Gray)
            }
          }
          Row({space:5}){
            Image($r('app.media.C3'))
              .width(30)
            Column(){
              Text($r('app.string.travelLive'))
                .fontSize(15)
              Text($r('app.string.travelLive'))
                .fontSize(10)
                .fontColor(Color.Gray)
            }
          }
      .width('100%')
      .height('100%')
      .layoutWeight(1)
      }
      .padding({left: 15, right: 15})
    }
    .height(50)
    .margin({bottom: 5})
  }
}