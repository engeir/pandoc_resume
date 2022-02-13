text = require 'text'
function Str (s)
    if s.text == "thedate" then
        s.text = os.date("%e %B %Y")
        -- s.text = text.upper(s.text)
    end
    if s.text == "myage" then
        reference = os.time{day=23, year=1996, month=5}
        daysfrom = os.difftime(os.time(), reference) / (24 * 60 * 60) -- seconds in a day
        wholeyears = math.floor(daysfrom / 365)
        age = tonumber(wholeyears)
        s.text = age
    end
    return s
end
