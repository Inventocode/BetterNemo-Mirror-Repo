.class public Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;
.super Ljava/lang/Object;
.source "BluetoothJsCallNative.java"


# static fields
.field public static RESULT_FAILED:I = 0x3e8

.field public static RESULT_SUCCESS:I = 0x7d0

.field public static namespace:Ljava/lang/String; = "bluetooth"


# instance fields
.field private bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;


# direct methods
.method public static synthetic $r8$lambda$KXDaI-YsoOf2iQHPl6Qyf0IJuQI(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->lambda$read$1(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Oqiq42vAhY5kJPbuUIJbs0azvHM(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->lambda$write$0(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    return-void
.end method

.method private static synthetic lambda$read$1(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 94
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v2, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$write$0(Lcom/codemao/creativestore/dsbridge/CompletionHandler;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 p1, 0x0

    if-eqz p0, :cond_15

    .line 81
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v2, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_15
    return-object p1
.end method


# virtual methods
.method public connect(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    .line 55
    new-instance v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;-><init>(Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 62
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p2, :cond_1c

    .line 63
    invoke-interface {p2, p1, v0}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;)V

    :cond_1c
    return-void
.end method

.method public disconnect(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    .line 70
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz v0, :cond_17

    .line 71
    invoke-interface {v0, p1}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    .line 73
    :cond_17
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v1, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public discover(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;

    .line 34
    new-instance v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;-><init>(Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 47
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p2, :cond_1c

    .line 48
    invoke-interface {p2, p1, v0}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->discover(Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;Lkotlin/jvm/functions/Function1;)V

    :cond_1c
    return-void
.end method

.method public enableNotifications(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;

    .line 106
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz v0, :cond_17

    .line 107
    invoke-interface {v0, p1}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;)V

    .line 109
    :cond_17
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v1, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public getPermissionState(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p1, :cond_9

    .line 134
    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->getPermissionState()I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x5

    .line 136
    :goto_a
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v2, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/ReadData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/ReadData;

    .line 93
    new-instance v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 98
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p2, :cond_1c

    .line 99
    invoke-interface {p2, p1, v0}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->read(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Lkotlin/jvm/functions/Function1;)V

    :cond_1c
    return-void
.end method

.method public readRssi(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    .line 116
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz v0, :cond_19

    .line 117
    invoke-interface {v0, p1}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->readRssi(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)I

    move-result p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 119
    :goto_1a
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v2, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public stopDiscover(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 124
    iget-object p1, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p1, :cond_7

    .line 125
    invoke-interface {p1}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->stopDiscover()V

    .line 127
    :cond_7
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v1, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    .line 79
    new-instance v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V

    .line 85
    iget-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    if-eqz p2, :cond_1c

    .line 86
    invoke-interface {p2, p1, v0}, Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;->write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function1;)V

    :cond_1c
    return-void
.end method
