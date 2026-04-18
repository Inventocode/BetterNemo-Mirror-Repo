.class public Lio/socket/engineio/client/transports/WebSocket;
.super Lio/socket/engineio/client/Transport;
.source "WebSocket.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private ws:Lokhttp3/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lio/socket/engineio/client/transports/PollingXHR;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/transports/WebSocket;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    const-string p1, "websocket"

    .line 34
    iput-object p1, p0, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/socket/engineio/client/transports/WebSocket;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/socket/engineio/client/Transport;->onOpen()V

    return-void
.end method

.method static synthetic access$100(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->onData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/socket/engineio/client/transports/WebSocket;[B)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->onData([B)V

    return-void
.end method

.method static synthetic access$300(Lio/socket/engineio/client/transports/WebSocket;)V
    .registers 1

    .line 24
    invoke-virtual {p0}, Lio/socket/engineio/client/Transport;->onClose()V

    return-void
.end method

.method static synthetic access$400(Lio/socket/engineio/client/transports/WebSocket;Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lio/socket/engineio/client/Transport;->onError(Ljava/lang/String;Ljava/lang/Exception;)Lio/socket/engineio/client/Transport;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/transports/WebSocket;)Lokhttp3/WebSocket;
    .registers 1

    .line 24
    iget-object p0, p0, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/logging/Logger;
    .registers 1

    .line 24
    sget-object v0, Lio/socket/engineio/client/transports/WebSocket;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected doClose()V
    .registers 4

    .line 160
    iget-object v0, p0, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    if-eqz v0, :cond_e

    const/16 v1, 0x3e8

    const-string v2, ""

    .line 161
    invoke-interface {v0, v1, v2}, Lokhttp3/WebSocket;->close(ILjava/lang/String;)Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    :cond_e
    return-void
.end method

.method protected doOpen()V
    .registers 8

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "requestHeaders"

    .line 39
    invoke-virtual {p0, v2, v1}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 42
    iget-object v1, p0, Lio/socket/engineio/client/Transport;->webSocketFactory:Lokhttp3/WebSocket$Factory;

    if-eqz v1, :cond_17

    goto :goto_1c

    :cond_17
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 43
    :goto_1c
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {p0}, Lio/socket/engineio/client/transports/WebSocket;->uri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_47

    .line 49
    :cond_5d
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 50
    new-instance v2, Lio/socket/engineio/client/transports/WebSocket$1;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/transports/WebSocket$1;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V

    invoke-interface {v1, v0, v2}, Lokhttp3/WebSocket$Factory;->newWebSocket(Lokhttp3/Request;Lokhttp3/WebSocketListener;)Lokhttp3/WebSocket;

    move-result-object v0

    iput-object v0, p0, Lio/socket/engineio/client/transports/WebSocket;->ws:Lokhttp3/WebSocket;

    return-void
.end method

.method protected uri()Ljava/lang/String;
    .registers 7

    .line 167
    iget-object v0, p0, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    :cond_9
    iget-boolean v1, p0, Lio/socket/engineio/client/Transport;->secure:Z

    const-string v2, "wss"

    const-string v3, "ws"

    if-eqz v1, :cond_13

    move-object v1, v2

    goto :goto_14

    :cond_13
    move-object v1, v3

    .line 174
    :goto_14
    iget v4, p0, Lio/socket/engineio/client/Transport;->port:I

    const-string v5, ":"

    if-lez v4, :cond_44

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget v2, p0, Lio/socket/engineio/client/Transport;->port:I

    const/16 v4, 0x1bb

    if-ne v2, v4, :cond_32

    .line 175
    :cond_26
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget v2, p0, Lio/socket/engineio/client/Transport;->port:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_44

    .line 176
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/socket/engineio/client/Transport;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_46

    :cond_44
    const-string v2, ""

    .line 179
    :goto_46
    iget-boolean v3, p0, Lio/socket/engineio/client/Transport;->timestampRequests:Z

    if-eqz v3, :cond_53

    .line 180
    iget-object v3, p0, Lio/socket/engineio/client/Transport;->timestampParam:Ljava/lang/String;

    invoke-static {}, Lio/socket/yeast/Yeast;->yeast()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_53
    invoke-static {v0}, Lio/socket/parseqs/ParseQS;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6e

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_6e
    iget-object v3, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_9c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9e

    :cond_9c
    iget-object v1, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    :goto_9e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/socket/engineio/client/Transport;->path:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected write([Lio/socket/engineio/parser/Packet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->writable:Z

    .line 118
    new-instance v1, Lio/socket/engineio/client/transports/WebSocket$2;

    invoke-direct {v1, p0, p0}, Lio/socket/engineio/client/transports/WebSocket$2;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 133
    array-length v3, p1

    aput v3, v2, v0

    .line 134
    array-length v3, p1

    :goto_f
    if-ge v0, v3, :cond_29

    aget-object v4, p1, v0

    .line 135
    iget-object v5, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v5, v6, :cond_1e

    sget-object v6, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v5, v6, :cond_1e

    goto :goto_29

    .line 140
    :cond_1e
    new-instance v5, Lio/socket/engineio/client/transports/WebSocket$3;

    invoke-direct {v5, p0, p0, v2, v1}, Lio/socket/engineio/client/transports/WebSocket$3;-><init>(Lio/socket/engineio/client/transports/WebSocket;Lio/socket/engineio/client/transports/WebSocket;[ILjava/lang/Runnable;)V

    invoke-static {v4, v5}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_29
    :goto_29
    return-void
.end method
