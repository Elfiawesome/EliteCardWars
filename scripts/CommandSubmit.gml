///CommandSubmit(Command)
var _c=argument0
var _split=ds_list_create()
var _slot=0
var _str2=""
for(var i = 1; i < (string_length(_c)+1); i++) {
    var currStr = string_copy(_c, i, 1);
    if (currStr == " "){
        _split[| _slot] = _str2
        _slot++;
        _str2 = "";
    } else {
        _str2 = _str2 + currStr;
        _split[| _slot] = _str2;
    }
}

/*switch(_split){
    case "give":
        
    break;
}*/

ds_list_destroy(_split)
