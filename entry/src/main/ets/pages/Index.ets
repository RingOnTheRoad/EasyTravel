import userDetail from './UserDetailPage'
import home from './HomePage'
import discover from './DiscoverPage'

@Entry
@Component
struct indexPage {
  build() {
    Tabs({barPosition:BarPosition.End, controller: this.tabsController}){
      TabContent(){
        home()
      }.tabBar(this.TabBuilder($r('app.string.NavigateHome'), 0, $r('app.media.ic_public_home_filled')))
      TabContent(){
        discover()
      }.tabBar(this.TabBuilder($r('app.string.NavigateDiscovery'), 1, $r('app.media.ic_gallery_discover')))
      TabContent(){
        userDetail()
      }.tabBar(this.TabBuilder($r('app.string.NavigateMine'), 2, $r('app.media.ic_public_contacts')))
    }
  }

  @State currentIndex: number = 0
  private tabsController: TabsController = new TabsController()

  @Builder TabBuilder(title: Resource, targetIndex: number, selectedImg: Resource){
    Column(){
      Image(selectedImg)
        .size({width:25, height:25})
      Text(title)
        .fontColor(this.currentIndex === targetIndex ? '#1698CE' : '#6B6B6B')
    }
    .width('100%')
    .height(50)
    .justifyContent(FlexAlign.Center)
    .onClick(()=>{
      this.currentIndex = targetIndex
      this.tabsController.changeIndex(this.currentIndex)
    })
  }
}

