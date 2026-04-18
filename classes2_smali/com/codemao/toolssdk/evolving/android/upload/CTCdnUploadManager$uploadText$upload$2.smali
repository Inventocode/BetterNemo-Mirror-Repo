.class final Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTCdnUploadManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->uploadText$upload$4(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Lkotlin/jvm/functions/Function5;ZLjava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.toolssdk.evolving.android.upload.CTCdnUploadManager$uploadText$upload$2"
    f = "CTCdnUploadManager.kt"
    l = {
        0x7d,
        0x82,
        0x8d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $enableStandby:Z

.field final synthetic $fromSdk:Z

.field final synthetic $jsonText:Ljava/lang/String;

.field final synthetic $projectName:Ljava/lang/String;

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

.field final synthetic $token:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

.field final synthetic $userToken:Ljava/lang/String;

.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function5;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    iput-boolean p2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$enableStandby:Z

    iput-object p3, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$token:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iput-object p4, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    iput-object p5, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$userToken:Ljava/lang/String;

    iput-object p6, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$projectName:Ljava/lang/String;

    iput-object p7, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$jsonText:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$fromSdk:Z

    const/4 p1, 0x5

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    move-object v4, p4

    check-cast v4, Lorg/json/JSONObject;

    move-object v5, p5

    check-cast v5, Lkotlin/coroutines/Continuation;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->invoke(ZILjava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZILjava/lang/String;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    new-instance v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;

    iget-object v2, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    iget-boolean v3, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$enableStandby:Z

    iget-object v4, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$token:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    iget-object v5, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    iget-object v6, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$userToken:Ljava/lang/String;

    iget-object v7, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$projectName:Ljava/lang/String;

    iget-object v8, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$jsonText:Ljava/lang/String;

    iget-boolean v9, v0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$fromSdk:Z

    move-object v1, v11

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;-><init>(Lkotlin/jvm/functions/Function5;ZLcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    move v1, p1

    iput-boolean v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->Z$0:Z

    move v1, p2

    iput v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->I$0:I

    move-object v1, p3

    iput-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$0:Ljava/lang/Object;

    move-object/from16 v1, p4

    iput-object v1, v11, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v11, v1}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 123
    iget v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->label:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1f

    if-eq v0, v3, :cond_1a

    if-eq v0, v2, :cond_1a

    if-ne v0, v1, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c6

    :cond_1f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->Z$0:Z

    iget v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->I$0:I

    iget-object v5, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lorg/json/JSONObject;

    const/4 v7, 0x0

    if-eqz v0, :cond_4c

    .line 125
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v7, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->label:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_c6

    return-object v9

    .line 126
    :cond_4c
    iget-boolean v3, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$enableStandby:Z

    if-eqz v3, :cond_8d

    .line 127
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$token:Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CdnUploadTokenResponse;->getTokens()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_67

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/http/CndUploadToken;

    if-eqz v0, :cond_67

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/http/CndUploadToken;->getFile_path()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_68

    :cond_67
    move-object v3, v7

    .line 129
    :goto_68
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    const-string v1, "七牛上传内容失败,启用备用上传,text"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->access$qiniuUploadFail(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->this$0:Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;

    .line 131
    iget-object v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$userToken:Ljava/lang/String;

    .line 132
    iget-object v4, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$projectName:Ljava/lang/String;

    const/4 v5, 0x0

    .line 135
    iget-object v6, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$jsonText:Ljava/lang/String;

    .line 136
    iget-boolean v8, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$fromSdk:Z

    .line 137
    iget-object v10, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    .line 130
    iput-object v7, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->label:I

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v8

    move-object v7, v10

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;->access$standbyUpload(Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function5;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_c6

    return-object v9

    .line 140
    :cond_8d
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "七牛上传内容失败:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;->dCdnUpload(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->$resultCallback:Lkotlin/jvm/functions/Function5;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v7, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->L$0:Ljava/lang/Object;

    iput v1, p0, Lcom/codemao/toolssdk/evolving/android/upload/CTCdnUploadManager$uploadText$upload$2;->label:I

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_c6

    return-object v9

    .line 143
    :cond_c6
    :goto_c6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
