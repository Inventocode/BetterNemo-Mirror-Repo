.class public Lio/socket/client/Manager;
.super Lio/socket/emitter/Emitter;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/client/Manager$Options;,
        Lio/socket/client/Manager$Engine;,
        Lio/socket/client/Manager$OpenCallback;,
        Lio/socket/client/Manager$ReadyState;
    }
.end annotation


# static fields
.field static defaultCallFactory:Lokhttp3/Call$Factory;

.field static defaultWebSocketFactory:Lokhttp3/WebSocket$Factory;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private _randomizationFactor:D

.field private _reconnection:Z

.field private _reconnectionAttempts:I

.field private _reconnectionDelay:J

.field private _reconnectionDelayMax:J

.field private _timeout:J

.field private backoff:Lio/socket/backo/Backoff;

.field private connecting:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/socket/client/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private decoder:Lio/socket/parser/Parser$Decoder;

.field private encoder:Lio/socket/parser/Parser$Encoder;

.field private encoding:Z

.field engine:Lio/socket/engineio/client/Socket;

.field private lastPing:Ljava/util/Date;

.field nsps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lio/socket/client/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private opts:Lio/socket/client/Manager$Options;

.field private packetBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/socket/parser/Packet;",
            ">;"
        }
    .end annotation
.end field

.field readyState:Lio/socket/client/Manager$ReadyState;

.field private reconnecting:Z

.field private skipReconnect:Z

.field private subs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/socket/client/On$Handle;",
            ">;"
        }
    .end annotation
.end field

.field private uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lio/socket/client/Manager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, v0, v0}, Lio/socket/client/Manager;-><init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/client/Manager$Options;)V
    .registers 8

    .line 129
    invoke-direct {p0}, Lio/socket/emitter/Emitter;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    if-nez p2, :cond_11

    .line 131
    new-instance p2, Lio/socket/client/Manager$Options;

    invoke-direct {p2}, Lio/socket/client/Manager$Options;-><init>()V

    .line 133
    :cond_11
    iget-object v0, p2, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "/socket.io"

    .line 134
    iput-object v0, p2, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    .line 136
    :cond_19
    iget-object v0, p2, Lio/socket/engineio/client/Transport$Options;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    if-nez v0, :cond_21

    .line 137
    sget-object v0, Lio/socket/client/Manager;->defaultWebSocketFactory:Lokhttp3/WebSocket$Factory;

    iput-object v0, p2, Lio/socket/engineio/client/Transport$Options;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    .line 139
    :cond_21
    iget-object v0, p2, Lio/socket/engineio/client/Transport$Options;->callFactory:Lokhttp3/Call$Factory;

    if-nez v0, :cond_29

    .line 140
    sget-object v0, Lio/socket/client/Manager;->defaultCallFactory:Lokhttp3/Call$Factory;

    iput-object v0, p2, Lio/socket/engineio/client/Transport$Options;->callFactory:Lokhttp3/Call$Factory;

    .line 142
    :cond_29
    iput-object p2, p0, Lio/socket/client/Manager;->opts:Lio/socket/client/Manager$Options;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    .line 145
    iget-boolean v0, p2, Lio/socket/client/Manager$Options;->reconnection:Z

    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->reconnection(Z)Lio/socket/client/Manager;

    .line 146
    iget v0, p2, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    if-eqz v0, :cond_43

    goto :goto_46

    :cond_43
    const v0, 0x7fffffff

    :goto_46
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->reconnectionAttempts(I)Lio/socket/client/Manager;

    .line 147
    iget-wide v0, p2, Lio/socket/client/Manager$Options;->reconnectionDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_52

    goto :goto_54

    :cond_52
    const-wide/16 v0, 0x3e8

    :goto_54
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->reconnectionDelay(J)Lio/socket/client/Manager;

    .line 148
    iget-wide v0, p2, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5e

    goto :goto_60

    :cond_5e
    const-wide/16 v0, 0x1388

    :goto_60
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->reconnectionDelayMax(J)Lio/socket/client/Manager;

    .line 149
    iget-wide v0, p2, Lio/socket/client/Manager$Options;->randomizationFactor:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_6c

    goto :goto_6e

    :cond_6c
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    :goto_6e
    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->randomizationFactor(D)Lio/socket/client/Manager;

    .line 150
    new-instance v0, Lio/socket/backo/Backoff;

    invoke-direct {v0}, Lio/socket/backo/Backoff;-><init>()V

    .line 151
    invoke-virtual {p0}, Lio/socket/client/Manager;->reconnectionDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/backo/Backoff;->setMin(J)Lio/socket/backo/Backoff;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lio/socket/client/Manager;->reconnectionDelayMax()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/backo/Backoff;->setMax(J)Lio/socket/backo/Backoff;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lio/socket/client/Manager;->randomizationFactor()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/socket/backo/Backoff;->setJitter(D)Lio/socket/backo/Backoff;

    move-result-object v0

    iput-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    .line 154
    iget-wide v0, p2, Lio/socket/client/Manager$Options;->timeout:J

    invoke-virtual {p0, v0, v1}, Lio/socket/client/Manager;->timeout(J)Lio/socket/client/Manager;

    .line 155
    sget-object v0, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 156
    iput-object p1, p0, Lio/socket/client/Manager;->uri:Ljava/net/URI;

    const/4 p1, 0x0

    .line 157
    iput-boolean p1, p0, Lio/socket/client/Manager;->encoding:Z

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    .line 159
    iget-object p1, p2, Lio/socket/client/Manager$Options;->encoder:Lio/socket/parser/Parser$Encoder;

    if-eqz p1, :cond_aa

    goto :goto_af

    :cond_aa
    new-instance p1, Lio/socket/parser/IOParser$Encoder;

    invoke-direct {p1}, Lio/socket/parser/IOParser$Encoder;-><init>()V

    :goto_af
    iput-object p1, p0, Lio/socket/client/Manager;->encoder:Lio/socket/parser/Parser$Encoder;

    .line 160
    iget-object p1, p2, Lio/socket/client/Manager$Options;->decoder:Lio/socket/parser/Parser$Decoder;

    if-eqz p1, :cond_b6

    goto :goto_bb

    :cond_b6
    new-instance p1, Lio/socket/parser/IOParser$Decoder;

    invoke-direct {p1}, Lio/socket/parser/IOParser$Decoder;-><init>()V

    :goto_bb
    iput-object p1, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 30
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lio/socket/client/Manager;)Ljava/net/URI;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/socket/client/Manager;->uri:Ljava/net/URI;

    return-object p0
