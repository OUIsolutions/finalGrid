



---@param measure string
---@return string
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

---@param for_measure_name string
---@param num number
---@param measure string
---@param media string
---@return string
local function create_element(
    for_measure_name,
    num,
    measure,
    media
)
    local text = "."..SET_NAME..LIB_SEPARATOR..num..LIB_SEPARATOR..generate_text_convension(measure)
    text = text..LIB_SEPARATOR..FOR_NAME..LIB_SEPARATOR..for_measure_name
    text = text..LIB_SEPARATOR..media
    text = text.."{"..Line_separator
    text = text..Line_starter..for_measure_name..":"..num..measure..";"..Line_separator
    text = text..Line_starter.."float:left"..Line_separator
    text = text.."}"
    return text
end

---@param for_measure_name string
---@param measure string
---@param media string
---@return string
local function create_current_measure(for_measure_name,measure,media)
	local text = ""
	for i=1,100 do
		text = text..Line_separator..create_element(for_measure_name,i,measure,media)
	end
	return text
end

---@param media string
---@return string
local function create_elements_measures(media)
	local text = ""

	for i=1,Valid_measures_size do
		local measure = VALID_MEASURES[i]
        text = text..create_current_measure(WIDTH_NAME,measure,media)
	end
	for i=1, Valid_measures_size do
		local measure = VALID_MEASURES[i]
        text = text..create_current_measure(HEIGHT_NAME,measure,media)
	end

	return text
end

function Create_css()
    local media_size = get_table_size(MEDIAS)
    local text = ""
    --create empty for all
    text  = text..create_elements_measures("")
    for i=1,media_size do
    	local current_media = MEDIAS[i]
    	text = text.."@media "..current_media.content.."{"..Line_separator
    	text = text..create_elements_measures(current_media.text)
    	text = text..Line_separator.."}"..Line_separator
    end
    return text
end



