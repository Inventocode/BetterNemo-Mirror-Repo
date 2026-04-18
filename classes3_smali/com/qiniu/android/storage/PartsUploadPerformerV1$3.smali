.class Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV1.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV1;->completeUpload(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

.field final synthetic val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;)V
    .registers 4

    .line 134
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .registers 6

    .line 138
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->notifyProgress(Ljava/lang/Boolean;)V

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    .line 142
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;->complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method
