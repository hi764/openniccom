return function (WatsonInfo)
	local ver = "1.0"
	print(WatsonInfo.CompanyName.. " is powered by OpenWatson "..ver.." (https://github.com/kzx1337/openwatson)")
	local MarketPlaceService = game:GetService("MarketplaceService")
	local GamepassCheck = MarketPlaceService:UserOwnsGamePassAsync(WatsonInfo.GameOwner, WatsonInfo.GamepassID)
	if GamepassCheck then
		print("[OpenWatson] License found for: "..WatsonInfo.ProductName.. " ("..WatsonInfo.GamepassID..")")
		return true
	end
	print("[OpenWatson] You don't have a license for: "..WatsonInfo.ProductName.. " ("..WatsonInfo.GamepassID..")")
	return false
end
