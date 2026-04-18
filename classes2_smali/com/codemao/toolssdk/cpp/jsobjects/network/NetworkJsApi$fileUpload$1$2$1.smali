.class final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lorg/json/JSONObject;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.cpp.jsobjects.network.NetworkJsApi$fileUpload$1$2$1"
    f = "NetworkJsApi.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $file:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $startTime:J

.field final synthetic $uploadKey:Ljava/lang/String;

.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/Pair<",
            "+",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$file:Lkotlin/Pair;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$uploadKey:Ljava/lang/String;

    iput-wide p6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$startTime:J

    const/4 p1, 0x5

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Lorg/json/JSONObject;

    move-object v5, p5

    check-cast v5, Lkotlin/coroutines/Continuation;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->invoke(ZILjava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZILjava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$file:Lkotlin/Pair;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$uploadKey:Ljava/lang/String;

    iget-wide v6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$startTime:J

    move-object v0, v9

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    iput-boolean p1, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->Z$0:Z

    iput p2, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->I$0:I

    iput-object p3, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->L$0:Ljava/lang/Object;

    iput-object p4, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v9, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 205
    iget v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->label:I

    if-nez v0, :cond_100

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->Z$0:Z

    iget p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->I$0:I

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "代理上传文件删除结果："

    const/4 v10, 0x1

    if-eqz v3, :cond_84

    .line 207
    new-instance v11, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/16 v5, 0xc8

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 208
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v4, 0x7d0

    invoke-direct {v1, v4, v11}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 209
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v10, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 210
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 211
    sget-object v4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "代理上传文件成功："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$file:Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/io/File;

    invoke-static {v2, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$deleteAgentFile(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/io/File;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    goto :goto_e2

    .line 214
    :cond_84
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    move v5, p1

    move-object v6, v0

    invoke-direct/range {v4 .. v9}, Lcom/codemao/toolssdk/model/dsbridge/python/NetworkAgentResult;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 215
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v5, 0x1c0f

    invoke-direct {v4, v5, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v10, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 217
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 218
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "代理上传文件失败："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$file:Lkotlin/Pair;

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Ljava/io/File;

    invoke-static {v2, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$deleteAgentFile(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/io/File;)Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    :goto_e2
    if-eqz v3, :cond_e6

    const/4 v0, 0x0

    goto :goto_ea

    .line 221
    :cond_e6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_ea
    move-object v7, v0

    .line 222
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$uploadKey:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v8, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;->$startTime:J

    invoke-static {v8, v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$sendReport(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 223
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 205
    :cond_100
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
