local wrapper = {
    request = syn and syn.request or http and http.request or http_request or fluxus and fluxus.request or getgenv().request or request
}
function wrapper:send(wa,na,token)
	local Response = wrapper:request({
		Url = "https://discord.com/api/v10/channels/"..wa.."/messages",
		Method = "POST",
		Headers = {
			Authorization = "Bot "..token,
			["Content-Type"] = "application/json"
		},
		Body = game.HttpService:JSONEncode({
			content = na
		})
	})
	return game.HttpService:JSONDecode(Response.Body)
end
return wrapper
