local api = require("api")


local library_addon = {
  name = "Library",
  author = "Multiple",
  desc = "Adds functions to the api",
  version = "0.2",
  library = true
}
--Attaching the addon library to the api
api._Library = {}
api._Library.UI = require("addonlibrary/ui/_components")
api._Library.Util = require("addonlibrary/util/_components")


return library_addon
