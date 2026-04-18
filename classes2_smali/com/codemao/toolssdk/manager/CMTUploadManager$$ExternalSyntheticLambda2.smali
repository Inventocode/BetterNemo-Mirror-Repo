.class public final synthetic Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/storage/UpCompletionHandler;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/model/http/GetQiniuResponse;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$3:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/model/http/GetQiniuResponse;

    iput-object p2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final complete(Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 11

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$0:Lcom/codemao/toolssdk/model/http/GetQiniuResponse;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$2:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda2;->f$3:Lkotlin/jvm/functions/Function0;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->$r8$lambda$vG23oQoW_-WuykHFei10K0jUU_M(Lcom/codemao/toolssdk/model/http/GetQiniuResponse;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    return-void
.end method
