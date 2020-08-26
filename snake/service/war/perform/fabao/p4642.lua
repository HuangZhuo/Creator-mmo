--import module

local global = require "global"
local skynet = require "skynet"
local pfobj = import(service_path("perform/fabao/fabaobase"))

function NewCPerform(...)
    local o = CPerform:New(...)
    return o
end

CPerform = {}
CPerform.__index = CPerform
inherit(CPerform, pfobj.CPerform)

function CPerform:GetTriggerRatio(oAttack)
    local sExtArg = self:ExtArg()
    local mEnv = self:SkillFormulaEnv(oAttack)
    local mExtArg = formula_string(sExtArg, mEnv)
    local iRatio = mExtArg.ratio or 0
    return iRatio
end