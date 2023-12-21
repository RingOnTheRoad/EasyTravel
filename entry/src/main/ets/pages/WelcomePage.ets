import router from '@ohos.router';

@Entry
@Component
struct welcome {
  onPageShow(){
    setTimeout(()=>{
      router.replaceUrl({
        url:"pages/Index"
      })
    },2000)
  }
  build() {
    Column(){
      Image($r('app.media.EasyTravelLogo'))
        .width(200)
        .padding(10)
        .interpolation(ImageInterpolation.High)
      Text($r('app.string.WelcomeText'))
        .fontSize(55)
        .fontWeight(FontWeight.Lighter)
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
}