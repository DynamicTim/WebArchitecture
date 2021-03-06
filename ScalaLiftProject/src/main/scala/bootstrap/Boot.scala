package bootstrap

import net.liftweb.http.{Html5Properties, LiftRules, Req}
import net.liftweb.sitemap.{Menu, SiteMap}

class Boot {
  def boot {
    LiftRules.addToPackages("com.fisherjake.fishies")

    def sitemap(): SiteMap = SiteMap(
      Menu.i("Home") / "index"
    )

    LiftRules.htmlProperties.default.set((r: Req) =>
      new Html5Properties(r.userAgent))
  }
}
