.class final Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "QiNiuOSSUpload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->upload(Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.codemao.toolssdk.evolving.android.upload.QiNiuOSSUpload$upload$2$1"
    f = "QiNiuOSSUpload.kt"
    l = {
        0x52,
        0x54
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $filePath:Ljava/lang/String;

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

.field final synthetic $text:Ljava/lang/String;

.field final synthetic $this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

.field final synthetic $tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;",
            "Lcom/codemao/toolssdk/model/http/CndUploadToken;",
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
            "Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    iput-object p3, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    iput-object p4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$text:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$resultCallback:Lkotlin/jvm/functions/Function5;

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

    new-instance p1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    iget-object v3, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$text:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$resultCallback:Lkotlin/jvm/functions/Function5;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;Lcom/codemao/toolssdk/model/http/CndUploadToken;Ljava/lang/String;Lkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1c

    if-eq v1, v3, :cond_17

    if-ne v1, v2, :cond_f

    goto :goto_17

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_de

    :cond_1c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    new-instance v8, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1$progressHandler$1;

    invoke-direct {v8}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1$progressHandler$1;-><init>()V

    .line 59
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$filePath:Ljava/lang/String;

    if-eqz p1, :cond_6f

    .line 60
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$filePath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 64
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    invoke-static {v1}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->access$getManager(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object v1

    .line 66
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v10

    .line 67
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getToken()Ljava/lang/String;

    move-result-object v11

    .line 68
    new-instance v12, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 64
    invoke-virtual {v1, p1, v10, v11, v12}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    goto :goto_a0

    .line 62
    :cond_56
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "文件不存在: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_6f
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$text:Ljava/lang/String;

    if-eqz p1, :cond_e1

    .line 71
    iget-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$this_runCatching:Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;

    invoke-static {p1}, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;->access$getManager(Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload;)Lcom/qiniu/android/storage/UploadManager;

    move-result-object p1

    .line 72
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$text:Ljava/lang/String;

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v4, "this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v10

    .line 74
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$tokenData:Lcom/codemao/toolssdk/model/http/CndUploadToken;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getToken()Ljava/lang/String;

    move-result-object v11

    .line 75
    new-instance v12, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v9}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 71
    invoke-virtual {p1, v1, v10, v11, v12}, Lcom/qiniu/android/storage/UploadManager;->syncPut([BLjava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 81
    :goto_a0
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 82
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$resultCallback:Lkotlin/jvm/functions/Function5;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v1, 0xc8

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    iput v3, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->label:I

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_de

    return-object v0

    .line 84
    :cond_bf
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->$resultCallback:Lkotlin/jvm/functions/Function5;

    const/4 v3, 0x0

    .line 85
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 86
    iget v4, p1, Lcom/qiniu/android/http/ResponseInfo;->statusCode:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    .line 87
    iget-object v5, p1, Lcom/qiniu/android/http/ResponseInfo;->message:Ljava/lang/String;

    .line 88
    iget-object p1, p1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    .line 84
    iput v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/QiNiuOSSUpload$upload$2$1;->label:I

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_de

    return-object v0

    .line 91
    :cond_de
    :goto_de
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 78
    :cond_e1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "没有要上传的数据"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
