Line_separator = ""
Line_starter =""
Valid_measures_size = 0;
local function main()


    load_file("conf.lua")
    Valid_measures_size = get_table_size(VALID_MEASURES)
    if IDENT == true then
        Line_separator = "\n"
        Line_starter = "\t"
    end


    local text = "."..FINAL_GRID_ROOT.."{position: absolute;width: 100vw;height: 100vh;left: 0;top: 0;}"
    local final =text..Line_starter..Create_all_measures()
    local release_path = dtw.concat_path("releases",RELEASE..".css")

    dtw.write_file(release_path,final)
    Create_examples(release_path)
    GenerateReadme()
end
main()