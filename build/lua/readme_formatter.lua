
local function  format_code_of(readme_content)


    return readme_content
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