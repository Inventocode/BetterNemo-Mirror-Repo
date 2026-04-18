.class Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV1.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV1;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

.field final synthetic val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

.field final synthetic val$uploadChunk:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV1;Lcom/qiniu/android/storage/UploadBlock;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .registers 5

    .line 90
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .registers 6

    if-eqz p3, :cond_9

    :try_start_2
    const-string v0, "ctx"

    .line 97
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    :cond_9
    const/4 v0, 0x0

    .line 101
    :goto_a
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 102
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadBlock:Lcom/qiniu/android/storage/UploadBlock;

    iput-object v0, v1, Lcom/qiniu/android/storage/UploadBlock;->ctx:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 104
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->recordUploadInfo()V

    .line 105
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV1;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->notifyProgress(Ljava/lang/Boolean;)V

    goto :goto_31

    .line 107
    :cond_2a
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$uploadChunk:Lcom/qiniu/android/storage/UploadData;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 109
    :goto_31
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV1$2;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method
