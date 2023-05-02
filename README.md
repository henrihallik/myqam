Just make sure you have all linked libraries int the pro file installed with sudo apt-get

LIBS += -lcamera 
LIBS += -lcamera-base 

LIBS += -pthread 

LIBS += -levent 

LIBS += -levent_pthreads

LIBS += -latomic \ 
        -ltiff

