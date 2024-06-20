

IDENT = true
PERCENT_TEXT = "percent"
PERCENT_SYMBOL = "%"
VH = "vh"
PX = "px"
VALID_MEASURES = {PERCENT_SYMBOL,VH,PX}

HORIZONTAL = "horizontal"
VERTICAL = "vertical"

LIB_SEPARATOR = "-"
OUTPUT = "teste.css"
line_separator = ""
line_starter =""
if IDENT == true then
    line_separator = "\n"
    line_starter = "\t"
end

function create_measure_text(measure)
    if measure == "width" then
    	return HORIZONTAL
    end
    if measure == "height" then
    	return VERTICAL
    end

    if measure == PERCENT_SYMBOL then
        return PERCENT_TEXT
    end
    return measure
end


function create_element(
    measure_name,
    num,
    measure_value
)
    local text = "."..create_measure_text(measure_name)..LIB_SEPARATOR
    text = text..num..LIB_SEPARATOR..create_measure_text(measure_value)
    text = text.."{"..line_separator
    text = text..line_starter..measure_name..":"..num..measure_value..";"..line_separator
    text = text..line_starter.."float:left"..line_separator
    text = text.."}"
    return text
end


function create_all_measures(measure_width,measure_height)
	local text = ""
	for i=1,100 do
		text = text..line_separator..create_element("width",i,measure_width)
	end
	for i=1,100 do
		text = text..line_separator..create_element("height",i,measure_height)
	end

	return text
end
local text = ".root{position: absolute;width: 100vw;height: 100vh;left: 0;top: 0;}"

local final =text..line_separator..create_all_measures("%","%")
io.open(OUTPUT,"w"):write(final)