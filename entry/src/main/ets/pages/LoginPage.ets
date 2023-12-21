import router from '@ohos.router'

@Entry
@Component
struct login {
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
      Text($r('app.string.LoginText'))
        .fontSize(40)
        .fontWeight(FontWeight.Lighter)
        .padding(10)
      TextInput({placeholder:$r('app.string.LoginInput1')})
        .width('80%')
        .height(50)
        .margin(6)
        .type(InputType.PhoneNumber || InputType.Email)
      TextInput({placeholder:$r('app.string.LoginInput2')})
        .width('80%')
        .margin(6)
        .height(50)
        .type(InputType.Password)
      Button($r('app.string.LoginText'))
        .width('80%')
        .margin(10)
      Row(){
        Text($r('app.string.RetrievePwd'))
          .width('70%')
          .fontColor('#1E90FF')
        Text($r('app.string.RegisterText'))
          .fontColor('#1E90FF')
          .onClick(()=>{
            router.pushUrl({
              url: "pages/RegisterPage"
            })
          })
      }
    }
    .width('100%')
    .height('100%')
  }
}