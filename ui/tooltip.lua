local tooltipColor = {
    normal = {
    ConvertColor(209),
    ConvertColor(192),
    ConvertColor(172),
    1
    }
}

frameMargin = 10


function CreateTooltipDrawable(widget)
  local bg = widget:CreateNinePartDrawable(TEXTURE_PATH.HUD, "background")
  bg:AddAnchor("TOPLEFT", widget, 0, -7)
  bg:AddAnchor("BOTTOMRIGHT", widget, 0, -3)
  bg:SetCoords(733, 169, 14, 15)
  bg:SetInset(7, 7, 6, 7)
  widget.bg = bg
end

function CreateTooltip(id, widget, text)
	local w = api.Interface:CreateEmptyWindow(id, widget)
	w:SetTitleInset(0, frameMargin, 0, 0)
	CreateTooltipDrawable(w)
	local label = w:CreateChildWidget("label", "toolTip", 0, true)
	label:SetText(text)
	label.style:SetAlign(1)
	label:SetHeight(FONT_SIZE.LARGE + 14)
	label:SetWidth(label.style:GetTextWidth(text) + 14)
	label:AddAnchor("CENTER", w, 0, 2)
	ApplyTextColor(label, tooltipColor.normal)
	
	--label:Show(true)
	widget.tooltip = w

	w:Show(false)
	function widget:OnEnter()
		self.tooltip:Show(true)
	end
	widget:SetHandler("OnEnter", widget.OnEnter)

	function widget:OnLeave()
		self.tooltip:Show(false)
	end
	widget:SetHandler("OnLeave", widget.OnLeave)
	w:SetExtent(label:GetWidth()+ 2, label:GetHeight() + 2)
	w:AddAnchor("BOTTOM", widget, "TOP", 0, 5)
end

return CreateTooltip