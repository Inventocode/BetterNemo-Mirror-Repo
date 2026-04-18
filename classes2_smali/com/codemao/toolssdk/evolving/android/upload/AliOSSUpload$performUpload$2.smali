.class final Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AliOSSUpload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->performUpload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/model/http/CndUploadToken;Lokhttp3/RequestBody;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.codemao.toolssdk.evolving.android.upload.AliOSSUpload$performUpload$2"
    f = "AliOSSUpload.kt"
    l = {
        0x7f,
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $fileName:Ljava/lang/String;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $requestBody:Lokhttp3/RequestBody;

.field final synthetic $resultCallback:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
.end field

.field final synthetic $tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

.field final synthetic $tokenResponse:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
            "Ljava/lang/String;",
            "Lokhttp3/RequestBody;",
            "Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;",
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
            "Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenResponse:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iput-object p2, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    iput-object p4, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$requestBody:Lokhttp3/RequestBody;

    iput-object p6, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    iput-object p7, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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

    new-instance p1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenResponse:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$fileName:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$requestBody:Lokhttp3/RequestBody;

    iget-object v6, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    iget-object v7, p0, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;-><init>(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lokhttp3/RequestBody;Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 17

    move-object v6, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 95
    iget v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->label:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    if-eq v0, v2, :cond_27

    if-ne v0, v1, :cond_1f

    iget-wide v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->J$0:J

    iget-object v2, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$0:Ljava/lang/Object;

    check-cast v3, Lokhttp3/Response;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v14, v2

    goto/16 :goto_1af

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-wide v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->J$0:J

    iget-object v2, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$0:Ljava/lang/Object;

    check-cast v2, Lokhttp3/Response;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_145

    :cond_32
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 96
    iget-object v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenResponse:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->getUpload_url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 99
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v4}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 100
    sget-object v5, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v5}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 101
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    const-string v8, "key"

    invoke-virtual {v3, v8, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 102
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getAccess_key()Ljava/lang/String;

    move-result-object v5

    const-string v9, ""

    if-nez v5, :cond_5c

    move-object v5, v9

    :cond_5c
    const-string v10, "OSSAccessKeyId"

    invoke-virtual {v3, v10, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 103
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getPolicy()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6b

    move-object v5, v9

    :cond_6b
    const-string v10, "policy"

    invoke-virtual {v3, v10, v5}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 104
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getToken()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v9, v5

    :goto_7b
    const-string v5, "Signature"

    invoke-virtual {v3, v5, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    const-string v5, "success_action_status"

    const-string v9, "200"

    .line 105
    invoke-virtual {v3, v5, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 108
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$fileName:Ljava/lang/String;

    .line 109
    iget-object v9, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$requestBody:Lokhttp3/RequestBody;

    const-string v10, "file"

    .line 106
    invoke-virtual {v3, v10, v5, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v3

    .line 113
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    const-string v9, "requestFromNative"

    const-string v10, "Android"

    .line 114
    invoke-virtual {v5, v9, v10}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 116
    invoke-virtual {v5, v3}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 117
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 120
    iget-object v5, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;

    invoke-static {v5}, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;->access$getClient$p(Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload;)Lokhttp3/OkHttpClient;

    move-result-object v5

    invoke-virtual {v5, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    .line 121
    invoke-virtual {v11}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_15d

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 125
    iget-object v1, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "阿里云上传成功: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 127
    iget-object v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    iput-object v11, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$0:Ljava/lang/Object;

    iput-wide v9, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->J$0:J

    iput v2, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->label:I

    move-object v2, v3

    move-object v3, v5

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_143

    return-object v7

    :cond_143
    move-wide v0, v9

    move-object v2, v11

    .line 128
    :goto_145
    sget-object v7, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 132
    iget-object v11, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    .line 133
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    .line 134
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    const/4 v14, 0x0

    .line 128
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->standbyUpload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_1c5

    .line 138
    :cond_15d
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_167

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "阿里云上传失败: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0, v8}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 141
    iget-object v0, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    const/4 v2, 0x0

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v11, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$0:Ljava/lang/Object;

    iput-object v8, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->L$1:Ljava/lang/Object;

    iput-wide v9, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->J$0:J

    iput v1, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->label:I

    move-object v1, v2

    move-object v2, v3

    move-object v3, v8

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_1ac

    return-object v7

    :cond_1ac
    move-object v14, v8

    move-wide v0, v9

    move-object v3, v11

    .line 142
    :goto_1af
    sget-object v7, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 146
    iget-object v11, v6, Lcom/codemao/toolssdk/evolving/android/upload/AliOSSUpload$performUpload$2;->$key:Ljava/lang/String;

    .line 147
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v12

    .line 148
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v13

    .line 142
    invoke-virtual/range {v7 .. v14}, Lcom/codemao/toolssdk/func/logevent/NetworkLogEventUtils;->standbyUpload(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;)V

    .line 152
    :goto_1c5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 97
    :cond_1c8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "获取的token或配置为空"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
