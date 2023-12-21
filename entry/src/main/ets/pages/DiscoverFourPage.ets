@Entry
@Component
export default struct partFour {
  build() {
    Column({space: 5}){
      Text($r('app.string.hotTop'))
        .margin({top:10})
        .fontSize(25)
        .fontWeight(FontWeight.Bold)
      Line()
        .width('100%')
        .height(20)
        .startPoint([10,10])
        .endPoint([395,10])
        .stroke(Color.Black)
      List({space: 20}){
        ForEach(this.titleList,(title,index)=>{
          ListItem(){
            Row({space:20}){
              Column({space:10}){
                Text(title)
                Row({space: 10}){
                  Text("源自:"+this.originList[index])
                    .fontSize(10)
                    .fontColor(Color.Gray)
                  Row({space:5}){
                    Row(){
                      Image($r('app.media.eyes'))
                        .width(10)
                      Text(this.viewList[index])
                        .fontSize(10)
                        .fontColor(Color.Gray)
                    }
                    Row(){
                      Image($r('app.media.like'))
                        .width(10)
                      Text(this.likeList[index])
                        .fontSize(10)
                        .fontColor(Color.Gray)
                    }
                  }
                }
              }
              .width('80%')
              Image($r('app.media.nullPng'))
                .width(50)
            }
          }
          .card()
        })
      }
      .width('100%')
      .height(100)
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }

  private titleList = ['看“银发族”如何撬动旅游大市场','冰雪+温泉+洗浴点燃冬季旅游市场',
    '浙江文化和旅游冬季消费季启动','全联旅游业商会康养文旅产业分会成立大会在京召开',
  '广西提速建设桂林世界级旅游城市']
  private originList = ['新浪微博','央广网','环球网','新华网','央广网']
  private viewList = ['18343','23264','2512','621','12532']
  private likeList = ['2321','3265','531','12','8121']
}

@Styles function card() {
  .width('100%')
  .padding(20)
  .backgroundColor(Color.White)
  .borderRadius(15)
  .shadow({radius: 20, color: '#1F000000', offsetX: 2, offsetY: 2})
}