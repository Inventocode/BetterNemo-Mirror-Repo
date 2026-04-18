.class final Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
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

.field final synthetic $msg:Ljava/lang/Object;

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->$msg:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 184
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 5

    if-eqz p1, :cond_c

    .line 186
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->$msg:Ljava/lang/Object;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_2d

    .line 188
    :cond_c
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 190
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v1, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v2, 0x1bbe

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-direct {p1, v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-static {v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_2d
    return-void
.end method
