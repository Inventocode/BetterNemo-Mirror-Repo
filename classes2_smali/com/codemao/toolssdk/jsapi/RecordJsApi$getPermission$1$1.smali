.class final Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecordJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermission(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 235
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 3

    if-eqz p1, :cond_a

    .line 237
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    goto :goto_11

    .line 239
    :cond_a
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->access$getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    :goto_11
    return-void
.end method
