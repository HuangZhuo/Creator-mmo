-- ./excel/buff/state.xlsx
return {

    [1001] = {
        desc = "装备耐久度为0时装备属性将失效，请尽快修理装备",
        flag = 0,
        icon = "h7_xiuli",
        id = 1001,
        isNeedBtn = 1,
        name = "修理装备",
        remainTime = "",
        replace = 0,
        state_formula = "",
        type = 0,
        weight = 1,
    },

    [1002] = {
        desc = "每隔一段时间可获得经验，有几率翻倍、获得银币",
        flag = 0,
        icon = "h7_tiaowu",
        id = 1002,
        isNeedBtn = 0,
        name = "舞动全城",
        remainTime = "剩余#次",
        replace = 0,
        state_formula = "",
        type = 0,
        weight = 2,
    },

    [1003] = {
        desc = "战斗结束时自动恢复人物、伙伴和宠物的气血和法力",
        flag = 0,
        icon = "h7_baoshi",
        id = 1003,
        isNeedBtn = 1,
        name = "饱食",
        remainTime = "剩余#场",
        replace = 0,
        state_formula = "",
        type = 0,
        weight = 3,
    },

    [1004] = {
        desc = "有双倍点数时伏魔可获得道具和双倍经验",
        flag = 0,
        icon = "h7_jingyan",
        id = 1004,
        isNeedBtn = 1,
        name = "双倍点数",
        remainTime = "剩余#点",
        replace = 0,
        state_formula = "",
        type = 1,
        weight = 4,
    },

    [1005] = {
        desc = "帮战保护时间",
        flag = 1,
        icon = "h7_jingyan",
        id = 1005,
        isNeedBtn = 1,
        name = "帮战保护",
        remainTime = "",
        replace = 0,
        state_formula = "",
        type = 0,
        weight = 5,
    },

    [1006] = {
        desc = "服务器等级较高，升级享受额外经验加成。",
        flag = 0,
        icon = "h7_fuwuqidengji",
        id = 1006,
        isNeedBtn = 0,
        name = "服务器加成",
        remainTime = "经验+#%",
        replace = 0,
        state_formula = "",
        type = 1,
        weight = 6,
    },

    [1007] = {
        desc = "带队伏魔经验增加30%；带队某些玩法经验增加10%",
        flag = 0,
        icon = "h7_duizhangjingyan",
        id = 1007,
        isNeedBtn = 0,
        name = "队长加成",
        remainTime = "",
        replace = 0,
        state_formula = "{fuben=(count-1)/4*10,jyfuben=(count-1)/4*10,fengyaowang=(count-1)/4*10}",
        type = 1,
        weight = 7,
    },

    [1008] = {
        desc = "画舫灯谜中不受无影脚的影响",
        flag = 2,
        icon = "h7_jingyan",
        id = 1008,
        isNeedBtn = 0,
        name = "画舫灯谜金钟罩",
        remainTime = "",
        replace = 0,
        state_formula = "",
        type = 0,
        weight = 8,
    },

    [1009] = {
        desc = "参加伏魔、镇妖额外获得30%经验",
        flag = 0,
        icon = "10101",
        id = 1009,
        isNeedBtn = 0,
        name = "恭喜发财",
        remainTime = "剩余#小时#分",
        replace = 3,
        state_formula = "{ghost=30, fengyao=30}",
        type = 0,
        weight = 9,
    },

    [1010] = {
        desc = "有效时间内，获得的人物经验增加10%，该效果不可叠加",
        flag = 0,
        icon = "10101",
        id = 1010,
        isNeedBtn = 0,
        name = "喜气洋洋",
        remainTime = "剩余#小时#分",
        replace = 1,
        state_formula = "{exp_ratio=10}",
        type = 1,
        weight = 10,
    },

    [1011] = {
        desc = "攻击力提升10%，防御力提升10%",
        flag = 0,
        icon = "10101",
        id = 1011,
        isNeedBtn = 0,
        name = "护卫加成",
        remainTime = "剩余#分",
        replace = 1,
        state_formula = "{attack_ratio=10,defense_ratio=10}",
        type = 0,
        weight = 11,
    },

}
