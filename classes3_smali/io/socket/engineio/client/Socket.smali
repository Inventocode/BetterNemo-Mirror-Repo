.class public Lio/socket/engineio/client/Socket;
.super Lio/socket/emitter/Emitter;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/client/Socket$Options;,
        Lio/socket/engineio/client/Socket$ReadyState;
    }
.end annotation


# static fields
.field private static defaultCallFactory:Lokhttp3/Call$Factory;

.field private static defaultOkHttpClient:Lokhttp3/OkHttpClient;

.field private static defaultWebSocketFactory:Lokhttp3/WebSocket$Factory;

.field private static final logger:Ljava/util/logging/Logger;

.field private static priorWebsocketSuccess:Z


# instance fields
.field private callFactory:Lokhttp3/Call$Factory;

.field private heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field hostname:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private final onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

.field private path:Ljava/lang/String;

.field private pingInterval:J

.field private pingIntervalTimer:Ljava/util/concurrent/Future;

.field private pingTimeout:J

.field private pingTimeoutTimer:Ljava/util/concurrent/Future;

.field private policyPort:I

.field port:I

.field private prevBufferLen:I

.field private query:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readyState:Lio/socket/engineio/client/Socket$ReadyState;

.field private rememberUpgrade:Z

.field private secure:Z

.field private timestampParam:Ljava/lang/String;

.field private timestampRequests:Z

.field transport:Lio/socket/engineio/client/Transport;

.field private transportOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/socket/engineio/client/Transport$Options;",
            ">;"
        }
    .end annotation
.end field

.field private transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upgrade:Z

.field private upgrades:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private upgrading:Z

.field private webSocketFactory:Lokhttp3/WebSocket$Factory;

