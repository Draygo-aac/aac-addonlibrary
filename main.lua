local api = require("api")


local library_addon = {
  name = "Library",
  author = "Multiple",
  desc = "Adds functions to the api",
  version = "0.1",
  library = true
}
--Attaching the addon library to the api
api._Library = {}
api._Library.CreateCheckButton = require("addonlibrary/ui/check_button")
api._Library.CreateSlider = require("addonlibrary/ui/slider")
api._Library.PopupMenu = require("addonlibrary/ui/popup_menu")

-- call below methods directly in your addons. For now only call these methods in Load() or later

--Methods
--api._Library.CreateCheckButton(id, parent, text)
--api._Library.CreateSlider(id, parent)

--Popup Menu 
--	Note to create a popup menu call GetDefaultPopupInfoTable, add elements to that table then call ShowPopupMenu, call HidePopupMenu if you need to hide it


--api._Library.PopupMenu.GetDefaultPopupInfoTable()
--api._Library.PopupMenu.HidePopUpMenu(parent)
--api._Library.PopupMenu.ShowPopUpMenu(id, stickTo, infoTable, isChild, myAnchor, targetAnchor, offsetX, offsetY)
--api._Library.PopupMenu.CreateTooltipDrawable(wigit) -- creates background for the popup window
--api._Library.PopupMenu.SetViewOfPopupMenuFrame(id, parent) --probably dont need to call this

return library_addon
