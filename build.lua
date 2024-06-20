

IDENT = true

VALID_MEASURES = { "%","vh","vw"}

PERCENT_TEXT = "percent"
HORIZONTAL_PAGE = "view-width"
VERTICAL_PAGE ="view-height"
SET_NAME ="set"
FOR_NAME ="for"
LIB_SEPARATOR = "-"
OUTPUT = "teste.css"
line_separator = ""
line_starter =""
if IDENT == true then
    line_separator = "\n"
    line_starter = "\t"
end

function generate_text_convension(measure)
    if measure == "vw" then
    	return HORIZONTAL_PAGE
    end
    if measure == "vh" then
    	return VERTICAL_PAGE
    end
    if measure == "%" then
        return PERCENT_TEXT
    end
    return measure
end


function create_element(
    measure_name,
    num,
    measure_value
)
    local text = "."..SET_NAME..LIB_SEPARATOR..num..LIB_SEPARATOR..generate_text_convension(measure_value)
    text = text..LIB_SEPARATOR..FOR_NAME..LIB_SEPARATOR..generate_text_convension(measure_name)
    text = text.."{"..line_separator
    text = text..line_starter..measure_name..":"..num..measure_value..";"..line_separator
    text = text..line_starter.."float:left"..line_separator
    text = text.."}"
    return text
end


function create_current_measure(measure_name,num)
	local text = ""
	for i=1,100 do
		text = text..line_separator..create_element(measure_name,i,num)
	end
	return text
end
function create_all_measures()
	local text = ""
	for i,v in ipairs(VALID_MEASURES) do
        text = text..create_current_measure("width",v)
	end
	for i,v in ipairs(VALID_MEASURES) do
        text = text..create_current_measure("height",v)
	end
	return text
end


local text = ".root{position: absolute;width: 100vw;height: 100vh;left: 0;top: 0;}"



local final =text..line_separator..create_all_measures()


io.open(OUTPUT,"w"):write(final)