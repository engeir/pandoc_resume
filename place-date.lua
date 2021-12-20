text = require 'text'
function Str (s)
    if s.text == "thedate" then
        s.text = os.date("%e %B %Y")
        -- s.text = text.upper(s.text)
    end
    if s.text == "myage" then
        age = tonumber(os.date("%Y")) - 1996
        s.text = age
    end
    return s
end
