local global = require "global"
local skynet = require "skynet"
local pfobj = import(service_path("perform/pfobj"))
local gamedefines = import(lualib_path("public.gamedefines"))

function NewCPerform(...)
    local o = CPerform:New(...)
    return o
end

--法术斗篷

CPerform = {}
CPerform.__index = CPerform
inherit(CPerform, pfobj.CPerform)

function CPerform:CalWarrior(oAction, oPerformMgr)
    local iPerform = self:Type()
    local func = function(oAttack, oVictim, oPerform)
        return OnCalDamaged(iPerform, oAttack, oVictim, oPerform)
    end
    oPerformMgr:AddFunction("OnCalDamaged", self.m_ID, func)
end

function OnCalDamaged(iPerform, oAttack, oVictim, oUsePerform)
    local oPerform = oVictim:GetPerform(iPerform)
    if not oPerform or not oUsePerform then return 0 end

    if oUsePerform:AttackType() == gamedefines.WAR_PERFORM_TYPE.MAGIC then
        local sExtArg = oPerform:ExtArg()
        local mEnv = oPerform:SkillFormulaEnv(oVictim, oAttack)
        local mExtArg = formula_string(sExtArg, mEnv)
        if math.random(100) <= mExtArg.ratio then
            return -mExtArg.sub_damage
        end
    end
    
    return 0
end


