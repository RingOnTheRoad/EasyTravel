import partOne from './HomePratOnePage'
import partTwo from './HomePartTwoPage'
import partThree from './HomePageThreePage'

@Entry
@Component
export default struct home {
  build() {
    Column(){
      Row(){
        Column(){
          Image($r('app.media.ic_public_scan'))
            .width(30)
          Text($r('app.string.QRScan'))
            .fontSize(15)
        }
        Stack(){
          Image($r('app.media.ic_public_search'))
            .width(30)
            .margin(20)
          TextInput({placeholder:$r('app.string.searchMsg')})
            .width('70%')
            .margin({left:10, right: 10})
        }
        .alignContent(Alignment.End)
        Column(){
          Image($r('app.media.ic_gallery_create'))
            .width(30)
          Text($r('app.string.message'))
            .fontSize(15)
        }
      }
      Swiper(this.swiperController){
        Image($r('app.media.L1'))
          .width('100%')
          .height(100)
        Image($r('app.media.L2'))
          .width('100%')
          .height(100)
        Image($r('app.media.L3'))
          .width('100%')
          .height(100)
        Image($r('app.media.L4'))
          .width('100%')
          .height(100)
        Image($r('app.media.L5'))
          .width('100%')
          .height(100)
      }
    .loop(true)
    .autoPlay(true)
    .interval(3000)
    .indicatorStyle({
      size: 0
    })
    List(){
      ListItem(){
        partOne()
      }
      ListItem(){
        partTwo()
      }
      ListItem(){
        partThree()
      }
    }
    .width('100%')
    .height(100)
    .layoutWeight(1)
  }
  .width('100%')
  .height('100%')
  .justifyContent(FlexAlign.Center)
  }

  private swiperController: SwiperController = new SwiperController()
}