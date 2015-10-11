void msg_proc(TMSG *msg)
{
    B *pb = NULL;
    process(msg, pb);
    delete [] pb;

    // something else to do ...
    
    return;
}

