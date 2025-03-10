module = {}

module.CreateCheckButton = require("addonlibrary/ui/check_button")
module.CreateSlider = require("addonlibrary/ui/slider")
module.PopupMenu = require("addonlibrary/ui/popup_menu")


-- call below methods directly in your addons. For now only call these methods in Load() or later

--Methods
--api._Library.UI.CreateCheckButton(id, parent, text)
--api._Library.UI.CreateSlider(id, parent)

--Popup Menu 
--	Note to create a popup menu call GetDefaultPopupInfoTable, add elements to that table then call ShowPopupMenu, call HidePopupMenu if you need to hide it
-- currently creating submenus, radials or checkboxes is not supported

--api._Library.UI.PopupMenu.GetDefaultPopupInfoTable()
--api._Library.UI.PopupMenu.HidePopUpMenu(parent)
--api._Library.UI.PopupMenu.ShowPopUpMenu(id, stickTo, infoTable, isChild, myAnchor, targetAnchor, offsetX, offsetY)
--api._Library.UI.PopupMenu.CreateTooltipDrawable(wigit) -- creates background for the popup window
--api._Library.UI.PopupMenu.SetViewOfPopupMenuFrame(id, parent) --probably dont need to call this


return module