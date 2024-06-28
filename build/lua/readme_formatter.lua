
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
    return readme_content
end

function GenerateReadme()
	local internal_content = dtw.load_file("build/INTERNAL.md")
	local formated = format_code_of(internal_content)
	formated = format_references(formated)
	dtw.write_file("README.md",formated)
end