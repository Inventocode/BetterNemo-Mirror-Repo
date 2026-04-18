.class public final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;
.super Ljava/lang/Object;
.source "CTCdnGetToken.kt"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private final httpClient$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$httpClient$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->httpClient$delegate:Lkotlin/Lazy;

    .line 24
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;)Lcom/google/gson/Gson;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getHttpClient(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$requestTokenInner-bMdYcbs(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8

    .line 21
    invoke-direct/range {p0 .. p7}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestTokenInner-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getHeaders(Ljava/lang/String;)Lokhttp3/Headers;
    .registers 4

    .line 79
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    const-string v1, "Authorization"

    .line 80
    invoke-virtual {v0, v1, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 81
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p1

    return-object p1
.end method

.method private final getHttpClient()Lokhttp3/OkHttpClient;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->httpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private final getSuffixName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p1

    .line 27
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const-string p1, ""

    goto :goto_1a

    .line 31
    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1a
    return-object p1
.end method

.method private final getUploadFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    .line 36
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 37
    :goto_16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "0"

    .line 40
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "and"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_32

    const-string p2, "sdk"

    goto :goto_34

    :cond_32
    const-string p2, "app"

    .line 43
    :goto_34
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    const-string v0, "randomUUID()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/codemao/toolssdk/evolving/android/kotlinext/UUIDExtKt;->toShort(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "stringBuilder.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_63
    const-string v0, "UTF-8"

    .line 53
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(charsetName)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    .line 54
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_63 .. :try_end_82} :catch_84

    move-object v1, v0

    goto :goto_89

    :catch_84
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, p2

    :goto_89
    if-nez p1, :cond_8e

    const-string p1, ""

    goto :goto_92

    .line 58
    :cond_8e
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->getSuffixName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    :goto_92
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "\n"

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_5

    const-string p1, "aliyun"

    goto :goto_7

    :cond_5
    const-string p1, "qiniu"

    :goto_7
    if-nez p3, :cond_d

    .line 71
    invoke-direct {p0, p4, p5}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->getUploadFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 73
    :cond_d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p5, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {p5, p1, p2}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getAgentBucketUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&filePaths="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "请求token："

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    return-object p1
.end method

.method private final requestTokenInner-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_16

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    goto :goto_1b

    :cond_16
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;

    invoke-direct {v1, p0, v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lkotlin/coroutines/Continuation;)V

    :goto_1b
    move-object v0, v1

    iget-object v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 103
    iget v2, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    const/4 v9, 0x1

    if-eqz v2, :cond_35

    if-ne v2, v9, :cond_2d

    :try_start_29
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_81

    goto :goto_7a

    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    :try_start_38
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v10, 0x0

    if-eqz p6, :cond_3f

    const/4 v6, 0x1

    goto :goto_40

    :cond_3f
    const/4 v6, 0x0

    :goto_40
    move-object v1, p0

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 112
    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->getUrl(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    move-object v2, p2

    .line 115
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->getHeaders(Ljava/lang/String;)Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 116
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v3, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;

    if-eqz p1, :cond_6d

    const/4 v10, 0x1

    :cond_6d
    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v10, v4}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$2$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lokhttp3/Request;ZLkotlin/coroutines/Continuation;)V

    iput v9, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestTokenInner$1;->label:I

    invoke-static {v2, v3, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v8, :cond_7a

    return-object v8

    :cond_7a
    :goto_7a
    check-cast v1, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 111
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_80
    .catchall {:try_start_38 .. :try_end_80} :catchall_81

    goto :goto_8c

    :catchall_81
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_8c
    return-object v0
.end method


# virtual methods
.method public final requestToken-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_16

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;->label:I

    move-object v10, p0

    goto :goto_1c

    :cond_16
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;

    move-object v10, p0

    invoke-direct {v1, p0, v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    move-object v9, v1

    iget-object v0, v9, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 88
    iget v2, v9, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    if-ne v2, v3, :cond_34

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    goto :goto_51

    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iput v3, v9, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken$requestToken$1;->label:I

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestTokenInner-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_51

    return-object v1

    :cond_51
    :goto_51
    return-object v0
.end method
