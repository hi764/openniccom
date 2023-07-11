return function (XylonInfo)
	local ver = "1.0"
	print(XylonInfo.ProductName.. " is powered by Xylon, a whitelist owned by Niccom Solutions.")
	local MarketPlaceService = game:GetService("MarketplaceService")
	local GamepassCheck = MarketPlaceService:UserOwnsGamePassAsync(XylonInfo.GameOwner, XylonInfo.GamepassID)
	if GamepassCheck then
		print("[Xylon] License found for: "..XylonInfo.ProductName.. " ("..XylonInfo.GamepassID..")")
		return true
	end
	print("[Xylon] You don't have a license for: "..XylonInfo.ProductName.. " ("..XylonInfo.GamepassID..")")
	return false
end
