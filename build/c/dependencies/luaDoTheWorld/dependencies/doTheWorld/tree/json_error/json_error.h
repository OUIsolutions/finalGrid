#define DTW_JSON_TYPE_ERROR 1
#define DTW_JSON_SYNTAX_ERROR 2
#define DTW_JSON_REQUIRED_KEY_ERROR 3
#define DTW_JSON_REQUIRED_VALUE_ERROR 4
#define DTW_JSON_NOT_FOUND_ERROR 5
#define DTW_ACTION_ERROR (-1)


typedef struct DtwJsonTreeError {
    int code;
    int position;
    const char *menssage;


}DtwJsonTreeError;

DtwJsonTreeError * newDtwJsonError();

DtwJsonTreeError * DtwJsonTreeError_validate_json_tree_by_cJSON(cJSON *json_tree);

DtwJsonTreeError * DtwJsonTreeError_validate_json_tree_by_content(const char *content);

void DtwJsonTreeError_represent(struct DtwJsonTreeError *self);

void DtwJsonTreeError_free(struct DtwJsonTreeError *self);
