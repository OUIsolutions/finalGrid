
---@param lib_path string
function Create_examples(lib_path)
	dtw.remove_any(INTERNAL_EXAMPLES)
	local elements,size = dtw.list_files_recursively(UNFROMATTED_EXAMPLES,true)
	for i=1,size do
		local current_path = elements[i]
		local name = dtw.newPath(current_path).get_name()
		local current_content = dtw.load_file(current_path)
		local lib_name = dtw.newPath(lib_path).get_name()
		local formatted_lib_path = dtw.concat_path("../releases",lib_name)
		local internal = replace(current_content,LIB_SHORTCUT,formatted_lib_path)
		local internal_path = dtw.concat_path(INTERNAL_EXAMPLES,name)
		dtw.write_file(internal_path,internal)
	end
end