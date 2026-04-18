.class public final Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;
.super Ljava/lang/Object;
.source "AliOSSUpload.kt"


# instance fields
.field private final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/manager/HttpClientManager;->INSTANCE:Lcom/codemao/toolssdk/manager/HttpClientManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/HttpClientManager;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->getOkHttpDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 26
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v3, "为okhttp设置dns3"

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 30
    :cond_1f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final synthetic access$getClient$p(Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;)Lokhttp3/OkHttpClient;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->client:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method private final performUpload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/model/http/CndUploadToken;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            "Lokhttp3/RequestBody;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v10, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object/from16 v5, p5

    move-object v6, p3

    move-object v7, p0

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;-><init>(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v1, p7

    invoke-static {v0, v10, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_21

    return-object v0

    :cond_21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public checkToken(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;)Lcom/codemao/toolssdk/model/http/CndUploadToken;
    .registers 4

    const-string v0, "tokenResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->getTokens()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/http/CndUploadToken;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 39
    :goto_14
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->getUpload_url()Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    return-object v0

    .line 41
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "获取的token数据不完整"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;

    if-eqz v0, :cond_13

    move-object v0, p4

    check-cast v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;

    iget v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;

    invoke-direct {v0, p0, p4}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p4, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 46
    iget v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    const/4 v10, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3e

    if-eq v1, v2, :cond_35

    if-ne v1, v10, :cond_2d

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e3

    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    iget-object p1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->L$0:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function5;

    :try_start_3a
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_9f

    goto :goto_81

    :cond_3e
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    :try_start_41
    sget-object p4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->checkToken(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;)Lcom/codemao/toolssdk/model/http/CndUploadToken;

    move-result-object v3

    .line 53
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_88

    const-string p2, "application/octet-stream"

    .line 58
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4, p2}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v1, p4, p2}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 59
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_68

    const-string p2, ""

    :cond_68
    move-object v5, p2

    .line 60
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string p2, "file.name"

    invoke-static {v6, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->performUpload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/model/http/CndUploadToken;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_81

    return-object v9

    .line 61
    :cond_81
    :goto_81
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_aa

    .line 55
    :cond_88
    new-instance p1, Ljava/io/IOException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "文件不存在: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9f
    .catchall {:try_start_41 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception p1

    .line 51
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_aa
    move-object v1, p3

    .line 61
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_e3

    .line 62
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "阿里云上传文件失败2: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p2, v4}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 64
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 p2, 0x258

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    iput-object p1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->L$0:Ljava/lang/Object;

    iput v10, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadFile$1;->label:I

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v9, :cond_e3

    return-object v9

    .line 66
    :cond_e3
    :goto_e3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public uploadText(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lorg/json/JSONObject;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->label:I

    move-object/from16 v10, p0

    goto :goto_1e

    :cond_17
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;

    move-object/from16 v10, p0

    invoke-direct {v1, v10, v0}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v0, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 68
    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->label:I

    const/4 v12, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    if-eq v2, v3, :cond_3b

    if-ne v2, v12, :cond_33

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_e0

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    iget-object v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function5;

    :try_start_3f
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_44

    move-object v13, v2

    goto :goto_91

    :catchall_44
    move-exception v0

    move-object v13, v2

    goto :goto_9d

    :cond_47
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    :try_start_4a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 74
    invoke-virtual/range {p0 .. p1}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->checkToken(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;)Lcom/codemao/toolssdk/model/http/CndUploadToken;

    move-result-object v4

    .line 75
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application/json"

    .line 77
    sget-object v13, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2, v0}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    invoke-static/range {v13 .. v19}, Lokhttp3/RequestBody$Companion;->create$default(Lokhttp3/RequestBody$Companion;[BLokhttp3/MediaType;IIILjava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v5

    .line 78
    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7b

    const-string v0, ""
    :try_end_7b
    .catchall {:try_start_4a .. :try_end_7b} :catchall_9a

    :cond_7b
    move-object/from16 v13, p3

    move-object v7, v0

    .line 79
    :try_start_7e
    iput-object v13, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->L$0:Ljava/lang/Object;

    iput v3, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->label:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v6, v7

    move-object/from16 v8, p3

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->performUpload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/model/http/CndUploadToken;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_91

    return-object v11

    .line 80
    :cond_91
    :goto_91
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 73
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_97
    .catchall {:try_start_7e .. :try_end_97} :catchall_98

    goto :goto_a7

    :catchall_98
    move-exception v0

    goto :goto_9d

    :catchall_9a
    move-exception v0

    move-object/from16 v13, p3

    :goto_9d
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_a7
    move-object v2, v13

    .line 80
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "阿里云上传文本失败2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 82
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v3, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 83
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x258

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v0, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->L$0:Ljava/lang/Object;

    iput v12, v1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$uploadText$1;->label:I

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_e0

    return-object v11

    .line 85
    :cond_e0
    :goto_e0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
