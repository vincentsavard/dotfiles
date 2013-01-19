-- Low contrast theme

theme = {}

theme.font = "terminus 8"

theme.bg_normal     = "#191919"
theme.bg_focus      = "#5A89C4"
theme.bg_urgent     = "#D44A40"

theme.fg_normal     = "#CCCCCC"
theme.fg_focus      = "#FFFFFF"
theme.fg_urgent     = "#FFFFFF"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#535d6C"
theme.border_marked = "#91231C"

theme.wibox_height = 20

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
theme.darkgray = function(c) return theme.span(c, "#454545") end
theme.gray = function(c) return theme.span(c, "#727272") end
theme.darkblue = function(c) return theme.span(c, "#5A89C4") end
theme.blue = function(c) return theme.span(c, "#847FC4") end
theme.darkred = function(c) return theme.span(c, "#D44A40") end
theme.red = function(c) return theme.span(c, "#D4746A") end
theme.darkgreen = function(c) return theme.span(c, "#98CB3C") end
theme.green = function(c) return theme.span(c, "#AFCB66") end
theme.darkyellow = function(c) return theme.span(c, "#D4B63C") end
theme.yellow = function(c) return theme.span(c, "#D4BE66") end
theme.darklightblue = function(c) return theme.span(c, "#5ACBBE") end
theme.lightblue = function(c) return theme.span(c, "#84CBBE") end
theme.darkmagenta = function(c) return theme.span(c, "#904AC4") end
theme.magenta = function(c) return theme.span(c, "#A774C4") end

return theme
