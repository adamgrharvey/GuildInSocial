-- Init new tab
local FriendsFrameTabGuild = CreateFrame("Button", "FriendsFrameTabGuild", FriendsFrameTab3, "FriendsFrameTabTemplate", 4)
FriendsFrameTabGuild:SetPoint("LEFT", FriendsFrameTab3, "RIGHT", -14, 0)
PanelTemplates_TabResize(FriendsFrameTabGuild, 0, nil)

-- "Guild" button text
local guildText = FriendsFrameTabGuild:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
guildText:SetPoint("CENTER", 0, 2)
guildText:SetText("Guild")

-- Hide extraneous frame template elements
for _, element in pairs({"MiddleDisabled", "LeftDisabled", "RightDisabled"}) do
    _G["FriendsFrameTabGuild" .. element]:Hide()
end

-- Handlers
FriendsFrameTabGuild:SetScript("OnClick", function()
    ToggleFriendsFrame()
    ToggleGuildFrame()
end)

FriendsFrameTabGuild:SetScript("OnEnter", function()
	guildText:SetFontObject("GameFontHighlightSmall")
end)

FriendsFrameTabGuild:SetScript("OnLeave", function()
    guildText:SetFontObject("GameFontNormalSmall")
end)
