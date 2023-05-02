Just make sure you have all linked libraries int the pro file installed with sudo apt-get

LIBS += -lcamera <br>
LIBS += -lcamera-base <br>
LIBS += -pthread <br>
LIBS += -levent <br>
LIBS += -levent_pthreads <br>
LIBS += -latomic \ <br>
        -ltiff <br>

