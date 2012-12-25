---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font = "cure"

theme.bg_normal     = "#000000"
theme.bg_focus      = "#03B7F4"
theme.bg_urgent     = "#FF7777"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

theme.wibox_height = 20

theme.wallpaper_cmd = {"feh --bg-scale /home/vincent/images/wallpapers/starwars.jpg"}

theme.ip_addr = function(interface)
   local ip = io.popen("ip addr show ".. interface .." | grep 'inet '")
   local addr = ip:read("*a")
   ip:close()
   addr = string.match(addr, "%d+.%d+.%d+.%d+")
   if addr == nil then
      return ""
   else
      return addr
   end
end

theme.span = function(label, color) 
   return '<span color="'.. color ..'">' .. label .. '</span>'
end

theme.black = function(c) return theme.span(c, "#000000") end
theme.white = function(c) return theme.span(c, "#FFFFFF") end
theme.darkblue = function(c) return theme.span(c, "#0000AB") end
theme.blue = function(c) return theme.span(c, "#0000FF") end
theme.darkred = function(c) return theme.span(c, "#AB0000") end
theme.red = function(c) return theme.span(c, "#FF0000") end
theme.darkgreen = function(c) return theme.span(c, "#00AB00") end
theme.green = function(c) return theme.span(c, "#00FF00") end
theme.darkyellow = function(c) return theme.span(c, "#ABAB00") end
theme.yellow = function(c) return theme.span(c, "#FFFF00") end
theme.darklightblue = function(c) return theme.span(c, "#0387D4") end
theme.lightblue = function(c) return theme.span(c, "#03B7F4") end
theme.darkmagenta = function(c) return theme.span(c, "#AB00AB") end
theme.magenta = function(c) return theme.span(c, "#FF00FF") end

return theme
