import partOne from './DiscoverPartOnePage'
import partTwo from './DiscoverTwoPage'
import partThree from './DiscoverThreePage'
import partFour from './DiscoverFourPage'

@Entry
@Component
export default struct discover {
  build() {
    Column(){
      Text($r('app.string.NavigateDiscovery'))
      .margin({top:15})
      .fontSize(25)
      .fontWeight(FontWeight.Bold)
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
        ListItem(){
          partFour()
        }
      }
      .width('100%')
      .height('100%')
    }
  }
}