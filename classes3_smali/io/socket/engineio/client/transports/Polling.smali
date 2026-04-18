.class public abstract Lio/socket/engineio/client/transports/Polling;
.super Lio/socket/engineio/client/Transport;
.source "Polling.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private polling:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lio/socket/engineio/client/transports/Polling;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lio/socket/engineio/client/Transport$Options;)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lio/socket/engineio/client/Transport;-><init>(Lio/socket/engineio/client/Transport$Options;)V

    const-string p1, "polling"

    .line 32
    iput-object p1, p0, Lio/socket/engineio/client/Transport;->name:Ljava/lang/String;

    return-void
.end method

.method private _onData(Ljava/lang/Object;)V
    .registers 8

    .line 112
    sget-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_19

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v5, "polling got data %s"

    .line 113
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 115
    :cond_19
    new-instance v2, Lio/socket/engineio/client/transports/Polling$2;

    invoke-direct {v2, p0, p0}, Lio/socket/engineio/client/transports/Polling$2;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    .line 132
    instance-of v5, p1, Ljava/lang/String;

    if-eqz v5, :cond_28

    .line 135
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Lio/socket/engineio/parser/Parser;->decodePayload(Ljava/lang/String;Lio/socket/engineio/parser/Parser$DecodePayloadCallback;)V

    goto :goto_31

    .line 136
    :cond_28
    instance-of v5, p1, [B

    if-eqz v5, :cond_31

    .line 137
    check-cast p1, [B

    invoke-static {p1, v2}, Lio/socket/engineio/parser/Parser;->decodePayload([BLio/socket/engineio/parser/Parser$DecodePayloadCallback;)V

    .line 140
    :cond_31
    :goto_31
    iget-object p1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq p1, v2, :cond_5f

    .line 141
    iput-boolean v4, p0, Lio/socket/engineio/client/transports/Polling;->polling:Z

    new-array p1, v4, [Ljava/lang/Object;

    const-string v2, "pollComplete"

    .line 142
    invoke-virtual {p0, v2, p1}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 144
    iget-object p1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne p1, v2, :cond_4a

    .line 145
    invoke-direct {p0}, Lio/socket/engineio/client/transports/Polling;->poll()V

    goto :goto_5f

    .line 147
    :cond_4a
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_5f

    new-array p1, v3, [Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    aput-object v1, p1, v4

    const-string v1, "ignoring poll - transport state \'%s\'"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method static synthetic access$002(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .registers 2

    .line 18
    iput-object p1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .registers 1

    .line 18
    sget-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$202(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/Transport$ReadyState;)Lio/socket/engineio/client/Transport$ReadyState;
    .registers 2

    .line 18
    iput-object p1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p1
.end method

.method static synthetic access$300(Lio/socket/engineio/client/transports/Polling;)Z
    .registers 1

    .line 18
    iget-boolean p0, p0, Lio/socket/engineio/client/transports/Polling;->polling:Z

    return p0
.end method

.method static synthetic access$400(Lio/socket/engineio/client/transports/Polling;)Lio/socket/engineio/client/Transport$ReadyState;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    return-object p0
.end method

.method static synthetic access$500(Lio/socket/engineio/client/transports/Polling;)V
    .registers 1

    .line 18
    invoke-virtual {p0}, Lio/socket/engineio/client/Transport;->onOpen()V

    return-void
.end method

.method static synthetic access$600(Lio/socket/engineio/client/transports/Polling;)V
    .registers 1

    .line 18
    invoke-virtual {p0}, Lio/socket/engineio/client/Transport;->onClose()V

    return-void
.end method

.method static synthetic access$700(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/parser/Packet;)V
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lio/socket/engineio/client/Transport;->onPacket(Lio/socket/engineio/parser/Packet;)V

    return-void
.end method

.method private poll()V
    .registers 3

    .line 94
    sget-object v0, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v1, "polling"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lio/socket/engineio/client/transports/Polling;->polling:Z

    .line 96
    invoke-virtual {p0}, Lio/socket/engineio/client/transports/Polling;->doPoll()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "poll"

    .line 97
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    return-void
.end method


# virtual methods
.method protected doClose()V
    .registers 4

    .line 157
    new-instance v0, Lio/socket/engineio/client/transports/Polling$3;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/transports/Polling$3;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    .line 169
    iget-object v1, p0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->OPEN:Lio/socket/engineio/client/Transport$ReadyState;

    if-ne v1, v2, :cond_19

    .line 170
    sget-object v1, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v2, "transport open - closing"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 171
    invoke-interface {v0, v1}, Lio/socket/emitter/Emitter$Listener;->call([Ljava/lang/Object;)V

    goto :goto_25

    .line 175
    :cond_19
    sget-object v1, Lio/socket/engineio/client/transports/Polling;->logger:Ljava/util/logging/Logger;

    const-string v2, "transport not open - deferring close"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v1, "open"

    .line 176
    invoke-virtual {p0, v1, v0}, Lio/socket/emitter/Emitter;->once(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :goto_25
    return-void
.end method

.method protected doOpen()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lio/socket/engineio/client/transports/Polling;->poll()V

    return-void
.end method

.method protected abstract doPoll()V
.end method

.method protected abstract doWrite(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method protected abstract doWrite([BLjava/lang/Runnable;)V
.end method

.method protected onData(Ljava/lang/String;)V
    .registers 2

    .line 102
    invoke-direct {p0, p1}, Lio/socket/engineio/client/transports/Polling;->_onData(Ljava/lang/Object;)V

    return-void
.end method

.method protected onData([B)V
    .registers 2

    .line 107
    invoke-direct {p0, p1}, Lio/socket/engineio/client/transports/Polling;->_onData(Ljava/lang/Object;)V

    return-void
.end method

.method public pause(Ljava/lang/Runnable;)V
    .registers 3

    .line 40
    new-instance v0, Lio/socket/engineio/client/transports/Polling$1;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/transports/Polling$1;-><init>(Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected uri()Ljava/lang/String;
    .registers 7

    .line 206
    iget-object v0, p0, Lio/socket/engineio/client/Transport;->query:Ljava/util/Map;

    if-nez v0, :cond_9

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 210
    :cond_9
    iget-boolean v1, p0, Lio/socket/engineio/client/Transport;->secure:Z

    const-string v2, "https"

    const-string v3, "http"

    if-eqz v1, :cond_13

    move-object v1, v2

    goto :goto_14

    :cond_13
    move-object v1, v3

    .line 213
    :goto_14
    iget-boolean v4, p0, Lio/socket/engineio/client/Transport;->timestampRequests:Z

    if-eqz v4, :cond_21

    .line 214
    iget-object v4, p0, Lio/socket/engineio/client/Transport;->timestampParam:Ljava/lang/String;

    invoke-static {}, Lio/socket/yeast/Yeast;->yeast()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_21
    invoke-static {v0}, Lio/socket/parseqs/ParseQS;->encode(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget v4, p0, Lio/socket/engineio/client/Transport;->port:I

    const-string v5, ":"

    if-lez v4, :cond_55

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lio/socket/engineio/client/Transport;->port:I

    const/16 v4, 0x1bb

    if-ne v2, v4, :cond_43

    .line 220
    :cond_37
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget v2, p0, Lio/socket/engineio/client/Transport;->port:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_55

    .line 221
    :cond_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/socket/engineio/client/Transport;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_57

    :cond_55
    const-string v2, ""

    .line 224
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6e

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :cond_6e
    iget-object v3, p0, Lio/socket/engineio/client/Transport;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 229
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lio/socket/engineio/client/Transport;->writable:Z

    .line 183
    new-instance v0, Lio/socket/engineio/client/transports/Polling$4;

    invoke-direct {v0, p0, p0}, Lio/socket/engineio/client/transports/Polling$4;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;)V

    .line 191
    new-instance v1, Lio/socket/engineio/client/transports/Polling$5;

    invoke-direct {v1, p0, p0, v0}, Lio/socket/engineio/client/transports/Polling$5;-><init>(Lio/socket/engineio/client/transports/Polling;Lio/socket/engineio/client/transports/Polling;Ljava/lang/Runnable;)V

    invoke-static {p1, v1}, Lio/socket/engineio/parser/Parser;->encodePayload([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    return-void
.end method
