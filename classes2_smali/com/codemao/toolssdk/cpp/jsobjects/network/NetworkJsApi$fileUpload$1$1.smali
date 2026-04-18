.class final Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;
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
    c = "com.codemao.toolssdk.cpp.jsobjects.network.NetworkJsApi$fileUpload$1$1"
    f = "NetworkJsApi.kt"
    l = {
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

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

.field final synthetic $this_apply:Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

.field final synthetic $uploadKey:Ljava/lang/String;

.field final synthetic $uploadProjectName:Ljava/lang/String;

.field final synthetic $userToken:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Ljava/lang/String;",
            "Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;",
            "Z",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$userToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadProjectName:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$this_apply:Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    iput-boolean p6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$standby:Z

    iput-object p7, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p8, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iput-object p9, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadKey:Ljava/lang/String;

    iput-wide p10, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 16
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

    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$userToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadProjectName:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$this_apply:Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    iget-boolean v6, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$standby:Z

    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v8, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v9, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadKey:Ljava/lang/String;

    iget-wide v10, p0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$startTime:J

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;ZLkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v9, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v10

    .line 140
    iget v0, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->label:I

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    if-ne v0, v1, :cond_11

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_61

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    iget-object v0, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->access$getCtUpload$p(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;)Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 142
    iget-object v2, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$userToken:Ljava/lang/String;

    .line 143
    iget-object v3, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$cdnToken:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    .line 144
    iget-object v4, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadProjectName:Ljava/lang/String;

    .line 145
    iget-object v5, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$this_apply:Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;->getText()Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-boolean v6, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$standby:Z

    const/4 v7, 0x1

    .line 141
    new-instance v8, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1$1;

    iget-object v12, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->this$0:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v13, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$hasResult:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v14, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$handler:Lcom/codemao/toolssdk/dsbridge/CompletionHandler;

    iget-object v15, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$this_apply:Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;

    iget-object v11, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$uploadKey:Ljava/lang/String;

    move-object/from16 p1, v2

    iget-wide v1, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->$startTime:J

    const/16 v19, 0x0

    move-object/from16 v16, v11

    move-object v11, v8

    move-wide/from16 v17, v1

    invoke-direct/range {v11 .. v19}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/model/dsbridge/python/FileUploadAgentRequest;Ljava/lang/String;JLkotlin/coroutines/Continuation;)V

    const/4 v1, 0x1

    iput v1, v9, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi$fileUpload$1$1;->label:I

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object/from16 v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText(Ljava/lang/String;Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_61

    return-object v10

    .line 166
    :cond_61
    :goto_61
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
