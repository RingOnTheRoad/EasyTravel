import router from '@ohos.router'
@Entry
@Component
export default struct userDetail {
  build() {
    Column(){
      Stack(){
        Text($r('app.string.clickToLogin'))
          .fontWeight(FontWeight.Bold)
          .zIndex(1)
        Image($r('app.media.ic_user_portrait'))
          .width(100)
          .interpolation(ImageInterpolation.High)
      }
      .margin(20)
      .onClick(()=>{
        router.pushUrl({
          url: 'pages/LoginPage'
        })
      })
      Row({space:55}){
        Column(){
          Image($r('app.media.ic_public_cards'))
            .width(60)
            .interpolation(ImageInterpolation.High)
          Text($r('app.string.coupons'))
            .fontSize(20)
        }
        Column(){
          Image($r('app.media.ic_contacts_organ_donors'))
            .width(60)
            .interpolation(ImageInterpolation.High)
          Text($r('app.string.discount'))
            .fontSize(20)
        }
        Column(){
          Image($r('app.media.ic_public_notes'))
            .width(60)
            .interpolation(ImageInterpolation.High)
          Text($r('app.string.shoppingCart'))
            .fontSize(20)
        }
      }
      .margin(10)
      List({space:10}){
        ForEach(this.detailTextList,(text,index)=>{
          ListItem(){
            Row(){
              Image(this.detailImgList[index])
                .width(20)
              Text(text)
            }
          }
          .card()
        })
      }
      .width('100%')
      .height(100)
      .layoutWeight(1)
      .margin({top:30})
    }
    .width('100%')
    .height('100%')
    .justifyContent(FlexAlign.Center)
  }
  private detailTextList = ['我的订单','我的口令','我的收藏','我的锦囊','我的设置','安全中心']
  private ic_public_view_grid:Resource = $r('app.media.ic_public_view_grid')
  private ic_public_history:Resource = $r('app.media.ic_public_history')
  private ic_public_favor:Resource = $r('app.media.ic_public_favor')
  private ic_public_navigation:Resource = $r('app.media.ic_public_navigation')
  private ic_public_settings:Resource = $r('app.media.ic_public_settings')
  private ic_public_security:Resource = $r('app.media.ic_public_security')
  private detailImgList = [this.ic_public_view_grid,this.ic_public_history,
  this.ic_public_favor, this.ic_public_navigation,this.ic_public_settings,
  this.ic_public_security]
}

@Styles function card() {
  .width('100%')
  .padding(20)
  .backgroundColor(Color.White)
  .borderRadius(15)
  .shadow({radius: 200, color: '#1F000000', offsetX: 2, offsetY: 2})
}