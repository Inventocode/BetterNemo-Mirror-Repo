.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppBluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->discover(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 84
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->invoke(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/Void;
    .registers 7

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x7d0

    goto :goto_b

    :cond_9
    const/16 v0, 0x1bf8

    .line 90
    :goto_b
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "原生给web扫描结果："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v4, v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dBle(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$discover$function1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v3, v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method
