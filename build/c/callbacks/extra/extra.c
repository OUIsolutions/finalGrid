LuaCEmbedResponse * get_table_size(LuaCEmbed *args){
    LuaCEmbedTable *table = lua.args.get_table(args,0);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    long size = lua.tables.get_size(table);
    return lua.response.send_long(size);
}


LuaCEmbedResponse * lua_load_file_text(LuaCEmbed *args) {
    char * file = lua.args.get_str(args,0);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    lua.evaluete_file(args,file);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    return NULL;
}