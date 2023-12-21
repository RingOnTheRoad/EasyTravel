@Entry
@Component
export default struct partThree {
  build() {
    Column({space: 5}){
      Text($r('app.string.travelPk'))
        .margin({top:10})
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
      Row({space: 5}){
        Stack(){
          Column(){
            Stack(){
              Column(){
                Text($r('app.string.liveText1'))
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bold)
                  .fontSize(20)
                Text(String(this.blueValue)+"%")
                  .width(50)
                  .margin({top:20})
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bolder)
                  .fontSize(20)
              }.zIndex(1)
              Image($r('app.media.america'))
                .width(150)
            }
            Progress({
              value: this.redValue,
              total: 100
            })
              .width(150)
              .backgroundColor(Color.Black)
          }
        }
        Text('VS')
        .fontWeight(FontWeight.Bolder)
        .fontSize(20)
        Stack(){
          Column(){
            Stack(){
              Column(){
                Text($r('app.string.liveText2'))
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bold)
                  .fontSize(20)
                Text(String(this.redValue)+"%")
                  .width(50)
                  .margin({top:20})
                  .fontColor(Color.White)
                  .fontWeight(FontWeight.Bolder)
                  .fontSize(20)
              }.zIndex(1)
              Image($r('app.media.japan'))
                .width(150)
            }
            Progress({
              value: this.blueValue,
              total: 100
            })
              .width(150)
              .backgroundColor(Color.Black)
          }
        }
      }
      Row({space: 105}){
        Button($r('app.string.support'))
          .onClick(()=>{
            this.blueValue++
            this.redValue--
          })
        Button($r('app.string.support'))
          .onClick(()=>{
            this.redValue++
            this.blueValue--
          })
      }
    }
    .width('100%')
    .height(250)
    .margin({top: 5,bottom: 10})
  }
  @State redValue: number = 30
  @State blueValue: number = 100 - this.redValue
}