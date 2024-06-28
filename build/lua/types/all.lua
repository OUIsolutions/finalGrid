---@type DtwModule
dtw = dtw


---@type fun (value:string)
load_file =load_file


---@type fun (value:string | nil):string
input =input

---@type fun (value:table):number
get_table_size =get_table_size

---@type fun (str:string,target:string,value_to_replace:string):string
replace =replace

---@type fun (str:string,start:number,end:number):string
substr = substr

---@type fun (str:string):string
trim = trim

---@type fun (str:string):number
strlen = strlen

---@type fun (str:string)
exit = exit