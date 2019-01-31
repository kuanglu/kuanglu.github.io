--
-- Created by IntelliJ IDEA.
-- User: Administrator
-- Date: 2019/1/11
-- Time: 16:13
-- To change this template use File | Settings | File Templates.
--
require "import"
import "android.widget.*"
import "android.content.*"
import "android.view.View"
activity.setSwipeBackEnable(false)
local layout = {
    LinearLayout,
    layout_width = "fill",
    layout_height = "fill",
    focusableInTouchMode = true,
    focusable = true,
    orientation = 1,
    fitsSystemWindows =true,
    {
        Button,
        id = "tv";
        textSize = "28sp",
        layout_width = "fill",
        layout_height = "wrap",
        text = "布局二   加个button",
        textColor = themColor,
    },
    {
        Button,
        id = "bt";
        textSize = "28sp",
        layout_width = "fill",
        layout_height = "wrap",
        text = "bt + onclick",
        textColor = themColor,
    },
    {
        Button,
        id = "bt0";
        textSize = "28sp",
        layout_width = "fill",
        layout_height = "wrap",
        text = "bt + onclick",
        textColor = themColor,
    }
}
local function get()
    local options = {
        url = 'http://app.yaredai.net/app/visa/visa_list',
    }
    LuaHttp.request(options, function(e, code, body)
        if e or code ~= 200 then return end
        --        tv.setText(body)
    end)
end
function onCreate(savedInstanceState)
    activity.setLightStatusBar()
    activity.setContentView(loadlayout(layout))
    --    activity.disableDrawer()
    bt.onClick = function()
        activity.toast("哈哈哈");
    end
    bt0.onClick = function()
        activity.toast("哈哈哈000");
    end
end
