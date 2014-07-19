
    struct linger so_linger;

    so_linger.l_onoff  = 1;
    so_linger.l_linger = 0;

    setsockopt(sock, SOL_SOCKET, SO_LINGER, &so_linger, sizeof(so_linger));