.end method

.method static synthetic access$1000(Lio/socket/client/Manager;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->ondata(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lio/socket/client/Manager;[B)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->ondata([B)V

    return-void
.end method

.method static synthetic access$1200(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->onping()V

    return-void
.end method

.method static synthetic access$1300(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->onpong()V

    return-void
.end method

.method static synthetic access$1400(Lio/socket/client/Manager;Ljava/lang/Exception;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->onerror(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1500(Lio/socket/client/Manager;Ljava/lang/String;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->onclose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lio/socket/client/Manager;Lio/socket/parser/Packet;)V
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->ondecoded(Lio/socket/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1700(Lio/socket/client/Manager;)Ljava/util/Set;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1800(Lio/socket/client/Manager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lio/socket/client/Manager;->generateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1902(Lio/socket/client/Manager;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lio/socket/client/Manager;->encoding:Z

    return p1
.end method

.method static synthetic access$200(Lio/socket/client/Manager;)Lio/socket/client/Manager$Options;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/socket/client/Manager;->opts:Lio/socket/client/Manager$Options;

    return-object p0
.end method

.method static synthetic access$2000(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->processPacketQueue()V

    return-void
.end method

.method static synthetic access$2100(Lio/socket/client/Manager;)Lio/socket/backo/Backoff;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    return-object p0
.end method

.method static synthetic access$2202(Lio/socket/client/Manager;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lio/socket/client/Manager;->reconnecting:Z

    return p1
.end method

.method static synthetic access$2300(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    return-void
.end method

.method static synthetic access$2400(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->onreconnect()V

    return-void
.end method

.method static synthetic access$300(Lio/socket/client/Manager;)Z
    .registers 1

    .line 30
    iget-boolean p0, p0, Lio/socket/client/Manager;->skipReconnect:Z

    return p0
.end method

.method static synthetic access$302(Lio/socket/client/Manager;Z)Z
    .registers 2

    .line 30
    iput-boolean p1, p0, Lio/socket/client/Manager;->skipReconnect:Z

    return p1
.end method

.method static synthetic access$400(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->onopen()V

    return-void
.end method

.method static synthetic access$500(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    return-void
.end method

.method static synthetic access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lio/socket/client/Manager;)V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/socket/client/Manager;->maybeReconnectOnOpen()V

    return-void
.end method

.method static synthetic access$800(Lio/socket/client/Manager;)J
    .registers 3

    .line 30
    iget-wide v0, p0, Lio/socket/client/Manager;->_timeout:J

    return-wide v0
.end method

.method static synthetic access$900(Lio/socket/client/Manager;)Ljava/util/Queue;
    .registers 1

    .line 30
    iget-object p0, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    return-object p0
.end method

.method private cleanup()V
    .registers 3

    .line 523
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "cleanup"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 526
    :goto_7
    iget-object v0, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/On$Handle;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lio/socket/client/On$Handle;->destroy()V

    goto :goto_7

    .line 527
    :cond_15
    iget-object v0, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/socket/parser/Parser$Decoder;->onDecoded(Lio/socket/parser/Parser$Decoder$Callback;)V

    .line 529
    iget-object v0, p0, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 530
    iput-boolean v0, p0, Lio/socket/client/Manager;->encoding:Z

    .line 531
    iput-object v1, p0, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    .line 533
    iget-object v0, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    invoke-interface {v0}, Lio/socket/parser/Parser$Decoder;->destroy()V

    return-void
.end method

.method private varargs emitAll(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 164
    invoke-virtual {p0, p1, p2}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 165
    iget-object v0, p0, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/Socket;

    .line 166
    invoke-virtual {v1, p1, p2}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_d

    :cond_1d
    return-void
.end method

.method private generateId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string p1, ""

    goto :goto_21

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {p1}, Lio/socket/engineio/client/Socket;->id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private maybeReconnectOnOpen()V
    .registers 2

    .line 254
    iget-boolean v0, p0, Lio/socket/client/Manager;->reconnecting:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lio/socket/client/Manager;->_reconnection:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v0

    if-nez v0, :cond_13

    .line 255
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    :cond_13
    return-void
.end method

.method private onclose(Ljava/lang/String;)V
    .registers 4

    .line 553
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "onclose"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 555
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->reset()V

    .line 556
    sget-object v0, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "close"

    .line 557
    invoke-virtual {p0, p1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 559
    iget-boolean p1, p0, Lio/socket/client/Manager;->_reconnection:Z

    if-eqz p1, :cond_29

    iget-boolean p1, p0, Lio/socket/client/Manager;->skipReconnect:Z

    if-nez p1, :cond_29

    .line 560
    invoke-direct {p0}, Lio/socket/client/Manager;->reconnect()V

    :cond_29
    return-void
.end method

.method private ondata(Ljava/lang/String;)V
    .registers 3

    .line 423
    iget-object v0, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder;->add(Ljava/lang/String;)V

    return-void
.end method

.method private ondata([B)V
    .registers 3

    .line 427
    iget-object v0, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    invoke-interface {v0, p1}, Lio/socket/parser/Parser$Decoder;->add([B)V

    return-void
.end method

.method private ondecoded(Lio/socket/parser/Packet;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "packet"

    .line 431
    invoke-virtual {p0, p1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method private onerror(Ljava/lang/Exception;)V
    .registers 5

    .line 435
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "error"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 436
    invoke-direct {p0, v2, v0}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onopen()V
    .registers 5

    .line 361
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "open"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 365
    sget-object v0, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 366
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 368
    iget-object v0, p0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 369
    iget-object v1, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v2, Lio/socket/client/Manager$2;

    invoke-direct {v2, p0}, Lio/socket/client/Manager$2;-><init>(Lio/socket/client/Manager;)V

    const-string v3, "data"

    invoke-static {v0, v3, v2}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v1, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v2, Lio/socket/client/Manager$3;

    invoke-direct {v2, p0}, Lio/socket/client/Manager$3;-><init>(Lio/socket/client/Manager;)V

    const-string v3, "ping"

    invoke-static {v0, v3, v2}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v2, Lio/socket/client/Manager$4;

    invoke-direct {v2, p0}, Lio/socket/client/Manager$4;-><init>(Lio/socket/client/Manager;)V

    const-string v3, "pong"

    invoke-static {v0, v3, v2}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v1, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v2, Lio/socket/client/Manager$5;

    invoke-direct {v2, p0}, Lio/socket/client/Manager$5;-><init>(Lio/socket/client/Manager;)V

    const-string v3, "error"

    invoke-static {v0, v3, v2}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v2, Lio/socket/client/Manager$6;

    invoke-direct {v2, p0}, Lio/socket/client/Manager$6;-><init>(Lio/socket/client/Manager;)V

    const-string v3, "close"

    invoke-static {v0, v3, v2}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 404
    iget-object v0, p0, Lio/socket/client/Manager;->decoder:Lio/socket/parser/Parser$Decoder;

    new-instance v1, Lio/socket/client/Manager$7;

    invoke-direct {v1, p0}, Lio/socket/client/Manager$7;-><init>(Lio/socket/client/Manager;)V

    invoke-interface {v0, v1}, Lio/socket/parser/Parser$Decoder;->onDecoded(Lio/socket/parser/Parser$Decoder$Callback;)V

    return-void
.end method

.method private onping()V
    .registers 3

    .line 413
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ping"

    .line 414
    invoke-direct {p0, v1, v0}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onpong()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 418
    iget-object v1, p0, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    if-eqz v1, :cond_18

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 419
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lio/socket/client/Manager;->lastPing:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_1a

    :cond_18
    const-wide/16 v1, 0x0

    :goto_1a
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pong"

    .line 418
    invoke-direct {p0, v1, v0}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private onreconnect()V
    .registers 4

    .line 625
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v0

    const/4 v1, 0x0

    .line 626
    iput-boolean v1, p0, Lio/socket/client/Manager;->reconnecting:Z

    .line 627
    iget-object v2, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v2}, Lio/socket/backo/Backoff;->reset()V

    .line 628
    invoke-direct {p0}, Lio/socket/client/Manager;->updateSocketIds()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 629
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "reconnect"

    invoke-direct {p0, v0, v2}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private processPacketQueue()V
    .registers 3

    .line 516
    iget-object v0, p0, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lio/socket/client/Manager;->encoding:Z

    if-nez v0, :cond_18

    .line 517
    iget-object v0, p0, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/parser/Packet;

    .line 518
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V

    :cond_18
    return-void
.end method

.method private reconnect()V
    .registers 8

    .line 565
    iget-boolean v0, p0, Lio/socket/client/Manager;->reconnecting:Z

    if-nez v0, :cond_5d

    iget-boolean v0, p0, Lio/socket/client/Manager;->skipReconnect:Z

    if-eqz v0, :cond_9

    goto :goto_5d

    .line 569
    :cond_9
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->getAttempts()I

    move-result v0

    iget v1, p0, Lio/socket/client/Manager;->_reconnectionAttempts:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2a

    .line 570
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "reconnect failed"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->reset()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "reconnect_failed"

    .line 572
    invoke-direct {p0, v1, v0}, Lio/socket/client/Manager;->emitAll(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    iput-boolean v2, p0, Lio/socket/client/Manager;->reconnecting:Z

    goto :goto_5d

    .line 575
    :cond_2a
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->duration()J

    move-result-wide v0

    .line 576
    sget-object v3, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v2, "will wait %dms before reconnect attempt"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 578
    iput-boolean v4, p0, Lio/socket/client/Manager;->reconnecting:Z

    .line 579
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 580
    new-instance v3, Lio/socket/client/Manager$11;

    invoke-direct {v3, p0, p0}, Lio/socket/client/Manager$11;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 615
    iget-object v0, p0, Lio/socket/client/Manager;->subs:Ljava/util/Queue;

    new-instance v1, Lio/socket/client/Manager$12;

    invoke-direct {v1, p0, v2}, Lio/socket/client/Manager$12;-><init>(Lio/socket/client/Manager;Ljava/util/Timer;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_5d
    :goto_5d
    return-void
.end method

.method private updateSocketIds()V
    .registers 4

    .line 174
    iget-object v0, p0, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/socket/client/Socket;

    .line 177
    invoke-direct {p0, v2}, Lio/socket/client/Manager;->generateId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/socket/client/Socket;->id:Ljava/lang/String;

    goto :goto_a

    :cond_29
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 537
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    const-string v1, "disconnect"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lio/socket/client/Manager;->skipReconnect:Z

    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lio/socket/client/Manager;->reconnecting:Z

    .line 540
    iget-object v0, p0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    sget-object v1, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    if-eq v0, v1, :cond_16

    .line 543
    invoke-direct {p0}, Lio/socket/client/Manager;->cleanup()V

    .line 545
    :cond_16
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    invoke-virtual {v0}, Lio/socket/backo/Backoff;->reset()V

    .line 546
    sget-object v0, Lio/socket/client/Manager$ReadyState;->CLOSED:Lio/socket/client/Manager$ReadyState;

    iput-object v0, p0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 547
    iget-object v0, p0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    if-eqz v0, :cond_26

    .line 548
    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->close()Lio/socket/engineio/client/Socket;

    :cond_26
    return-void
.end method

.method destroy(Lio/socket/client/Socket;)V
    .registers 3

    .line 478
    iget-object v0, p0, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 479
    iget-object p1, p0, Lio/socket/client/Manager;->connecting:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 481
    :cond_e
    invoke-virtual {p0}, Lio/socket/client/Manager;->close()V

    return-void
.end method

.method public isReconnecting()Z
    .registers 2

    .line 195
    iget-boolean v0, p0, Lio/socket/client/Manager;->reconnecting:Z

    return v0
.end method

.method public open()Lio/socket/client/Manager;
    .registers 2

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;

    move-result-object v0

    return-object v0
.end method

.method public open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;
    .registers 3

    .line 270
    new-instance v0, Lio/socket/client/Manager$1;

    invoke-direct {v0, p0, p1}, Lio/socket/client/Manager$1;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager$OpenCallback;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method packet(Lio/socket/parser/Packet;)V
    .registers 6

    .line 485
    sget-object v0, Lio/socket/client/Manager;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const-string v3, "writing packet %s"

    .line 486
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 490
    :cond_19
    iget-object v0, p1, Lio/socket/parser/Packet;->query:Ljava/lang/String;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget v0, p1, Lio/socket/parser/Packet;->type:I

    if-nez v0, :cond_41

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/socket/parser/Packet;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lio/socket/parser/Packet;->nsp:Ljava/lang/String;

    .line 494
    :cond_41
    iget-boolean v0, p0, Lio/socket/client/Manager;->encoding:Z

    if-nez v0, :cond_52

    .line 495
    iput-boolean v2, p0, Lio/socket/client/Manager;->encoding:Z

    .line 496
    iget-object v0, p0, Lio/socket/client/Manager;->encoder:Lio/socket/parser/Parser$Encoder;

    new-instance v1, Lio/socket/client/Manager$10;

    invoke-direct {v1, p0, p0}, Lio/socket/client/Manager$10;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V

    invoke-interface {v0, p1, v1}, Lio/socket/parser/Parser$Encoder;->encode(Lio/socket/parser/Packet;Lio/socket/parser/Parser$Encoder$Callback;)V

    goto :goto_57

    .line 511
    :cond_52
    iget-object v0, p0, Lio/socket/client/Manager;->packetBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_57
    return-void
.end method

.method public final randomizationFactor()D
    .registers 3

    .line 220
    iget-wide v0, p0, Lio/socket/client/Manager;->_randomizationFactor:D

    return-wide v0
.end method

.method public randomizationFactor(D)Lio/socket/client/Manager;
    .registers 4

    .line 224
    iput-wide p1, p0, Lio/socket/client/Manager;->_randomizationFactor:D

    .line 225
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v0, :cond_9

    .line 226
    invoke-virtual {v0, p1, p2}, Lio/socket/backo/Backoff;->setJitter(D)Lio/socket/backo/Backoff;

    :cond_9
    return-object p0
.end method

.method public reconnection(Z)Lio/socket/client/Manager;
    .registers 2

    .line 190
    iput-boolean p1, p0, Lio/socket/client/Manager;->_reconnection:Z

    return-object p0
.end method

.method public reconnectionAttempts(I)Lio/socket/client/Manager;
    .registers 2

    .line 203
    iput p1, p0, Lio/socket/client/Manager;->_reconnectionAttempts:I

    return-object p0
.end method

.method public final reconnectionDelay()J
    .registers 3

    .line 208
    iget-wide v0, p0, Lio/socket/client/Manager;->_reconnectionDelay:J

    return-wide v0
.end method

.method public reconnectionDelay(J)Lio/socket/client/Manager;
    .registers 4

    .line 212
    iput-wide p1, p0, Lio/socket/client/Manager;->_reconnectionDelay:J

    .line 213
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v0, :cond_9

    .line 214
    invoke-virtual {v0, p1, p2}, Lio/socket/backo/Backoff;->setMin(J)Lio/socket/backo/Backoff;

    :cond_9
    return-object p0
.end method

.method public final reconnectionDelayMax()J
    .registers 3

    .line 232
    iget-wide v0, p0, Lio/socket/client/Manager;->_reconnectionDelayMax:J

    return-wide v0
.end method

.method public reconnectionDelayMax(J)Lio/socket/client/Manager;
    .registers 4

    .line 236
    iput-wide p1, p0, Lio/socket/client/Manager;->_reconnectionDelayMax:J

    .line 237
    iget-object v0, p0, Lio/socket/client/Manager;->backoff:Lio/socket/backo/Backoff;

    if-eqz v0, :cond_9

    .line 238
    invoke-virtual {v0, p1, p2}, Lio/socket/backo/Backoff;->setMax(J)Lio/socket/backo/Backoff;

    :cond_9
    return-object p0
.end method

.method public socket(Ljava/lang/String;Lio/socket/client/Manager$Options;)Lio/socket/client/Socket;
    .registers 5

    .line 447
    iget-object v0, p0, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/Socket;

    if-nez v0, :cond_2f

    .line 449
    new-instance v0, Lio/socket/client/Socket;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/client/Socket;-><init>(Lio/socket/client/Manager;Ljava/lang/String;Lio/socket/client/Manager$Options;)V

    .line 450
    iget-object p2, p0, Lio/socket/client/Manager;->nsps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/socket/client/Socket;

    if-eqz p2, :cond_1b

    move-object v0, p2

    goto :goto_2f

    .line 456
    :cond_1b
    new-instance p2, Lio/socket/client/Manager$8;

    invoke-direct {p2, p0, p0, v0}, Lio/socket/client/Manager$8;-><init>(Lio/socket/client/Manager;Lio/socket/client/Manager;Lio/socket/client/Socket;)V

    const-string v1, "connecting"

    invoke-virtual {v0, v1, p2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 462
    new-instance p2, Lio/socket/client/Manager$9;

    invoke-direct {p2, p0, v0, p0, p1}, Lio/socket/client/Manager$9;-><init>(Lio/socket/client/Manager;Lio/socket/client/Socket;Lio/socket/client/Manager;Ljava/lang/String;)V

    const-string p1, "connect"

    invoke-virtual {v0, p1, p2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public timeout(J)Lio/socket/client/Manager;
    .registers 3

    .line 248
    iput-wide p1, p0, Lio/socket/client/Manager;->_timeout:J

    return-object p0
.end method
