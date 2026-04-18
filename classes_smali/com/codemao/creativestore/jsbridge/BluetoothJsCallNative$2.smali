.class Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;
.super Ljava/lang/Object;
.source "BluetoothJsCallNative.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->connect(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 3

    .line 55
    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 55
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;->invoke([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke([Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .line 58
    iget-object v0, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$2;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    sget v3, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    new-instance v4, Lcom/codemao/creativestore/jsbridge/bean/ConnectReturnData;

    invoke-direct {v4, p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectReturnData;-><init>([Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
