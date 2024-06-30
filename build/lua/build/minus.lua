


---@param for_measure_name string
---@param percent_num number
---@param percent_measure Measure
---@param subtract_value number
---@param measure_to_subtract Measure
---@param media string | nil
---@return string
local function generate_minus_percent_for_element(
for_measure_name,
percent_num,
percent_measure,
subtract_value,
measure_to_subtract,
media)
    local text = "."..SET_NAME..LIB_SEPARATOR..percent_num..LIB_SEPARATOR..percent_measure.name
    text = text..LIB_SEPARATOR..SUCTRACT..LIB_SEPARATOR..subtract_value..LIB_SEPARATOR..measure_to_subtract.name
    text = text..LIB_SEPARATOR..FOR_NAME..LIB_SEPARATOR..for_measure_name
    if media then
       text = text..LIB_SEPARATOR..media
    end

    text =text.."{"..Line_separator

    text =text..Line_starter..for_measure_name..":"
    text = text.."calc("..percent_num.."%".." - "..subtract_value..measure_to_subtract.content..");"..Line_separator
    text = text..Line_starter.."float:left;"..Line_separator
    text = text.."}"
    return text
end


---@param for_measure_name string
---@param percent_num number
---@param percent_measure Measure
---@param measure_to_subtract Measure
---@param media string | nil
---@return string
local function generate_minus_percent_for_measure(
    for_measure_name,
    percent_num,
    percent_measure,
    measure_to_subtract,
    media
    )
    local text = ""
    for i=measure_to_subtract.start,measure_to_subtract.end_num do
    	text = text..Line_separator..generate_minus_percent_for_element(
            for_measure_name,
            percent_num,
            percent_measure,i * measure_to_subtract.multiplier,
            measure_to_subtract,media
    	)
    end
    if measure_to_subtract.specials == nil then
    	return text
    end
    local specials_size = get_table_size(measure_to_subtract.specials)
    for i=1,specials_size do
    	local current  = measure_to_subtract.specials[i]
        text = text..Line_separator..generate_minus_percent_for_element(
            for_measure_name,
            percent_num,
            percent_measure,current,
            measure_to_subtract,media
        )
    end

    return text
end

---@param media string  | nil
---@return string
 function Generate_all_minus_percent(media)
    local percent_measure = nil
    for i=1,Valid_measures_size do
    	local measure = VALID_MEASURES[i]
    	if measure.content == "%" then
    		percent_measure = measure
    	end
    end
    if percent_measure == nil then
    	return ""
    end
    local text = ""
    for i=1,Valid_measures_size do
        local measure = VALID_MEASURES[i]
        if measure.content ~= "%" then
            text = text..generate_minus_percent_for_measure(WIDTH_NAME,100,percent_measure,measure,media)
            text = text..generate_minus_percent_for_measure(WIDTH_NAME,50,percent_measure,measure,media)
            text = text..generate_minus_percent_for_measure(HEIGHT_NAME,100,percent_measure,measure,media)
            text = text..generate_minus_percent_for_measure(HEIGHT_NAME,50,percent_measure,measure,media)
        end
    end
    return text
end