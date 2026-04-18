.class public Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;
.super Ljava/lang/Object;
.source "SocketIOBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSocketIOBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SocketIOBase.kt\ncom/codemao/toolssdk/aikids/socket/SocketIOBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation


# instance fields
.field private final gson$delegate:Lkotlin/Lazy;

.field private mSocket:Lio/socket/client/Socket;

.field private final options$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$4tsXOQvY1qxFO7jmsyK9eaYfo5M([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->registerSystemEvent$lambda$4([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9CCRu20sOQp43yf00DPtb77QQXc([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->registerSystemEvent$lambda$2([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1kf1OvJAqpuc5aY_NbuhXdo87Y([Ljava/lang/Object;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->registerSystemEvent$lambda$3([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$options$2;->INSTANCE:Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$options$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->options$delegate:Lkotlin/Lazy;

    .line 16
    sget-object v0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$gson$2;->INSTANCE:Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$gson$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getOptions()Lio/socket/client/IO$Options;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->options$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/socket/client/IO$Options;

    return-object v0
.end method

.method private static final registerSystemEvent$lambda$2([Ljava/lang/Object;)V
    .registers 4

    .line 47
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统事件:已连接到服务器:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString(this)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerSystemEvent$lambda$3([Ljava/lang/Object;)V
    .registers 4

    .line 51
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统事件:error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString(this)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerSystemEvent$lambda$4([Ljava/lang/Object;)V
    .registers 4

    .line 55
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "系统事件:message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString(this)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final commonEmitEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "push_audio_byte_data"

    .line 71
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 74
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "发送事件:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 76
    :cond_30
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lio/socket/client/Socket;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    :cond_3d
    return-void
.end method

.method public final executeConnect()V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lio/socket/client/Socket;->connect()Lio/socket/client/Socket;

    .line 61
    :cond_7
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "发起连接:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    return-void
.end method

.method public executeDisconnect(Z)V
    .registers 2

    .line 65
    iget-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lio/socket/client/Socket;->disconnect()Lio/socket/client/Socket;

    :cond_7
    return-void
.end method

.method protected final getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method protected final getMSocket()Lio/socket/client/Socket;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    return-object v0
.end method

.method protected final parseData([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "arrayData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clazz"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    :try_start_11
    aget-object p1, p1, v0

    .line 86
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "原始数据:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    .line 87
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_51

    .line 88
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",后端数据:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dSocketIO(Ljava/lang/String;)V

    return-object p1

    .line 92
    :cond_51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",数据结构异常"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_65} :catch_66

    return-object v1

    :catch_66
    move-exception p1

    .line 96
    sget-object p3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",json异常:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    return-object v1
.end method

.method protected final registerSystemEvent()V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    const-string v1, "connect"

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 46
    :cond_9
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz v0, :cond_12

    sget-object v2, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda1;->INSTANCE:Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 49
    :cond_12
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    const-string v1, "error"

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 50
    :cond_1b
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz v0, :cond_24

    sget-object v2, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 53
    :cond_24
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    const-string v1, "message"

    if-eqz v0, :cond_2d

    invoke-virtual {v0, v1}, Lio/socket/emitter/Emitter;->off(Ljava/lang/String;)Lio/socket/emitter/Emitter;

    .line 54
    :cond_2d
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    if-eqz v0, :cond_36

    sget-object v2, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda0;->INSTANCE:Lcom/codemao/toolssdk/aikids/socket/SocketIOBase$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1, v2}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    :cond_36
    return-void
.end method

.method protected final setMSocket(Lio/socket/client/Socket;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    return-void
.end method

.method protected final setReconnectionConfig()V
    .registers 4

    .line 35
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/socket/client/Manager$Options;->reconnection:Z

    .line 36
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    iput-wide v1, v0, Lio/socket/client/Manager$Options;->reconnectionDelay:J

    .line 37
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    iput-wide v1, v0, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    .line 38
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    .line 39
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    const-wide/16 v1, 0x1388

    iput-wide v1, v0, Lio/socket/client/Manager$Options;->timeout:J

    .line 40
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "设置重连"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    return-void
.end method

.method protected final setUrlConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_10

    .line 20
    :try_start_7
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object v0

    iput-object p2, v0, Lio/socket/engineio/client/Transport$Options;->path:Ljava/lang/String;

    goto :goto_10

    :catch_e
    move-exception p1

    goto :goto_60

    .line 21
    :cond_10
    :goto_10
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object p2

    const-string v0, "websocket"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lio/socket/engineio/client/Socket$Options;->transports:[Ljava/lang/String;

    if-eqz p3, :cond_24

    .line 22
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object p2

    iput-object p3, p2, Lio/socket/engineio/client/Socket$Options;->query:Ljava/lang/String;

    .line 23
    :cond_24
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object p2

    const/4 p3, 0x1

    iput-boolean p3, p2, Lio/socket/client/IO$Options;->forceNew:Z

    .line 24
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object p2

    const/4 p3, 0x0

    iput-boolean p3, p2, Lio/socket/engineio/client/Socket$Options;->rememberUpgrade:Z

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    .line 27
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->getOptions()Lio/socket/client/IO$Options;

    move-result-object p2

    invoke-static {p1, p2}, Lio/socket/client/IO;->socket(Ljava/lang/String;Lio/socket/client/IO$Options;)Lio/socket/client/Socket;

    move-result-object p2

    iput-object p2, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    .line 28
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "执行socket连接配置:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/socket/SocketIOBase;->mSocket:Lio/socket/client/Socket;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_5f} :catch_e

    goto :goto_76

    .line 30
    :goto_60
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "初始化异常:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->eSocketIO(Ljava/lang/String;)V

    :goto_76
    return-void
.end method
