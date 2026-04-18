.class final Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->write(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 118
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;->invoke(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/Void;
    .registers 6

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 v0, 0x0

    if-eqz p1, :cond_19

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$write$function$1;->this$0:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v3, 0x7d0

    invoke-direct {v2, v3, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_19
    return-object v0
.end method
