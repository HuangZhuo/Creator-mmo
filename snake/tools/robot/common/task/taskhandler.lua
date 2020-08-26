local taskhandler = {}
local tprint = require('extend').Table.print
local oTaskMgr = require("common/task/taskmgr")


taskhandler.GS2CLoginTask = function(self,mArgs)
    if not self.m_oTaskMgr then
        self.m_oTaskMgr = oTaskMgr:New(self)
        self.m_oTaskMgr:Init()
    end

	self.m_oTaskMgr:InitTaskInfoOnLogin(mArgs.taskdata)
	self:fork(function()
		    while 1 do
		    	self:sleep(5)
		    	self.m_oTaskMgr:RandomDoTaskEvent()
		    end
		end)
	
    end

taskhandler.GS2CAddTask =function(self,mArgs)
	if mArgs.taskdata and  mArgs.taskdata.taskid then
	    self.m_oTaskMgr:AddTask(mArgs.taskdata) 
	end
    end

taskhandler.GS2CDelTask = function(self,mArgs)
	self.m_oTaskMgr:DelTask(mArgs)
    end

taskhandler.GS2CDialog = function(self,mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2CDialog",mArgs)
    end

taskhandler.GS2CNpcSay = function(self,mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2CNpcSay",mArgs)
    end
taskhandler.GS2CShowWar = function(self,mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2CShowWar",mArgs)
    end

taskhandler.GS2COpenShop = function(self,mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2COpenShop",mArgs)
    end

taskhandler.GS2CSendCatalog = function(self, mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2CSendCatalog",mArgs)
end

taskhandler.GS2CPopTaskItem = function(self, mArgs)
	self.m_oTaskMgr:TriggerEventByProto("GS2CPopTaskItem",mArgs)
end
return taskhandler
