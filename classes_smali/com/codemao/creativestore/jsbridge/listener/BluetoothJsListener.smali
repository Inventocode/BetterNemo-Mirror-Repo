.class public interface abstract Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;
.super Ljava/lang/Object;
.source "BluetoothJsListener.kt"


# virtual methods
.method public abstract connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ConnectData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V
.end method

.method public abstract discover(Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/DiscoverData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;)V
.end method

.method public abstract getPermissionState()I
.end method

.method public abstract read(Lcom/codemao/creativestore/jsbridge/bean/ReadData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/ReadData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract readRssi(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)I
.end method

.method public abstract stopDiscover()V
.end method

.method public abstract write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/jsbridge/bean/WriteData;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
