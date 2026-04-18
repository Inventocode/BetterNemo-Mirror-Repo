.class public Lio/socket/client/Socket;
.super Lio/socket/emitter/Emitter;
.source "Socket.java"


# static fields
.field protected static events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private acks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/socket/client/Ack;",
            ">;"
        }
    .end annotation
.end field

.field private volatile connected:Z

.field id:Ljava/lang/String;

.field private ids:I

.field private io:Lio/socket/client/Manager;

.field private nsp:Ljava/lang/String;

.field private query:Ljava/lang/String;

.field private final receiveBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sendBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/parser/Packet<",
            "Lorg/json/JSONArray;",
            ">;>;"
        }
    .end annotation
.end field

.field private subs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/client/On$Handle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lio/socket/client/Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    .line 70
    new-instance v0, Lio/socket/client/Socket$1;

    invoke-direct {v0}, Lio/socket/client/Socket$1;-><init>()V

    sput-object v0, Lio/socket/client/Socket;->events:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/socket/client/Manager;Ljava/lang/String;Lio/socket/client/Manager$Options;)V
    .registers 5

    .line 98
    invoke-direct {p0}, Lio/socket/emitter/Emitter;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    .line 99
    iput-object p1, p0, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    .line 100
    iput-object p2, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    if-eqz p3, :cond_22

    .line 102
    iget-object p1, p3, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    iput-object p1, p0, Lio/socket/client/Socket;->query:Ljava/lang/String;

    :cond_22
    return-void
.end method

