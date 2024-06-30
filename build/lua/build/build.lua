




---@param for_measure_name string
---@param num number
---@param measure Measure
---@param media string |nil
---@return string
local function create_element(
    for_measure_name,
    num,
    measure,
    media
)

    local text = "."..SET_NAME..LIB_SEPARATOR..num..LIB_SEPARATOR..measure.name
    text = text..LIB_SEPARATOR..FOR_NAME..LIB_SEPARATOR..for_measure_name

    if media then
        text = text..LIB_SEPARATOR..media
    end

    text =text.."{"..Line_separator
    text = text..Line_starter..for_measure_name..":"..num..measure.content..";"..Line_separator
    text = text..Line_starter.."float:left;"..Line_separator

    text = text.."}"
    return text
end


---@param for_measure_name string
---@param measure Measure
---@param media string  | nil
---@return string
local function create_current_measure(for_measure_name,measure,media)
	local text = ""
	for i=measure.start,measure.end_num do
		text = text..Line_separator..create_element(for_measure_name,i * measure.multiplier,measure,media)
	end
    if measure.specials == nil then
    	return text
    end
    local specials_size = get_table_size(measure.specials)
    for i=1,specials_size do
    	local current  = measure.specials[i]
         text = text..Line_separator..create_element(for_measure_name,current ,measure,media)
    end
	return text
end



---@param media string | nil
---@return string
local function create_elements_measures(media)
	local text = ""

    if media then
    	text = text.."."..SET_NAME..LIB_SEPARATOR..HIDE_NAME..LIB_SEPARATOR..media.."{"..Line_separator
    	text = text..Line_starter.."display:none;"..Line_separator
    	text = text.."}"..Line_starter

    end

    text = text..Generate_all_minus_percent(media)

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
    text  = text..create_elements_measures()
    for i=1,media_size do
    	local current_media = MEDIAS[i]
    	text = text.."@media "..current_media.content.."{"..Line_separator
    	text = text..create_elements_measures(current_media.text)
    	text = text..Line_separator.."}"..Line_separator
    end
    return text
end



