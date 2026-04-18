.class Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV2.java"

# interfaces
.implements Lcom/qiniu/android/http/request/RequestTransaction$RequestCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUploadPerformerV2;->uploadNextData(Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

.field final synthetic val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

.field final synthetic val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

.field final synthetic val$uploadData:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/http/request/RequestTransaction;Lcom/qiniu/android/storage/UploadData;Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;)V
    .registers 5

    .line 121
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    iput-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    iput-object p4, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V
    .registers 8

    .line 125
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$transaction:Lcom/qiniu/android/http/request/RequestTransaction;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->destroyUploadRequestTransaction(Lcom/qiniu/android/http/request/RequestTransaction;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_1c

    :try_start_a
    const-string v1, "etag"

    .line 131
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_10} :catch_17

    :try_start_10
    const-string v2, "md5"

    .line 132
    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_16} :catch_18

    goto :goto_18

    :catch_17
    move-object v1, v0

    :catch_18
    :goto_18
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    .line 136
    :goto_1d
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3d

    if-eqz v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 137
    iget-object v1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    iput-object v0, v1, Lcom/qiniu/android/storage/UploadData;->etag:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/qiniu/android/storage/UploadData$State;->Complete:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v1, v0}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 139
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    invoke-virtual {v0}, Lcom/qiniu/android/storage/PartsUploadPerformer;->recordUploadInfo()V

    .line 140
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/PartsUploadPerformer;->notifyProgress(Ljava/lang/Boolean;)V

    goto :goto_44

    .line 142
    :cond_3d
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    sget-object v1, Lcom/qiniu/android/storage/UploadData$State;->WaitToUpload:Lcom/qiniu/android/storage/UploadData$State;

    invoke-virtual {v0, v1}, Lcom/qiniu/android/storage/UploadData;->updateState(Lcom/qiniu/android/storage/UploadData$State;)V

    .line 144
    :goto_44
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$3;->val$completeHandler:Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/qiniu/android/storage/PartsUploadPerformer$PartsUploadPerformerDataCompleteHandler;->complete(ZLcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;Lorg/json/JSONObject;)V

    return-void
.end method
