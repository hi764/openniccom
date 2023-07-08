local WatsonInfo = {
	GameOwner = nil,
	GamepassID = 11111,
	CompanyName = "Something",
	ProductName = "Something",
}
if game.CreatorType == Enum.CreatorType.Group then
	WatsonInfo.GameOwner = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id
else
	WatsonInfo.GameOwner = game.CreatorId
end

local Watson = require(13994083081)(WatsonInfo)
if Watson then
	-- User have a license
else
	-- User don't have a license
end
