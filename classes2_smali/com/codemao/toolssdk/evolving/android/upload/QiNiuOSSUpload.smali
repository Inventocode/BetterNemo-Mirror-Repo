.class public final Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;
.super Ljava/lang/Object;
.source "QiNiuOSSUpload.kt"


# instance fields
.field private final manager$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$manager$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$manager$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->manager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getManager(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;)Lcom/qiniu/android/storage/UploadManager;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->getManager()Lcom/qiniu/android/storage/UploadManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$upload(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 6

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getManager()Lcom/qiniu/android/storage/UploadManager;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->manager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/storage/UploadManager;

    return-object v0
.end method

.method private final upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
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

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_16

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    move-object v9, p0

    goto :goto_1c

    :cond_16
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;

    move-object v9, p0

    invoke-direct {v1, p0, v0}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    iget-object v0, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 45
    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v2, :cond_43

    if-eq v2, v12, :cond_39

    if-ne v2, v11, :cond_31

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b7

    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    iget-object v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function5;

    :try_start_3d
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_6b

    :catchall_41
    move-exception v0

    goto :goto_75

    :cond_43
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    :try_start_46
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 52
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->checkToken(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;)Lcom/codemao/toolssdk/model/http/CndUploadToken;

    move-result-object v5

    .line 53
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v13, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;

    const/4 v8, 0x0

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v4, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V
    :try_end_5e
    .catchall {:try_start_46 .. :try_end_5e} :catchall_72

    move-object/from16 v2, p4

    :try_start_60
    iput-object v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->L$0:Ljava/lang/Object;

    iput v12, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    invoke-static {v0, v13, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6b

    return-object v10

    .line 92
    :cond_6b
    :goto_6b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 51
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_41

    goto :goto_7f

    :catchall_72
    move-exception v0

    move-object/from16 v2, p4

    :goto_75
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :goto_7f
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_b7

    .line 93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "上传失败: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 94
    sget-object v3, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v3, v5}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 95
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/16 v4, 0x258

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    iput-object v0, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->L$0:Ljava/lang/Object;

    iput v11, v1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$1;->label:I

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_b7

    return-object v10

    .line 97
    :cond_b7
    :goto_b7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public checkToken(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;)Lcom/codemao/toolssdk/model/http/CndUploadToken;
    .registers 4

    const-string v0, "tokenResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->getTokens()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/http/CndUploadToken;

    goto :goto_15

    :cond_14
    move-object p1, v0

    :goto_15
    if-eqz p1, :cond_1b

    .line 23
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    return-object p1

    .line 24
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "获取的上传token数据不全"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
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

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_11

    return-object p1

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public uploadText(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 11
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

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_11

    return-object p1

    :cond_11
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
