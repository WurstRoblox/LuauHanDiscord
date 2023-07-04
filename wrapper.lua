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
	return Response.Body
end
function wrapper:s_send(wa,na,token)
	local Response = wrapper:request({
		Url = "https://discord.com/api/v10/channels/"..wa.."/messages",
		Method = "POST",
		Headers = {
			Authorization = "Bot "..shared["secr"..token.."et"],
			["Content-Type"] = "application/json"
		},
		Body = game.HttpService:JSONEncode({
			content = na
		})
	})
	return Response.Body
end
function wrapper:Connect(token,secretkey)
    shared["secr"..secretkey.."et"] = token
end
return wrapper
