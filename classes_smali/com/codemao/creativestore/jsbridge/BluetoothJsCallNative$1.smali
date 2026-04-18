.class Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;
.super Ljava/lang/Object;
.source "BluetoothJsCallNative.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->discover(Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
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

    .line 34
    iput-object p2, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;->invoke(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    sget v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_SUCCESS:I

    goto :goto_b

    .line 41
    :cond_9
    sget v0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->RESULT_FAILED:I

    .line 43
    :goto_b
    iget-object v1, p0, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative$1;->val$handler:Lcom/codemao/creativestore/dsbridge/CompletionHandler;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/jsbridge/bean/IResult;

    invoke-direct {v3, v0, p1}, Lcom/codemao/creativestore/jsbridge/bean/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
