///draw_text_apollo(x,y,w,h,text,alignment)
draw_set_font(ft_Ebrima_Standard)
draw_set_color(c_black)
var curx=0
var cury=0
var midxoff=0
var midyoff=0
var charpos=1
var vsep=string_height(argument4)
var modifier="d"
var submodifier=""

var linebreakpos=0
var IsNewLine=true
while(charpos<=string_length(argument4)){
    if charpos=linebreakpos{
        cury+=vsep
        curx=0
        IsNewLine=true
    }
    if IsNewLine{
        IsNewLine=false
        var wordlen=0
        var IsModifier=false
        var trueword=""
        var _lastspace=0
        var _ctw="";
        //Horizontal text
        while(charpos<=string_length(argument4)){
            _ctw=""
            var _wc=0;
            while(charpos+_wc<=string_length(argument4)){
                if !IsModifier && string_char_at(argument4,charpos+_wc)="["{IsModifier=true}
                if !IsModifier{
                    _ctw+=string_char_at(argument4,charpos+_wc)
                    if string_char_at(argument4,charpos+_wc)=" " || (charpos+_wc=string_length(argument4)){
                        _lastspace=charpos
                        if string_width(_ctw)>argument2{_lastspace=charpos+_wc+1;trueword+=_ctw}
                        break;
                    }
                }
                if IsModifier && string_char_at(argument4,charpos+_wc)="]"{IsModifier=false}
                _wc++
            }
            charpos+=_wc
            wordlen+=_wc
            charpos++
            wordlen++
            if string_width(trueword+_ctw) > argument2{
                linebreakpos=_lastspace
                break;
            }
            trueword+=_ctw
        }
        charpos-=wordlen//reverse our actions
        midxoff=(argument2-string_width(trueword))*argument5//set offset
        
        //Vertical text
        if argument5!=0{
            IsModifier=false
            trueword=""
            var _i=1
            while(_i<=string_length(argument4)){
                if !IsModifier && string_char_at(argument4,_i)="["{IsModifier=true}
                if !IsModifier{
                    trueword+=string_char_at(argument4,_i)
                }
                if IsModifier && string_char_at(argument4,_i)="]"{IsModifier=false}
                _i++
            }
            midyoff=(argument3-string_height_ext(trueword,string_height(argument4),argument2))*argument5//set offset
        }
    }
    //check for modifier
    if string_char_at(argument4,charpos)="["{
        var _b=0
        var _i=0
        var _ib=false
        for(_i=0;(_i+charpos)<string_length(argument4);_i++){
            var _c=string_char_at(argument4,_i+charpos)
            if _c=":"{
                modifier=string_copy(argument4,charpos+1,_i-1)
                _b=_i
                _ib=true
            }
            if _c="]"{
                if  _ib{submodifier=string_copy(argument4,charpos+_b+1,_i-_b-1)}
                if !_ib{modifier=string_copy(argument4,charpos+1,_i-1)}
                _i++
                break;
            }
        }
        charpos+=_i
    }
    switch(modifier){
        case "d":
            draw_set_color(c_black)
            draw_set_font(ft_Ebrima_Standard)
            draw_text(argument0+midxoff+curx,argument1+midyoff+cury,string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))
        break;
        case "s":
            var shake=real(submodifier)
            draw_text(argument0+midxoff+curx+irandom_range(-shake,shake),argument1+midyoff+cury+irandom_range(-shake,shake),string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))    
        break;
        case "scary":
            draw_set_color(c_red)
            var shake=real(submodifier)
            draw_text(argument0+midxoff+curx+irandom_range(-shake,shake),argument1+midyoff+cury+irandom_range(-shake,shake),string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))    
        break;
        case "c":
            draw_set_color(real(submodifier))
            draw_text(argument0+midxoff+curx,argument1+midyoff+cury,string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))    
        break;
        case "keyword":
            draw_set_font(ft_Ebrima_Standard_Bold)
            draw_set_color(real(submodifier))
            draw_text(argument0+midxoff+curx,argument1+midyoff+cury,string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))
        break;
        case "wave":
            draw_text(argument0+midxoff+curx,argument1+midyoff+cury+sin(current_time/100*real(submodifier)+charpos*100)*4,string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))
        break;
        case "Button":
            draw_set_font(ft_Ebrima_Standard_Bold)
            draw_set_color(real(submodifier))
            draw_text(argument0+midxoff+curx,argument1+midyoff+cury+sin(current_time/200+charpos*100)*3,string_char_at(argument4,charpos))
            curx+=string_width(string_char_at(argument4,charpos))
        break;
    }
    charpos++
}

