local global = require "global"
local skynet = require "skynet"
local interactive =  require "base.interactive"

local itembase = import(service_path("item/itembase"))

CItem = {}
CItem.__index = CItem
inherit(CItem,itembase.CItem)
CItem.m_ItemType = "summskill"

function NewItem(sid)
    local o = CItem:New(sid)
    return o
end

function CItem:GetSummonSkill()
    local skid = self:GetItemData()["skid"]
    return skid
end