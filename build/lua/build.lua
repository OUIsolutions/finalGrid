




local function generate_text_convension(measure)
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


local function create_element(
    measure_name,
    num,
    measure_value
)
    local text = "."..SET_NAME..LIB_SEPARATOR..num..LIB_SEPARATOR..generate_text_convension(measure_value)
    text = text..LIB_SEPARATOR..FOR_NAME..LIB_SEPARATOR..generate_text_convension(measure_name)
    text = text.."{"..Line_separator
    text = text..Line_starter..measure_name..":"..num..measure_value..";"..Line_separator
    text = text..Line_starter.."float:left"..Line_separator
    text = text.."}"
    return text
end


local function create_current_measure(measure_name,num)
	local text = ""
	for i=1,100 do
		text = text..Line_separator..create_element(measure_name,i,num)
	end
	return text
end

function Create_all_measures()
	local text = ""

	for i=1,Valid_measures_size do
	    local measure = VALID_MEASURES[i]
        text = text..create_current_measure("width",measure)
	end
	for i=1, Valid_measures_size do
        local measure = VALID_MEASURES[i]
        text = text..create_current_measure("height",measure)
	end

	return text
end



