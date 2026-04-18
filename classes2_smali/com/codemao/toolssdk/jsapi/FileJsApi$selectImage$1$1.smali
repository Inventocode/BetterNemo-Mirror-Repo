.class final Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FileJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/FileJsApi;->selectImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->$msg:Ljava/lang/Object;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 347
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .registers 4

    if-eqz p1, :cond_b

    .line 349
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->$msg:Ljava/lang/Object;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->this$0:Lcom/codemao/toolssdk/jsapi/FileJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->access$selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_b
    return-void
.end method