.field writeBuffer:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lio/socket/engineio/parser/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 145
    new-instance v0, Lio/socket/engineio/client/Socket$Options;

    invoke-direct {v0}, Lio/socket/engineio/client/Socket$Options;-><init>()V

    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$Options;)V

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Socket$Options;)V
    .registers 8

    .line 177
    invoke-direct {p0}, Lio/socket/emitter/Emitter;-><init>()V

    .line 128
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    .line 137
    new-instance v0, Lio/socket/engineio/client/Socket$1;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$1;-><init>(Lio/socket/engineio/client/Socket;)V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    .line 178
    iget-object v0, p1, Lio/socket/engineio/client/Socket$Options;->host:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz v0, :cond_42

    const-string v2, ":"

    .line 180
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_40

    const/16 v2, 0x5b

    .line 182
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_34

    add-int/2addr v2, v4

    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_34
    const/16 v2, 0x5d

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v1, :cond_40

    .line 185
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_40
    iput-object v0, p1, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    .line 190
    :cond_42
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$Options;->secure:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->secure:Z

    .line 192
    iget v2, p1, Lio/socket/engineio/client/Transport$Options;->port:I

    if-ne v2, v1, :cond_53

    if-eqz v0, :cond_4f

    const/16 v0, 0x1bb

    goto :goto_51

    :cond_4f
    const/16 v0, 0x50

    .line 194
    :goto_51
    iput v0, p1, Lio/socket/engineio/client/Transport$Options;->port:I

    .line 197
    :cond_53
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    const-string v0, "localhost"

    :goto_5a
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    .line 198
    iget v0, p1, Lio/socket/engineio/client/Transport$Options;->port:I

    iput v0, p0, Lio/socket/engineio/client/Socket;->port:I

    .line 199
    iget-object v0, p1, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 200
    invoke-static {v0}, Lio/socket/parseqs/ParseQS;->decode(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    goto :goto_6e

    :cond_69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_6e
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->query:Ljava/util/Map;

    .line 201
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$Options;->upgrade:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->upgrade:Z

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    if-eqz v1, :cond_7e

    goto :goto_80

    :cond_7e
    const-string v1, "/engine.io"

    :goto_80
    const-string v2, "/$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    .line 203
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    if-eqz v0, :cond_9b

    goto :goto_9d

    :cond_9b
    const-string v0, "t"

    :goto_9d
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->timestampParam:Ljava/lang/String;

    .line 204
    iget-boolean v0, p1, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->timestampRequests:Z

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/socket/engineio/client/Socket$Options;->transports:[Ljava/lang/String;

    if-eqz v1, :cond_aa

    goto :goto_b2

    :cond_aa
    const-string v1, "polling"

    const-string v2, "websocket"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    :goto_b2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    .line 207
    iget-object v0, p1, Lio/socket/engineio/client/Socket$Options;->transportOptions:Ljava/util/Map;

    if-eqz v0, :cond_c0

    goto :goto_c5

    :cond_c0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_c5
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->transportOptions:Ljava/util/Map;

    .line 209
    iget v0, p1, Lio/socket/engineio/client/Transport$Options;->policyPort:I

    if-eqz v0, :cond_cc

    goto :goto_ce

    :cond_cc
    const/16 v0, 0x34b

    :goto_ce
    iput v0, p0, Lio/socket/engineio/client/Socket;->policyPort:I

    .line 210
    iget-boolean v0, p1, Lio/socket/engineio/client/Socket$Options;->rememberUpgrade:Z

    iput-boolean v0, p0, Lio/socket/engineio/client/Socket;->rememberUpgrade:Z

    .line 211
    iget-object v0, p1, Lio/socket/engineio/client/Transport$Options;->callFactory:Lokhttp3/Call$Factory;

    if-eqz v0, :cond_d9

    goto :goto_db

    :cond_d9
    sget-object v0, Lio/socket/engineio/client/Socket;->defaultCallFactory:Lokhttp3/Call$Factory;

    :goto_db
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->callFactory:Lokhttp3/Call$Factory;

    .line 212
    iget-object p1, p1, Lio/socket/engineio/client/Transport$Options;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    if-eqz p1, :cond_e2

    goto :goto_e4

    :cond_e2
    sget-object p1, Lio/socket/engineio/client/Socket;->defaultWebSocketFactory:Lokhttp3/WebSocket$Factory;

    :goto_e4
    iput-object p1, p0, Lio/socket/engineio/client/Socket;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    if-nez v0, :cond_f7

    .line 214
    sget-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez p1, :cond_f3

    .line 215
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    .line 217
    :cond_f3
    sget-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lio/socket/engineio/client/Socket;->callFactory:Lokhttp3/Call$Factory;

    .line 219
    :cond_f7
    iget-object p1, p0, Lio/socket/engineio/client/Socket;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    if-nez p1, :cond_10a

    .line 220
    sget-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez p1, :cond_106

    .line 221
    new-instance p1, Lokhttp3/OkHttpClient;

    invoke-direct {p1}, Lokhttp3/OkHttpClient;-><init>()V

    sput-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    .line 223
    :cond_106
    sget-object p1, Lio/socket/engineio/client/Socket;->defaultOkHttpClient:Lokhttp3/OkHttpClient;

    iput-object p1, p0, Lio/socket/engineio/client/Socket;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    :cond_10a
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_7

    .line 174
    :cond_3
    invoke-static {p1, p2}, Lio/socket/engineio/client/Socket$Options;->access$100(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)Lio/socket/engineio/client/Socket$Options;

    move-result-object p2

    :goto_7
    invoke-direct {p0, p2}, Lio/socket/engineio/client/Socket;-><init>(Lio/socket/engineio/client/Socket$Options;)V

    return-void
.end method

.method static synthetic access$000(Lio/socket/engineio/client/Socket;J)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lio/socket/engineio/client/Socket;->onHeartbeat(J)V

    return-void
.end method

.method static synthetic access$1000(Lio/socket/engineio/client/Socket;Lio/socket/engineio/parser/Packet;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method static synthetic access$1100(Lio/socket/engineio/client/Socket;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->onDrain()V

    return-void
.end method

.method static synthetic access$1200()Ljava/util/logging/Logger;
    .registers 1

    .line 36
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1300(Lio/socket/engineio/client/Socket;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lio/socket/engineio/client/Socket;->upgrading:Z

    return p0
.end method

.method static synthetic access$1302(Lio/socket/engineio/client/Socket;Z)Z
    .registers 2

    .line 36
    iput-boolean p1, p0, Lio/socket/engineio/client/Socket;->upgrading:Z

    return p1
.end method

.method static synthetic access$1400(Lio/socket/engineio/client/Socket;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    return-void
.end method

.method static synthetic access$1500(Lio/socket/engineio/client/Socket;)J
    .registers 3

    .line 36
    iget-wide v0, p0, Lio/socket/engineio/client/Socket;->pingTimeout:J

    return-wide v0
.end method

.method static synthetic access$1600(Lio/socket/engineio/client/Socket;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->ping()V

    return-void
.end method

.method static synthetic access$1700(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1800(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1900(Lio/socket/engineio/client/Socket;Ljava/lang/String;[BLjava/lang/Runnable;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lio/socket/engineio/client/Socket;->sendPacket(Ljava/lang/String;[BLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$200(Lio/socket/engineio/client/Socket;)Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lio/socket/engineio/client/Socket;->rememberUpgrade:Z

    return p0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 36
    sget-boolean v0, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .line 36
    sput-boolean p0, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    return p0
.end method

.method static synthetic access$400(Lio/socket/engineio/client/Socket;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;
    .registers 1

    .line 36
    iget-object p0, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    return-object p0
.end method

.method static synthetic access$502(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket$ReadyState;)Lio/socket/engineio/client/Socket$ReadyState;
    .registers 2

    .line 36
    iput-object p1, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    return-object p1
.end method

.method static synthetic access$600(Lio/socket/engineio/client/Socket;Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->setTransport(Lio/socket/engineio/client/Transport;)V

    return-void
.end method

.method static synthetic access$800(Lio/socket/engineio/client/Socket;Ljava/lang/String;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lio/socket/engineio/client/Socket;Ljava/lang/Exception;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Socket;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method private createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;
    .registers 8

    .line 270
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v4, "creating transport \'%s\'"

    .line 271
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 273
    :cond_19
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->query:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x3

    .line 275
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "EIO"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transport"

    .line 276
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v4, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    if-eqz v4, :cond_38

    const-string v5, "sid"

    .line 278
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_38
    iget-object v4, p0, Lio/socket/engineio/client/Socket;->transportOptions:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/socket/engineio/client/Transport$Options;

    .line 284
    new-instance v5, Lio/socket/engineio/client/Transport$Options;

    invoke-direct {v5}, Lio/socket/engineio/client/Transport$Options;-><init>()V

    .line 285
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->query:Ljava/util/Map;

    .line 286
    iput-object p0, v5, Lio/socket/engineio/client/Transport$Options;->socket:Lio/socket/engineio/client/Socket;

    if-eqz v4, :cond_4e

    .line 288
    iget-object v0, v4, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    goto :goto_50

    :cond_4e
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->hostname:Ljava/lang/String;

    :goto_50
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->hostname:Ljava/lang/String;

    if-eqz v4, :cond_57

    .line 289
    iget v0, v4, Lio/socket/engineio/client/Transport$Options;->port:I

    goto :goto_59

    :cond_57
    iget v0, p0, Lio/socket/engineio/client/Socket;->port:I

    :goto_59
    iput v0, v5, Lio/socket/engineio/client/Transport$Options;->port:I

    if-eqz v4, :cond_60

    .line 290
    iget-boolean v0, v4, Lio/socket/engineio/client/Transport$Options;->secure:Z

    goto :goto_62

    :cond_60
    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->secure:Z

    :goto_62
    iput-boolean v0, v5, Lio/socket/engineio/client/Transport$Options;->secure:Z

    if-eqz v4, :cond_69

    .line 291
    iget-object v0, v4, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    goto :goto_6b

    :cond_69
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->path:Ljava/lang/String;

    :goto_6b
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    if-eqz v4, :cond_72

    .line 292
    iget-boolean v0, v4, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    goto :goto_74

    :cond_72
    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->timestampRequests:Z

    :goto_74
    iput-boolean v0, v5, Lio/socket/engineio/client/Transport$Options;->timestampRequests:Z

    if-eqz v4, :cond_7b

    .line 293
    iget-object v0, v4, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    goto :goto_7d

    :cond_7b
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->timestampParam:Ljava/lang/String;

    :goto_7d
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->timestampParam:Ljava/lang/String;

    if-eqz v4, :cond_84

    .line 294
    iget v0, v4, Lio/socket/engineio/client/Transport$Options;->policyPort:I

    goto :goto_86

    :cond_84
    iget v0, p0, Lio/socket/engineio/client/Socket;->policyPort:I

    :goto_86
    iput v0, v5, Lio/socket/engineio/client/Transport$Options;->policyPort:I

    if-eqz v4, :cond_8d

    .line 295
    iget-object v0, v4, Lio/socket/engineio/client/Transport$Options;->callFactory:Lokhttp3/Call$Factory;

    goto :goto_8f

    :cond_8d
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->callFactory:Lokhttp3/Call$Factory;

    :goto_8f
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->callFactory:Lokhttp3/Call$Factory;

    if-eqz v4, :cond_96

    .line 296
    iget-object v0, v4, Lio/socket/engineio/client/Transport$Options;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    goto :goto_98

    :cond_96
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    :goto_98
    iput-object v0, v5, Lio/socket/engineio/client/Transport$Options;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    const-string v0, "websocket"

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 300
    new-instance p1, Lio/socket/engineio/client/transports/WebSocket;

    invoke-direct {p1, v5}, Lio/socket/engineio/client/transports/WebSocket;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    goto :goto_b5

    :cond_a8
    const-string v0, "polling"

    .line 301
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_bd

    .line 302
    new-instance p1, Lio/socket/engineio/client/transports/PollingXHR;

    invoke-direct {p1, v5}, Lio/socket/engineio/client/transports/PollingXHR;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    :goto_b5
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 307
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-object p1

    .line 304
    :cond_bd
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private flush()V
    .registers 5

    .line 655
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_5d

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-boolean v0, v0, Lio/socket/engineio/client/Transport;->writable:Z

    if-eqz v0, :cond_5d

    iget-boolean v0, p0, Lio/socket/engineio/client/Socket;->upgrading:Z

    if-nez v0, :cond_5d

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    .line 656
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 657
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 658
    iget-object v3, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "flushing %d packets in socket"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 660
    :cond_3b
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iput v0, p0, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    .line 661
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Lio/socket/engineio/parser/Packet;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/socket/engineio/parser/Packet;

    invoke-virtual {v0, v1}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "flush"

    .line 662
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    :cond_5d
    return-void
.end method

.method private getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 2

    .line 888
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 889
    :cond_a
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 891
    :cond_10
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private onClose(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 825
    invoke-direct {p0, p1, v0}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private onClose(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 8

    .line 829
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_e

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_e

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_65

    .line 830
    :cond_e
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v4, "socket close with reason: %s"

    .line 831
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 836
    :cond_27
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2e

    .line 837
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 839
    :cond_2e
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_35

    .line 840
    invoke-interface {v0, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 842
    :cond_35
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->heartbeatScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3c

    .line 843
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 847
    :cond_3c
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 850
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->close()Lio/socket/engineio/client/Transport;

    .line 853
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/emitter/Emitter;->off()Lio/socket/emitter/Emitter;

    .line 856
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    aput-object p2, v0, v2

    .line 862
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 866
    iget-object p1, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 867
    iput v3, p0, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    :cond_65
    return-void
.end method

.method private onDrain()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 642
    :goto_2
    iget v2, p0, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    if-ge v1, v2, :cond_e

    .line 643
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 646
    :cond_e
    iput v0, p0, Lio/socket/engineio/client/Socket;->prevBufferLen:I

    .line 647
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_20

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "drain"

    .line 648
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_23

    .line 650
    :cond_20
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    :goto_23
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 7

    .line 816
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_19

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v4, "socket error %s"

    .line 817
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 819
    :cond_19
    sput-boolean v3, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v1, "error"

    .line 820
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    const-string v0, "transport error"

    .line 821
    invoke-direct {p0, v0, p1}, Lio/socket/engineio/client/Socket;->onClose(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private onHandshake(Lio/socket/engineio/client/HandshakeData;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "handshake"

    .line 562
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 563
    iget-object v0, p1, Lio/socket/engineio/client/HandshakeData;->sid:Ljava/lang/String;

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    .line 564
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v1, v1, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    const-string v2, "sid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p1, Lio/socket/engineio/client/HandshakeData;->upgrades:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/socket/engineio/client/Socket;->filterUpgrades(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->upgrades:Ljava/util/List;

    .line 566
    iget-wide v0, p1, Lio/socket/engineio/client/HandshakeData;->pingInterval:J

    iput-wide v0, p0, Lio/socket/engineio/client/Socket;->pingInterval:J

    .line 567
    iget-wide v0, p1, Lio/socket/engineio/client/HandshakeData;->pingTimeout:J

    iput-wide v0, p0, Lio/socket/engineio/client/Socket;->pingTimeout:J

    .line 568
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->onOpen()V

    .line 570
    sget-object p1, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v0, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne p1, v0, :cond_36

    return-void

    .line 571
    :cond_36
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->setPing()V

    .line 573
    iget-object p1, p0, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    const-string v0, "heartbeat"

    invoke-virtual {p0, v0, p1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 574
    iget-object p1, p0, Lio/socket/engineio/client/Socket;->onHeartbeatAsListener:Lio/socket/emitter/Emitter$Listener;

    invoke-virtual {p0, v0, p1}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    return-void
.end method

.method private onHeartbeat(J)V
    .registers 6

    .line 578
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 579
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_8
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_13

    .line 583
    iget-wide p1, p0, Lio/socket/engineio/client/Socket;->pingInterval:J

    iget-wide v0, p0, Lio/socket/engineio/client/Socket;->pingTimeout:J

    add-long/2addr p1, v0

    .line 587
    :cond_13
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/socket/engineio/client/Socket$14;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$14;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/socket/engineio/client/Socket;->pingTimeoutTimer:Ljava/util/concurrent/Future;

    return-void
.end method

.method private onOpen()V
    .registers 5

    .line 512
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    const-string v1, "socket open"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 513
    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    iput-object v1, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    .line 514
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v2, v2, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    const-string v3, "websocket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "open"

    .line 515
    invoke-virtual {p0, v3, v2}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 516
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    .line 518
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v2, v1, :cond_4b

    iget-boolean v1, p0, Lio/socket/engineio/client/Socket;->upgrade:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    instance-of v1, v1, Lio/socket/engineio/client/transports/Polling;

    if-eqz v1, :cond_4b

    const-string v1, "starting upgrade probes"

    .line 519
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->upgrades:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    invoke-direct {p0, v1}, Lio/socket/engineio/client/Socket;->probe(Ljava/lang/String;)V

    goto :goto_3b

    :cond_4b
    return-void
.end method

.method private onPacket(Lio/socket/engineio/parser/Packet;)V
    .registers 7

    .line 527
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->OPENING:Lio/socket/engineio/client/Socket$ReadyState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2c

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->OPEN:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_2c

    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_11

    goto :goto_2c

    .line 555
    :cond_11
    sget-object p1, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_c9

    new-array v0, v2, [Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    aput-object v1, v0, v3

    const-string v1, "packet received with socket readyState \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_c9

    .line 530
    :cond_2c
    :goto_2c
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 531
    iget-object v4, p1, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    aput-object v4, v1, v3

    iget-object v4, p1, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v4, "socket received: type \'%s\', data \'%s\'"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_4a
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    const-string v1, "packet"

    .line 534
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "heartbeat"

    .line 535
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 537
    iget-object v0, p1, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    const-string v1, "open"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "error"

    if-eqz v0, :cond_81

    .line 539
    :try_start_66
    new-instance v0, Lio/socket/engineio/client/HandshakeData;

    iget-object p1, p1, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lio/socket/engineio/client/HandshakeData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;->onHandshake(Lio/socket/engineio/client/HandshakeData;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_72} :catch_73

    goto :goto_c9

    :catch_73
    move-exception p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 541
    new-instance v2, Lio/socket/engineio/client/EngineIOException;

    invoke-direct {v2, p1}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/Throwable;)V

    aput-object v2, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_c9

    .line 543
    :cond_81
    iget-object v0, p1, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    const-string v4, "pong"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 544
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->setPing()V

    new-array p1, v3, [Ljava/lang/Object;

    .line 545
    invoke-virtual {p0, v4, p1}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    goto :goto_c9

    .line 546
    :cond_94
    iget-object v0, p1, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 547
    new-instance v0, Lio/socket/engineio/client/EngineIOException;

    const-string v1, "server error"

    invoke-direct {v0, v1}, Lio/socket/engineio/client/EngineIOException;-><init>(Ljava/lang/String;)V

    .line 548
    iget-object p1, p1, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    iput-object p1, v0, Lio/socket/engineio/client/EngineIOException;->code:Ljava/lang/Object;

    .line 549
    invoke-direct {p0, v0}, Lio/socket/engineio/client/Socket;->onError(Ljava/lang/Exception;)V

    goto :goto_c9

    .line 550
    :cond_ab
    iget-object v0, p1, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    new-array v0, v2, [Ljava/lang/Object;

    .line 551
    iget-object v4, p1, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object v4, v0, v3

    const-string v4, "data"

    invoke-virtual {p0, v4, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    new-array v0, v2, [Ljava/lang/Object;

    .line 552
    iget-object p1, p1, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    :cond_c9
    :goto_c9
    return-void
.end method

.method private ping()V
    .registers 2

    .line 628
    new-instance v0, Lio/socket/engineio/client/Socket$16;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$16;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method private probe(Ljava/lang/String;)V
    .registers 20

    move-object/from16 v9, p0

    .line 351
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_1b

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v10

    const-string v3, "probing transport \'%s\'"

    .line 352
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_1b
    new-array v11, v2, [Lio/socket/engineio/client/Transport;

    .line 354
    invoke-direct/range {p0 .. p1}, Lio/socket/engineio/client/Socket;->createTransport(Ljava/lang/String;)Lio/socket/engineio/client/Transport;

    move-result-object v0

    aput-object v0, v11, v10

    new-array v7, v2, [Z

    aput-boolean v10, v7, v10

    .line 358
    sput-boolean v10, Lio/socket/engineio/client/Socket;->priorWebsocketSuccess:Z

    new-array v12, v2, [Ljava/lang/Runnable;

    .line 362
    new-instance v13, Lio/socket/engineio/client/Socket$7;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v3, p1

    move-object v4, v11

    move-object/from16 v5, p0

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lio/socket/engineio/client/Socket$7;-><init>(Lio/socket/engineio/client/Socket;[ZLjava/lang/String;[Lio/socket/engineio/client/Transport;Lio/socket/engineio/client/Socket;[Ljava/lang/Runnable;)V

    .line 422
    new-instance v6, Lio/socket/engineio/client/Socket$8;

    invoke-direct {v6, v9, v7, v12, v11}, Lio/socket/engineio/client/Socket$8;-><init>(Lio/socket/engineio/client/Socket;[Z[Ljava/lang/Runnable;[Lio/socket/engineio/client/Transport;)V

    .line 437
    new-instance v14, Lio/socket/engineio/client/Socket$9;

    move-object v0, v14

    move-object v2, v11

    move-object v3, v6

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v5}, Lio/socket/engineio/client/Socket$9;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Ljava/lang/String;Lio/socket/engineio/client/Socket;)V

    .line 461
    new-instance v15, Lio/socket/engineio/client/Socket$10;

    invoke-direct {v15, v9, v14}, Lio/socket/engineio/client/Socket$10;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V

    .line 469
    new-instance v8, Lio/socket/engineio/client/Socket$11;

    invoke-direct {v8, v9, v14}, Lio/socket/engineio/client/Socket$11;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;)V

    .line 477
    new-instance v7, Lio/socket/engineio/client/Socket$12;

    invoke-direct {v7, v9, v11, v6}, Lio/socket/engineio/client/Socket$12;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;)V

    .line 490
    new-instance v16, Lio/socket/engineio/client/Socket$13;

    move-object/from16 v0, v16

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, p0

    move-object/from16 p1, v7

    move-object v7, v8

    move-object/from16 v17, v8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lio/socket/engineio/client/Socket$13;-><init>(Lio/socket/engineio/client/Socket;[Lio/socket/engineio/client/Transport;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;Lio/socket/engineio/client/Socket;Lio/socket/emitter/Emitter$Listener;Lio/socket/emitter/Emitter$Listener;)V

    aput-object v16, v12, v10

    .line 501
    aget-object v0, v11, v10

    const-string v1, "open"

    invoke-virtual {v0, v1, v13}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 502
    aget-object v0, v11, v10

    const-string v1, "error"

    invoke-virtual {v0, v1, v14}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 503
    aget-object v0, v11, v10

    const-string v1, "close"

    invoke-virtual {v0, v1, v15}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-object/from16 v0, v17

    .line 505
    invoke-virtual {v9, v1, v0}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    const-string v0, "upgrading"

    move-object/from16 v1, p1

    .line 506
    invoke-virtual {v9, v0, v1}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 508
    aget-object v0, v11, v10

    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->open()Lio/socket/engineio/client/Transport;

    return-void
.end method

.method private sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V
    .registers 5

    .line 734
    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->CLOSING:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v1, p0, Lio/socket/engineio/client/Socket;->readyState:Lio/socket/engineio/client/Socket$ReadyState;

    if-eq v0, v1, :cond_2a

    sget-object v0, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    if-ne v0, v1, :cond_b

    goto :goto_2a

    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "packetCreate"

    .line 738
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 739
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->writeBuffer:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz p2, :cond_27

    .line 741
    new-instance p1, Lio/socket/engineio/client/Socket$19;

    invoke-direct {p1, p0, p2}, Lio/socket/engineio/client/Socket$19;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/Runnable;)V

    const-string p2, "flush"

    invoke-virtual {p0, p2, p1}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 748
    :cond_27
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->flush()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private sendPacket(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 720
    new-instance v0, Lio/socket/engineio/parser/Packet;

    invoke-direct {v0, p1}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendPacket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .line 724
    new-instance v0, Lio/socket/engineio/parser/Packet;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    invoke-direct {p0, v0, p3}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendPacket(Ljava/lang/String;[BLjava/lang/Runnable;)V
    .registers 5

    .line 729
    new-instance v0, Lio/socket/engineio/parser/Packet;

    invoke-direct {v0, p1, p2}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    invoke-direct {p0, v0, p3}, Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPing()V
    .registers 6

    .line 602
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 603
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 607
    :cond_8
    invoke-direct {p0}, Lio/socket/engineio/client/Socket;->getHeartbeatScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/socket/engineio/client/Socket$15;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/Socket$15;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    iget-wide v2, p0, Lio/socket/engineio/client/Socket;->pingInterval:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/Socket;->pingIntervalTimer:Ljava/util/concurrent/Future;

    return-void
.end method

.method private setTransport(Lio/socket/engineio/client/Transport;)V
    .registers 8

    .line 313
    sget-object v0, Lio/socket/engineio/client/Socket;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1b

    new-array v2, v4, [Ljava/lang/Object;

    .line 314
    iget-object v5, p1, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v5, v2, v3

    const-string v5, "setting transport %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 318
    :cond_1b
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    if-eqz v2, :cond_3b

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_36

    new-array v1, v4, [Ljava/lang/Object;

    .line 320
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    iget-object v2, v2, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "clearing existing transport %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 322
    :cond_36
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    invoke-virtual {v0}, Lio/socket/emitter/Emitter;->off()Lio/socket/emitter/Emitter;

    .line 325
    :cond_3b
    iput-object p1, p0, Lio/socket/engineio/client/Socket;->transport:Lio/socket/engineio/client/Transport;

    .line 327
    new-instance v0, Lio/socket/engineio/client/Socket$6;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/Socket$6;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    const-string v1, "drain"

    invoke-virtual {p1, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object p1

    new-instance v0, Lio/socket/engineio/client/Socket$5;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/Socket$5;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    const-string v1, "packet"

    .line 332
    invoke-virtual {p1, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object p1

    new-instance v0, Lio/socket/engineio/client/Socket$4;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/Socket$4;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    const-string v1, "error"

    .line 337
    invoke-virtual {p1, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    move-result-object p1

    new-instance v0, Lio/socket/engineio/client/Socket$3;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/Socket$3;-><init>(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Socket;)V

    const-string v1, "close"

    .line 342
    invoke-virtual {p1, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    return-void
.end method


# virtual methods
.method public close()Lio/socket/engineio/client/Socket;
    .registers 2

    .line 757
    new-instance v0, Lio/socket/engineio/client/Socket$20;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$20;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method filterUpgrades(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 872
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 873
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 874
    iget-object v2, p0, Lio/socket/engineio/client/Socket;->transports:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 875
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public id()Ljava/lang/String;
    .registers 2

    .line 884
    iget-object v0, p0, Lio/socket/engineio/client/Socket;->id:Ljava/lang/String;

    return-object v0
.end method

.method public open()Lio/socket/engineio/client/Socket;
    .registers 2

    .line 241
    new-instance v0, Lio/socket/engineio/client/Socket$2;

    invoke-direct {v0, p0}, Lio/socket/engineio/client/Socket$2;-><init>(Lio/socket/engineio/client/Socket;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public send(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    .line 702
    new-instance v0, Lio/socket/engineio/client/Socket$17;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/engineio/client/Socket$17;-><init>(Lio/socket/engineio/client/Socket;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send([BLjava/lang/Runnable;)V
    .registers 4

    .line 711
    new-instance v0, Lio/socket/engineio/client/Socket$18;

    invoke-direct {v0, p0, p1, p2}, Lio/socket/engineio/client/Socket$18;-><init>(Lio/socket/engineio/client/Socket;[BLjava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->write(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 671
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Socket;->send(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([B)V
    .registers 3

    const/4 v0, 0x0

    .line 675
    invoke-virtual {p0, p1, v0}, Lio/socket/engineio/client/Socket;->write([BLjava/lang/Runnable;)V

    return-void
.end method

.method public write([BLjava/lang/Runnable;)V
    .registers 3

    .line 679
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Socket;->send([BLjava/lang/Runnable;)V

    return-void
.end method
