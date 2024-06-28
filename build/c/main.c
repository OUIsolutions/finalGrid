
#include "dependencies/all.h"
#include "lua_code.h"
LuaCEmbedNamespace lua;

int lua_exit = 0;

#include "callbacks/declaration.h"

#include "callbacks/definition.h"

void add_callbacks(LuaCEmbed *main_obj){
    lua.add_callback(main_obj,"get_table_size",lua_get_table_size);
    lua.add_callback(main_obj,"load_file",lua_load_file_text);
    lua.add_callback(main_obj,"exit",lua_exit_code);
    lua.add_callback(main_obj,"print",custom_print);
    lua.add_callback(main_obj,"input",get_str);
    lua.add_callback(main_obj,"replace",lua_replace_strings);
    lua.add_callback(main_obj,"substr",lua_sub_str);
    lua.add_callback(main_obj,"strlen",lua_get_string_size);
    lua.add_callback(main_obj,"trim",lua_trim_string);

}


int main(int argc,char *argv[]){
    lua  = newLuaCEmbedNamespace();
    LuaCEmbed * main_obj = lua.newLuaEvaluation();
    lua.load_lib_from_c(main_obj,load_luaDoTheWorld,"dtw");
    add_callbacks(main_obj);

    if(lua.has_errors(main_obj)){
        char *error = lua.get_error_message(main_obj);
        if(strcmp(error,"") != 0){
            printf("%s\n",error);
        }
        lua.free(main_obj);
        return lua_exit;
    }

    lua.evaluate(main_obj,lua_code);

    if(lua.has_errors(main_obj)){
        char *error = lua.get_error_message(main_obj);
        if(strcmp(error,"") != 0){
            printf("%s\n",error);
        }
        lua.free(main_obj);
        return lua_exit;
    }
    lua.free(main_obj);
    return 0;
}