if shared.SapeTag~=nil then return end;
shared.SapeTag=true;
local a=game:GetService("Players")
local b=a.LocalPlayer;
local c=game:GetService("ReplicatedStorage")
local getconnections=getconnections or get_signal_cons;
local d=string.gsub;
local e=string.byte;
local f=string.reverse;
local g=string.upper;
local h=table.find;
local i=table.unpack;
local j=debug and debug.getupvalues;
local k=Color3.new;
local l=Color3.fromHex;
local m=nil;
task.spawn(function()
	pcall(function()m=loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/tag/main/list.lua"))()end)
	while task.wait(10)do pcall(function()m=loadstring(game:HttpGet("https://raw.githubusercontent.com/NTDCore/tag/main/list.lua"))()end)end end)
	local n=function(o)o=tostring(o)o=d(d(o,".",function(p)return e(p)end),".",function(q)return e(q)end)return"_"..f(o)end;
	if getconnections and getmetatable and j then 
		for q,p in pairs(getconnections(c.DefaultChatSystemChatEvents.OnNewMessage.OnClientEvent))do 
			if p.Function and#j(p.Function)>0 and type(j(p.Function)[1])=="table"and getmetatable(j(p.Function)[1])and getmetatable(j(p.Function)[1]).GetChannel then 
				local r=getmetatable(j(p.Function)[1]).GetChannel;getmetatable(j(p.Function)[1]).GetChannel=function(s,t)
					local u=r(s,t)if u and u.AddMessageToChannel then 
						local v=u.AddMessageToChannel;u.AddMessageToChannel=function(w,x)
							if x.FromSpeaker and a:FindFirstChild(tostring(x.FromSpeaker))then 
								local y=a:FindFirstChild(tostring(x.FromSpeaker))if m~=nil then for q,p in pairs(m)do if type(p[1])=="table"then if h(p[1],n(y.UserId))then 
									x.ExtraData={NameColor=y.Team==nil and k(0,1,1)or y.TeamColor.Color,Tags={i(x.ExtraData.Tags),{TagColor=p[2][2]~=nil and l("#"..p[2][2])or l("#FFFFFF"),TagText=g(p[2][1])}}}
								end 
							else 
								if p[1]==n(y.UserId)then 
									x.ExtraData={NameColor=y.Team==nil and k(0,1,1)or y.TeamColor.Color,Tags={i(x.ExtraData.Tags),{TagColor=p[2][2]~=nil and l("#"..p[2][2])or l("#FFFFFF"),TagText=g(p[2][1])}}}end end end end end;
									return v(w,x)end 
								end;
									return u 
								end 
							end 
						end 
					end
