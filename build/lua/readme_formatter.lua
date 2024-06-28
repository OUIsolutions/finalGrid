
local function  format_code_of(readme_content)
    local size = strlen(readme_content)
    local inside_codeof = false
    local codeof_size = strlen(CODEOF)
    local i = 1
    local text  = ""
    local current_codeof = ""
    while  i < size do
    	local possible_codeof = substr(readme_content,i,i+codeof_size)
        if possible_codeof == CODEOF then
        	inside_codeof = true
            i = i + codeof_size
        end
        local current_char = substr(readme_content,i ,i+1)

        if inside_codeof == false then
        	text = text..current_char
        end

        if inside_codeof  and current_char ~= '\n' then
        	current_codeof = current_codeof..current_char
        end
        if inside_codeof and current_char == '\n' then
        	local formatedcodeof = trim(current_codeof)
        	local extension = dtw.newPath(formatedcodeof).get_extension()
        	local content = dtw.load_file(formatedcodeof)
        	if content == nil then
                exit("content of "..formatedcodeof.." not provided")
        	end
        	local code_text = "\n```"..extension.."\n"..content.."\n```"
        	text = text..code_text
        	inside_codeof = false
        	current_codeof = ""

        end

        i = i + 1
    end

    return text
end


local function  format_references(readme_content)

    local size = strlen(readme_content)
    local inside_reference_of = false
    local reference_of_size = strlen(REFERENCE_OF)
    local i = 1
    local text  = ""
    local curente_reference_of = ""
    while  i < size do
    	local possible_reference_of = substr(readme_content,i,i+reference_of_size)
        if possible_reference_of == REFERENCE_OF then
        	inside_reference_of = true
            i = i + reference_of_size
        end

        local current_char = substr(readme_content,i ,i+1)

        if inside_reference_of == false then
        	text = text..current_char
        end

        if inside_reference_of  and current_char ~= '\n' then
        	curente_reference_of = curente_reference_of..current_char
        end

        if inside_reference_of and current_char == '\n' then
        	local formatedreference_of = trim(curente_reference_of)
        	local link = "["..LINK_TO_EXAMPLE_TEXT.."](/"..formatedreference_of..")"
        	text = text..link
        	inside_reference_of = false
        	curente_reference_of = ""

        end

        i = i + 1
    end

    return text
end

function GenerateReadme()
	local internal_content = dtw.load_file("build/INTERNAL.md")
	local formated = format_code_of(internal_content)
	formated = format_references(formated)
	dtw.write_file("README.md",formated)
end