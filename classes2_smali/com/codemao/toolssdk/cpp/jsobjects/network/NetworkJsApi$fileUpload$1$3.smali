.class final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NetworkJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->fileUpload(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.cpp.jsobjects.network.NetworkJsApi$fileUpload$1$3"
    f = "NetworkJsApi.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $startTime:J

.field final synthetic $uploadKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$uploadKey:Ljava/lang/String;

    iput-wide p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$uploadKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$startTime:J

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_26

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/32 v3, 0xc350

    .line 242
    iput v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_26

    return-object v0

    .line 243
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_42

    .line 245
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$uploadKey:Ljava/lang/String;

    const/4 p1, -0x1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$3;->$startTime:J

    invoke-static {v5, v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "检测到文件上传50秒没有结果"

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$sendReport(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;IZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 247
    :cond_42
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
