--import module

local global = require "global"
local skynet = require "skynet"
local res = require "base.res"
local pfobj = import(service_path("perform/marry/marrybase"))
local gamedefines = import(lualib_path("public.gamedefines"))

function NewCPerform(...)
    local o = CPerform:New(...)
    return o
end

--情缘技能->相濡以沫

CPerform = {}
CPerform.__index = CPerform
inherit(CPerform, pfobj.CPerform)

function CPerform:GetLimitDegree()
    return 0
end
