local global = require "global"
local router = require "base.router"

function RemoveShowId(mRecord, mData)
    local oShowIdMgr = global.oShowIdMgr
    local oWorldMgr = global.oWorldMgr
    
    local iPid = mData.pid
    local iShowId = mData.show_id
    local iErrCode = 1
    local oProfile = oWorldMgr:GetProfile(iPid)

    if oProfile then
        if oShowIdMgr:RemoveShowIdAfterLoad(oProfile, iShowId) then
            local oMailMgr = global.oMailMgr
            local mMail, sMail = oMailMgr:GetMailInfo(5)
            oMailMgr:SendMail(0, sMail, iPid, mMail, 0)
            iErrCode = 0
        end
    end
    router.Response(mRecord.srcsk, mRecord.src, mRecord.session, {errcode = iErrCode})
end