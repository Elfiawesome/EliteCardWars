if (parameter_count() == 3){
    ExecuteShell(parameter_string(0)+" "+
        parameter_string(1) + " " +
        parameter_string(2) + " " +
        parameter_string(3) + " -secondary" + " -tertiary",false,false)
        window_set_caption("P1")
        window_set_position(0,40)
}

if (parameter_count() > 3){
        window_set_caption("P2")
        window_set_position(720,40)    
}
