


LuaCEmbedResponse * lua_replace_strings(LuaCEmbed *args) {
    char *str = lua.args.get_str(args,0);
    char *target = lua.args.get_str(args,1);
    char *replace = lua.args.get_str(args,2);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    CTextStack *element = newCTextStack_string(str);
    CTextStack_self_replace(element,target,replace);
    LuaCEmbedResponse *response = lua.response.send_str(element->rendered_text);
    CTextStack_free(element);
    return response;
}
LuaCEmbedResponse * lua_get_string_size(LuaCEmbed *args) {
    long size;
    char *str = lua.args.get_raw_str(args,&size,0);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    return lua.response.send_long(size);
}

LuaCEmbedResponse * lua_sub_str(LuaCEmbed *args) {
    char *str = lua.args.get_str(args,0);
    long size = strlen(str);
    long start = lua.args.get_long(args,1) -1;
    long end = lua.args.get_long(args,2) -1;

    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    if(end >= size) {
        end = size;
    }
    CTextStack *parsed = newCTextStack_string(str);
    CTextStack_self_substr(parsed,start,end);
    LuaCEmbedResponse *response = lua.response.send_str(parsed->rendered_text);
    CTextStack_free(parsed);
    return response;

}

LuaCEmbedResponse * lua_trim_string(LuaCEmbed *args) {
    char *str = lua.args.get_str(args,0);
    if(lua.has_errors(args)) {
        char *msg = lua.get_error_message(args);
        return lua.response.send_error(msg);
    }
    CTextStack *parsed = newCTextStack_string(str);
    CTextStack_self_trim(parsed);
    LuaCEmbedResponse *response = lua.response.send_str(parsed->rendered_text);
    CTextStack_free(parsed);
    return  response;
}