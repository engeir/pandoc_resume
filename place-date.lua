text = require 'text'
function Str (s)
    if s.text == "thedate" then
        s.text = os.date("%e %B %Y")
        -- s.text = text.upper(s.text)
    end
    return s
end
