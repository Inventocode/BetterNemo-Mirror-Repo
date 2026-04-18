.class final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppFileJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$onPhoto(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
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

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 630
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 5

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cdnURL"

    .line 632
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "permissible"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {v1, v2, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 637
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->access$getCameraCloseCallback$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 639
    :cond_32
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "返回给web的结果:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    return-void
.end method
