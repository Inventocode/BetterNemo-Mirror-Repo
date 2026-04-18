.class final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;
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
    c = "com.codemao.toolssdk.cpp.jsobjects.network.NetworkJsApi$fileUpload$1$2"
    f = "NetworkJsApi.kt"
    l = {
        0xc6
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

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

.field final synthetic $filePath:Ljava/lang/String;

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

.field final synthetic $standby:Z

.field final synthetic $startTime:J

.field final synthetic $uploadKey:Ljava/lang/String;

.field final synthetic $uploadProjectName:Ljava/lang/String;

.field final synthetic $userToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
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
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$userToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadProjectName:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$filePath:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$standby:Z

    iput-object p7, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p8, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p9, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$file:Lkotlin/Pair;

    iput-object p10, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadKey:Ljava/lang/String;

    iput-wide p11, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 19
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

    move-object/from16 v0, p0

    new-instance v15, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;

    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v3, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$userToken:Ljava/lang/String;

    iget-object v4, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iget-object v5, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadProjectName:Ljava/lang/String;

    iget-object v6, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$filePath:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$standby:Z

    iget-object v8, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v9, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v10, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$file:Lkotlin/Pair;

    iget-object v11, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadKey:Ljava/lang/String;

    iget-wide v12, v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$startTime:J

    move-object v1, v15

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    return-object v15
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 197
    iget v0, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    if-ne v0, v1, :cond_11

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_62

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 198
    iget-object v0, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$getCtUpload$p(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;)Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 199
    iget-object v2, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$userToken:Ljava/lang/String;

    .line 200
    iget-object v3, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 201
    iget-object v4, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadProjectName:Ljava/lang/String;

    .line 202
    iget-object v5, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$filePath:Ljava/lang/String;

    const-string v6, "filePath"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-boolean v6, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$standby:Z

    const/4 v7, 0x1

    .line 198
    new-instance v8, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;

    iget-object v12, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v13, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v14, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v15, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$file:Lkotlin/Pair;

    iget-object v11, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$uploadKey:Ljava/lang/String;

    move-object/from16 p1, v2

    iget-wide v1, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->$startTime:J

    const/16 v19, 0x0

    move-object/from16 v16, v11

    move-object v11, v8

    move-wide/from16 v17, v1

    invoke-direct/range {v11 .. v19}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lkotlin/Pair;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    iput v1, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$2;->label:I

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadFile(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_62

    return-object v10

    .line 224
    :cond_62
    :goto_62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
