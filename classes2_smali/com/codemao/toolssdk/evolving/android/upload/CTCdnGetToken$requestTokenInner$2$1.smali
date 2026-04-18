.class final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTCdnGetToken.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestTokenInner-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.CTCdnGetToken$requestTokenInner$2$1"
    f = "CTCdnGetToken.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $enableStandby:Z

.field final synthetic $request:Lokhttp3/Request;

.field final synthetic $this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

.field label:I


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lokhttp3/Request;ZLkotlin/coroutines/Continuation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;",
            "Lokhttp3/Request;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    iput-object p2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$request:Lokhttp3/Request;

    iput-boolean p3, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$enableStandby:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
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

    new-instance p1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$request:Lokhttp3/Request;

    iget-boolean v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$enableStandby:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lokhttp3/Request;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 116
    iget v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->label:I

    if-nez v0, :cond_9a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 117
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    invoke-static {p1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->access$getHttpClient(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;)Lokhttp3/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$request:Lokhttp3/Request;

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Lokhttp3/Call;->timeout()Lokio/Timeout;

    move-result-object v0

    const-wide/16 v1, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 119
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 121
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    .line 122
    :goto_37
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取的token数据:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    invoke-static {v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->access$getGson$p(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    return-object p1

    .line 125
    :cond_5c
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取token失败，"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;->$enableStandby:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 126
    new-instance v0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 116
    :cond_9a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
