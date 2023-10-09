/// string_umbruch(str, width);
/*
Setzt in einen String nach beliebiger Breite
Zeilenumbrueche ein.
 by BadToxic
*/
var str, width;

str    = argument0; // Der String
width  = argument1; // Die erlaubte Breite in Pixeln

newstr = "";

if (str != "") do {

    newstr = newstr + string_copy(str,1,1);
    str    = string_delete(str,1,1);

}
until(str == "" || string_width(newstr) >= width)

if(str == "") return newstr;

if(string_count(" ", newstr) > 0)
while(string_char_at(str, 1) != " " && string_char_at(newstr, string_length(newstr)) != " "){
    
    str    = string_copy(newstr, string_length(newstr), 1) + str;
    newstr = string_copy(newstr, 1, string_length(newstr) - 1);
    
}
if (string_char_at(str, 1) == " ") {
    str = string_delete(str, 1, 1);
}

return newstr + "#" + string_umbruch(str, width);
  
  
