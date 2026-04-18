.class public final Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;
.super Ljava/lang/Object;
.source "AccountJsApi.kt"

# interfaces
.implements Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/AccountJsApi;->login(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/AccountJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/AccountJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/AccountJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;->this$0:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Z)V
    .registers 6

    if-eqz p1, :cond_5

    const/16 p1, 0x7d0

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 40
    :goto_6
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/AccountJsApi$login$1;->this$0:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    invoke-static {v1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/AccountJsApi;)Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