.method static synthetic access$000(Lio/socket/client/Socket;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lio/socket/client/Socket;->onopen()V

    return-void
.end method

.method static synthetic access$100(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onpacket(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1000(Lio/socket/client/Socket;Lio/socket/parser/Packet;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1100(Lio/socket/client/Socket;)Ljava/util/Queue;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$1200(Lio/socket/client/Socket;)Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lio/socket/client/Socket;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lio/socket/client/Socket;->destroy()V

    return-void
.end method

.method static synthetic access$200(Lio/socket/client/Socket;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onclose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lio/socket/client/Socket;)Z
    .registers 1

    .line 24
    iget-boolean p0, p0, Lio/socket/client/Socket;->connected:Z

    return p0
.end method

.method static synthetic access$400(Lio/socket/client/Socket;)Lio/socket/client/Manager;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    return-object p0
.end method

.method static synthetic access$500(Lio/socket/client/Socket;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lio/socket/client/Socket;->subEvents()V

    return-void
.end method

.method static synthetic access$601(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/socket/client/Socket;)I
    .registers 1

    .line 24
    iget p0, p0, Lio/socket/client/Socket;->ids:I

    return p0
.end method

.method static synthetic access$708(Lio/socket/client/Socket;)I
    .registers 3

    .line 24
    iget v0, p0, Lio/socket/client/Socket;->ids:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/socket/client/Socket;->ids:I

    return v0
.end method

.method static synthetic access$800()Ljava/util/logging/Logger;
    .registers 1

    .line 24
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lio/socket/client/Socket;)Ljava/util/Map;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    return-object p0
.end method

.method private ack(I)Lio/socket/client/Ack;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 347
    new-instance v1, Lio/socket/client/Socket$7;

    invoke-direct {v1, p0, v0, p1, p0}, Lio/socket/client/Socket$7;-><init>(Lio/socket/client/Socket;[ZILio/socket/client/Socket;)V

    return-object v1
.end method

.method private destroy()V
    .registers 3

    .line 417
    iget-object v0, p0, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    if-eqz v0, :cond_1b

    .line 419
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/On$Handle;

    .line 420
    invoke-interface {v1}, Lio/socket/client/On$Handle;->destroy()V

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    .line 422
    iput-object v0, p0, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    .line 425
    :cond_1b
    iget-object v0, p0, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    invoke-virtual {v0, p0}, Lio/socket/client/Manager;->destroy(Lio/socket/client/Socket;)V

    return-void
.end method

.method private emitBuffered()V
    .registers 3

    .line 395
    :goto_0
    iget-object v0, p0, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_0

    .line 399
    :cond_19
    iget-object v0, p0, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 402
    :goto_1e
    iget-object v0, p0, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/parser/Packet;

    if-eqz v0, :cond_2c

    .line 403
    invoke-direct {p0, v0}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    goto :goto_1e

    .line 405
    :cond_2c
    iget-object v0, p0, Lio/socket/client/Socket;->sendBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private onack(Lio/socket/parser/Packet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lio/socket/client/Socket;->acks:Ljava/util/Map;

    iget v1, p1, Lio/socket/parser/Packet;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/Ack;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_40

    .line 376
    sget-object v3, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 377
    iget v5, p1, Lio/socket/parser/Packet;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "calling ack %s with %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 379
    :cond_34
    iget-object p1, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p1}, Lio/socket/client/Socket;->toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/socket/client/Ack;->call([Ljava/lang/Object;)V

    goto :goto_5d

    .line 381
    :cond_40
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_5d

    new-array v2, v2, [Ljava/lang/Object;

    .line 382
    iget p1, p1, Lio/socket/parser/Packet;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "bad ack %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private onclose(Ljava/lang/String;)V
    .registers 7

    .line 270
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v4, "close (%s)"

    .line 271
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 273
    :cond_19
    iput-boolean v3, p0, Lio/socket/client/Socket;->connected:Z

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string p1, "disconnect"

    .line 275
    invoke-virtual {p0, p1, v0}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method private onconnect()V
    .registers 3

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lio/socket/client/Socket;->connected:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "connect"

    .line 389
    invoke-virtual {p0, v1, v0}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 390
    invoke-direct {p0}, Lio/socket/client/Socket;->emitBuffered()V

    return-void
.end method

.method private ondisconnect()V
    .registers 5

    .line 409
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "server disconnect (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 412
    :cond_1b
    invoke-direct {p0}, Lio/socket/client/Socket;->destroy()V

    const-string v0, "io server disconnect"

    .line 413
    invoke-direct {p0, v0}, Lio/socket/client/Socket;->onclose(Ljava/lang/String;)V

    return-void
.end method

.method private onevent(Lio/socket/parser/Packet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet<",
            "Lorg/json/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v1}, Lio/socket/client/Socket;->toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 326
    sget-object v1, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v4, "emitting event %s"

    .line 327
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 330
    :cond_2a
    iget v2, p1, Lio/socket/parser/Packet;->id:I

    if-ltz v2, :cond_3c

    const-string v2, "attaching ack callback to event"

    .line 331
    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 332
    iget p1, p1, Lio/socket/parser/Packet;->id:I

    invoke-direct {p0, p1}, Lio/socket/client/Socket;->ack(I)Lio/socket/client/Ack;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_3c
    iget-boolean p1, p0, Lio/socket/client/Socket;->connected:Z

    if-eqz p1, :cond_57

    .line 336
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_47

    return-void

    .line 337
    :cond_47
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_5c

    .line 340
    :cond_57
    iget-object p1, p0, Lio/socket/client/Socket;->receiveBuffer:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_5c
    return-void
.end method

.method private onopen()V
    .registers 3

    .line 256
    sget-object v0, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "transport is open - connecting"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 259
    iget-object v0, p0, Lio/socket/client/Socket;->query:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 260
    new-instance v0, Lio/socket/parser/Packet;

    invoke-direct {v0, v1}, Lio/socket/parser/Packet;-><init>(I)V

    .line 261
    iget-object v1, p0, Lio/socket/client/Socket;->query:Ljava/lang/String;

    iput-object v1, v0, Lio/socket/parser/Packet;->query:Ljava/lang/String;

    .line 262
    invoke-direct {p0, v0}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    goto :goto_31

    .line 264
    :cond_29
    new-instance v0, Lio/socket/parser/Packet;

    invoke-direct {v0, v1}, Lio/socket/parser/Packet;-><init>(I)V

    invoke-direct {p0, v0}, Lio/socket/client/Socket;->packet(Lio/socket/parser/Packet;)V

    :cond_31
    :goto_31
    return-void
.end method

.method private onpacket(Lio/socket/parser/Packet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/parser/Packet<",
            "*>;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    iget-object v1, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 281
    :cond_b
    iget v0, p1, Lio/socket/parser/Packet;->type:I

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 310
    :pswitch_11  #0x6
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onack(Lio/socket/parser/Packet;)V

    goto :goto_36

    .line 296
    :pswitch_15  #0x5
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onevent(Lio/socket/parser/Packet;)V

    goto :goto_36

    :pswitch_19  #0x4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 319
    iget-object p1, p1, Lio/socket/parser/Packet;->data:Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "error"

    invoke-virtual {p0, p1, v0}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_36

    .line 303
    :pswitch_27  #0x3
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onack(Lio/socket/parser/Packet;)V

    goto :goto_36

    .line 289
    :pswitch_2b  #0x2
    invoke-direct {p0, p1}, Lio/socket/client/Socket;->onevent(Lio/socket/parser/Packet;)V

    goto :goto_36

    .line 315
    :pswitch_2f  #0x1
    invoke-direct {p0}, Lio/socket/client/Socket;->ondisconnect()V

    goto :goto_36

    .line 283
    :pswitch_33  #0x0
    invoke-direct {p0}, Lio/socket/client/Socket;->onconnect()V

    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_2f  #00000001
        :pswitch_2b  #00000002
        :pswitch_27  #00000003
        :pswitch_19  #00000004
        :pswitch_15  #00000005
        :pswitch_11  #00000006
    .end packed-switch
.end method

.method private packet(Lio/socket/parser/Packet;)V
    .registers 3

    .line 251
    iget-object v0, p0, Lio/socket/client/Socket;->nsp:Ljava/lang/String;

    iput-object v0, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    invoke-virtual {v0, p1}, Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V

    return-void
.end method

.method private subEvents()V
    .registers 3

    .line 107
    iget-object v0, p0, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    if-eqz v0, :cond_5

    return-void

    .line 109
    :cond_5
    iget-object v0, p0, Lio/socket/client/Socket;->io:Lio/socket/client/Manager;

    .line 110
    new-instance v1, Lio/socket/client/Socket$2;

    invoke-direct {v1, p0, v0}, Lio/socket/client/Socket$2;-><init>(Lio/socket/client/Socket;Lio/socket/client/Manager;)V

    iput-object v1, p0, Lio/socket/client/Socket;->subs:Ljava/util/Queue;

    return-void
.end method

.method private static toArray(Lorg/json/JSONArray;)[Ljava/lang/Object;
    .registers 9

    .line 483
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 484
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_29

    const/4 v3, 0x0

    .line 488
    :try_start_a
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_1a

    :catch_f
    move-exception v4

    .line 490
    sget-object v5, Lio/socket/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "An error occured while retrieving data from JSONArray"

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v3

    .line 493
    :goto_1a
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    goto :goto_24

    :cond_23
    move-object v3, v4

    :goto_24
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_29
    return-object v1
.end method


# virtual methods
.method public close()Lio/socket/client/Socket;
    .registers 2

    .line 434
    new-instance v0, Lio/socket/client/Socket$8;

    invoke-direct {v0, p0}, Lio/socket/client/Socket$8;-><init>(Lio/socket/client/Socket;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public connect()Lio/socket/client/Socket;
    .registers 2

    .line 154
    invoke-virtual {p0}, Lio/socket/client/Socket;->open()Lio/socket/client/Socket;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lio/socket/client/Socket;
    .registers 2

    .line 460
    invoke-virtual {p0}, Lio/socket/client/Socket;->close()Lio/socket/client/Socket;

    move-result-object v0

    return-object v0
.end method

.method public varargs emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;
    .registers 4

    .line 182
    new-instance v0, Lio/socket/client/Socket$5;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/client/Socket$5;-><init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public emit(Ljava/lang/String;[Ljava/lang/Object;Lio/socket/client/Ack;)Lio/socket/emitter/Emitter;
    .registers 5

    .line 220
    new-instance v0, Lio/socket/client/Socket$6;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/socket/client/Socket$6;-><init>(Lio/socket/client/Socket;Ljava/lang/String;[Ljava/lang/Object;Lio/socket/client/Ack;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public open()Lio/socket/client/Socket;
    .registers 2

    .line 136
    new-instance v0, Lio/socket/client/Socket$3;

    invoke-direct {v0, p0}, Lio/socket/client/Socket$3;-><init>(Lio/socket/client/Socket;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method
