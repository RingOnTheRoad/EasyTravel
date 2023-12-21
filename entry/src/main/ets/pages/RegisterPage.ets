import router from '@ohos.router'
@Entry
@Component
struct register {
  build() {
    Column(){
      Row({space:280}){
        Text($r('app.string.back'))
          .margin(20)
          .onClick(()=>{
            router.back()
          })
        Blank()
      }
      Text($r('app.string.RegisterText'))
        .fontSize(40)
        .fontWeight(FontWeight.Lighter)
        .padding(10)
      TextInput({placeholder:$r('app.string.LoginInput1')})
        .width('80%')
        .height(50)
        .margin(6)
        .type(InputType.PhoneNumber || InputType.Email)
      Row(){
        TextInput({placeholder:$r('app.string.RegisterInput')})
          .width(190)
          .margin(6)
          .height(50)
        Text($r('app.string.GetCode'))
          .fontColor('#1E90FF')
          .width(100)
          .padding(5)
      }
      .width('82%')
      Button($r('app.string.RegisterText'))
        .width('80%')
        .margin(10)
      Row(){
        Text($r('app.string.registerArg1'))
        Text($r('app.string.registerArg2'))
          .fontColor('#1E90FF')
      }
    }
    .width('100%')
    .height('100%')
  }
}