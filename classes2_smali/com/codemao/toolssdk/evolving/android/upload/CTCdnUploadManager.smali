.class public final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;
.super Ljava/lang/Object;
.source "CTCdnUploadManager.kt"


# instance fields
.field private final aliOSS$delegate:Lkotlin/Lazy;

.field private final qiniuOss$delegate:Lkotlin/Lazy;

.field private final tokenManger$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$tokenManger$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$tokenManger$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->tokenManger$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$qiniuOss$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$qiniuOss$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->qiniuOss$delegate:Lkotlin/Lazy;

    .line 13
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$aliOSS$2;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$aliOSS$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->aliOSS$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$qiniuUploadFail(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->qiniuUploadFail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$standbyUpload(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9

    .line 9
    invoke-direct/range {p0 .. p8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->standbyUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getAliOSS()Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->aliOSS$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    return-object v0
.end method

.method private final getQiniuOss()Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->qiniuOss$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    return-object v0
.end method

.method private final getTokenManger()Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->tokenManger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    return-object v0
.end method

.method private final qiniuUploadFail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 163
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "QiNiu"

    invoke-virtual {v0, p4, p2, p3, p1}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->uploadFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private final standbyUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
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

    move-object/from16 v0, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v1, p8

    instance-of v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;

    if-eqz v2, :cond_1b

    move-object v2, v1

    check-cast v2, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;

    iget v3, v2, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_1b

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    goto :goto_20

    :cond_1b
    new-instance v2, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Lkotlin/coroutines/Continuation;)V

    :goto_20
    move-object v11, v2

    iget-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 15
    iget v2, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_72

    if-eq v2, v3, :cond_51

    if-eq v2, v15, :cond_45

    if-eq v2, v14, :cond_45

    if-ne v2, v13, :cond_3d

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_156

    :cond_3d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_45
    iget-object v2, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    iget-object v3, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function5;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v8

    goto/16 :goto_d9

    :cond_51
    iget-object v2, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function5;

    iget-object v3, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v3

    move-object v9, v4

    move-object v13, v8

    goto :goto_af

    :cond_72
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez v9, :cond_82

    if-eqz v10, :cond_7a

    goto :goto_82

    .line 25
    :cond_7a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "上传内容参数为空"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_82
    :goto_82
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getTokenManger()Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    move-result-object v1

    const/4 v2, 0x1

    iput-object v0, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    iput-object v9, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$2:Ljava/lang/Object;

    iput-object v10, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$3:Ljava/lang/Object;

    move-object/from16 v6, p7

    iput-object v6, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$4:Ljava/lang/Object;

    iput v3, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    move-object v13, v8

    move-object v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestToken-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_aa

    return-object v12

    :cond_aa
    move-object/from16 v5, p3

    move-object/from16 v2, p7

    move-object v6, v0

    .line 28
    :goto_af
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    move-object v3, v1

    check-cast v3, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 29
    invoke-virtual {v3, v5}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->setQiniuKey(Ljava/lang/String;)V

    if-nez v9, :cond_db

    .line 31
    invoke-direct {v6}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getAliOSS()Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    move-result-object v4

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v2, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    iput-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$2:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$4:Ljava/lang/Object;

    iput v15, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    invoke-virtual {v4, v3, v10, v2, v11}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->uploadText(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_d7

    return-object v12

    :cond_d7
    move-object v3, v2

    move-object v2, v1

    :goto_d9
    move-object v1, v2

    goto :goto_f3

    .line 33
    :cond_db
    invoke-direct {v6}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getAliOSS()Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    move-result-object v4

    iput-object v2, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    iput-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$2:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$4:Ljava/lang/Object;

    iput v14, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    invoke-virtual {v4, v3, v9, v2, v11}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v12, :cond_d7

    return-object v12

    :cond_f2
    move-object v3, v2

    .line 35
    :goto_f3
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_156

    const/16 v4, 0x258

    .line 37
    instance-of v5, v2, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    if-eqz v5, :cond_106

    .line 38
    move-object v4, v2

    check-cast v4, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->getCode()I

    move-result v4

    .line 40
    :cond_106
    sget-object v5, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "获取阿里云token失败:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 41
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    iput-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$0:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$1:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$2:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$3:Ljava/lang/Object;

    iput-object v13, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->L$4:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$standbyUpload$1;->label:I

    move-object/from16 p1, v3

    move-object/from16 p2, v5

    move-object/from16 p3, v4

    move-object/from16 p4, v2

    move-object/from16 p5, v6

    move-object/from16 p6, v11

    invoke-interface/range {p1 .. p6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v12, :cond_156

    return-object v12

    .line 43
    :cond_156
    :goto_156
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private static final uploadFile$upload(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;",
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
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getQiniuOss()Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    move-result-object v0

    new-instance v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$upload$2;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p7

    move-object v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p1

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$upload$2;-><init>(Lkotlin/jvm/functions/Function5;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v0, v2, p1, v11, v3}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->uploadFile(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_27

    return-object v0

    :cond_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final uploadText$upload$4(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;",
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
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getQiniuOss()Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    move-result-object v0

    new-instance v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p7

    move-object v5, p0

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object v8, p1

    move/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;-><init>(Lkotlin/jvm/functions/Function5;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-virtual {v0, v2, p1, v11, v3}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->uploadText(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_27

    return-object v0

    :cond_27
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final uploadFile(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
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

    move-object/from16 v9, p0

    move-object/from16 v0, p8

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;

    invoke-direct {v1, v9, v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    move-object v8, v1

    iget-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 53
    iget v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_8b

    if-eq v1, v5, :cond_62

    if-eq v1, v4, :cond_45

    if-eq v1, v3, :cond_40

    if-ne v1, v2, :cond_38

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_171

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14e

    :cond_45
    iget-boolean v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$0:Z

    iget-object v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$5:Ljava/lang/Object;

    iget-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function5;

    iget-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_ff

    :cond_62
    iget-boolean v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$1:Z

    iget-boolean v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$0:Z

    iget-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function5;

    iget-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    move v13, v2

    move-object v0, v6

    move-object v6, v11

    move-object v14, v12

    move v2, v1

    move-object v1, v10

    goto :goto_ca

    :cond_8b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p2, :cond_151

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getTokenManger()Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    iput-object v9, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$0:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$1:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$2:Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$3:Ljava/lang/Object;

    move-object/from16 v2, p7

    iput-object v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$4:Ljava/lang/Object;

    move/from16 v15, p5

    iput-boolean v15, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$0:Z

    move/from16 v13, p6

    iput-boolean v13, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$1:Z

    iput v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move-object/from16 v15, p4

    move/from16 v16, p6

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestToken-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_c3

    return-object v7

    :cond_c3
    move/from16 v13, p5

    move-object v15, v5

    move-object v14, v9

    move-object v5, v2

    move/from16 v2, p6

    .line 89
    :goto_ca
    invoke-static {v15}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10c

    move-object/from16 v17, v15

    check-cast v17, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 90
    iput-object v14, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$2:Ljava/lang/Object;

    iput-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$4:Ljava/lang/Object;

    iput-object v15, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$5:Ljava/lang/Object;

    iput-boolean v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->Z$0:Z

    iput v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    move-object v10, v14

    move-object v11, v0

    move-object v12, v5

    move-object v4, v14

    move-object v14, v6

    move-object/from16 v19, v15

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v18, v8

    invoke-static/range {v10 .. v18}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadFile$upload(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_f7

    return-object v7

    :cond_f7
    move-object v11, v4

    move-object v4, v5

    move-object v10, v6

    move-object v5, v0

    move-object v6, v1

    move v1, v2

    move-object/from16 v2, v19

    :goto_ff
    move/from16 v16, v1

    move-object v15, v2

    move-object/from16 v17, v4

    move-object v14, v5

    move-object v12, v6

    move-object/from16 v20, v11

    move-object v11, v10

    move-object/from16 v10, v20

    goto :goto_117

    :cond_10c
    move-object v4, v14

    move-object/from16 v19, v15

    move-object v14, v0

    move-object v12, v1

    move/from16 v16, v2

    move-object v10, v4

    move-object/from16 v17, v5

    move-object v11, v6

    .line 91
    :goto_117
    invoke-static {v15}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14e

    const/16 v1, 0x258

    .line 93
    instance-of v2, v0, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    if-eqz v2, :cond_12a

    .line 94
    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->getCode()I

    move-result v1

    .line 96
    :cond_12a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "获取七牛云token失败,file"

    const/4 v4, 0x0

    invoke-direct {v10, v2, v4, v1, v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->qiniuUploadFail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v13, 0x0

    const/4 v0, 0x0

    .line 97
    iput-object v15, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$1:Ljava/lang/Object;

    iput-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$2:Ljava/lang/Object;

    iput-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$3:Ljava/lang/Object;

    iput-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$4:Ljava/lang/Object;

    iput-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->L$5:Ljava/lang/Object;

    iput v3, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    move-object v15, v0

    move-object/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->standbyUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_14e

    return-object v7

    .line 110
    :cond_14e
    :goto_14e
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_151
    move-object/from16 v6, p1

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    .line 108
    iput v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadFile$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p6

    move-object v10, v7

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadFile$upload(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_171

    return-object v10

    .line 110
    :cond_171
    :goto_171
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final uploadText(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
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

    move-object/from16 v9, p0

    move-object/from16 v0, p8

    instance-of v1, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;

    iget v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_17

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;

    invoke-direct {v1, v9, v0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;-><init>(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Lkotlin/coroutines/Continuation;)V

    :goto_1c
    move-object v8, v1

    iget-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 112
    iget v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_8b

    if-eq v1, v5, :cond_62

    if-eq v1, v4, :cond_45

    if-eq v1, v3, :cond_40

    if-ne v1, v2, :cond_38

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_16f

    :cond_38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_14c

    :cond_45
    iget-boolean v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$0:Z

    iget-object v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$5:Ljava/lang/Object;

    iget-object v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function5;

    iget-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fe

    :cond_62
    iget-boolean v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$1:Z

    iget-boolean v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$0:Z

    iget-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function5;

    iget-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    invoke-virtual {v0}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    move v13, v2

    move-object v0, v6

    move-object v6, v11

    move-object v14, v12

    move v2, v1

    move-object v1, v10

    goto :goto_c9

    :cond_8b
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-nez p2, :cond_14f

    .line 147
    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->getTokenManger()Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iput-object v9, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$0:Ljava/lang/Object;

    move-object/from16 v6, p1

    iput-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$1:Ljava/lang/Object;

    move-object/from16 v1, p3

    iput-object v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$2:Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$3:Ljava/lang/Object;

    move-object/from16 v2, p7

    iput-object v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$4:Ljava/lang/Object;

    move/from16 v13, p5

    iput-boolean v13, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$0:Z

    move/from16 v12, p6

    iput-boolean v12, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$1:Z

    iput v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    move-object/from16 v12, p1

    move-object/from16 v13, p3

    move/from16 v16, p6

    move-object/from16 v17, v8

    invoke-virtual/range {v10 .. v17}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnGetToken;->requestToken-bMdYcbs(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_c2

    return-object v7

    :cond_c2
    move/from16 v13, p5

    move-object v15, v5

    move-object v14, v9

    move-object v5, v2

    move/from16 v2, p6

    :goto_c9
    invoke-static {v15}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10b

    move-object/from16 v17, v15

    check-cast v17, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 148
    iput-object v14, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$2:Ljava/lang/Object;

    iput-object v0, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$4:Ljava/lang/Object;

    iput-object v15, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$5:Ljava/lang/Object;

    iput-boolean v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->Z$0:Z

    iput v4, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    move-object v10, v14

    move-object v11, v0

    move-object v12, v5

    move-object v4, v14

    move-object v14, v6

    move-object/from16 v19, v15

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v18, v8

    invoke-static/range {v10 .. v18}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText$upload$4(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v7, :cond_f6

    return-object v7

    :cond_f6
    move-object v11, v4

    move-object v4, v5

    move-object v10, v6

    move-object v5, v0

    move-object v6, v1

    move v1, v2

    move-object/from16 v2, v19

    :goto_fe
    move/from16 v16, v1

    move-object v15, v2

    move-object/from16 v17, v4

    move-object v0, v5

    move-object v12, v6

    move-object/from16 v20, v11

    move-object v11, v10

    move-object/from16 v10, v20

    goto :goto_115

    :cond_10b
    move-object v4, v14

    move-object/from16 v19, v15

    move-object v12, v1

    move/from16 v16, v2

    move-object v10, v4

    move-object/from16 v17, v5

    move-object v11, v6

    .line 149
    :goto_115
    invoke-static {v15}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_14c

    const/16 v2, 0x258

    .line 151
    instance-of v4, v1, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    if-eqz v4, :cond_128

    .line 152
    move-object v2, v1

    check-cast v2, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/android/exception/HttpRequestFailureException;->getCode()I

    move-result v2

    .line 154
    :cond_128
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "获取七牛云token失败，text"

    const/4 v5, 0x0

    invoke-direct {v10, v4, v5, v2, v1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->qiniuUploadFail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 155
    iput-object v15, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$1:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$2:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$3:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$4:Ljava/lang/Object;

    iput-object v5, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->L$5:Ljava/lang/Object;

    iput v3, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    move-object v15, v0

    move-object/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->standbyUpload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_14c

    return-object v7

    .line 160
    :cond_14c
    :goto_14c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :cond_14f
    move-object/from16 v6, p1

    move-object/from16 v1, p3

    move-object/from16 v0, p4

    .line 158
    iput v2, v8, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$1;->label:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p6

    move-object v10, v7

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText$upload$4(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_16f

    return-object v10

    .line 160
    :cond_16f
    :goto_16f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
