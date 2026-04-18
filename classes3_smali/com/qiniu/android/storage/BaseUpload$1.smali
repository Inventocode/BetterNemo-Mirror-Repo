.class Lcom/qiniu/android/storage/BaseUpload$1;
.super Ljava/lang/Object;
.source "BaseUpload.java"

# interfaces
.implements Lcom/qiniu/android/common/Zone$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/BaseUpload;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/BaseUpload;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/BaseUpload;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(ILcom/qiniu/android/http/ResponseInfo;Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V
    .registers 5

    .line 92
    iget-object v0, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-static {v0}, Lcom/qiniu/android/storage/BaseUpload;->access$000(Lcom/qiniu/android/storage/BaseUpload;)Lcom/qiniu/android/http/metrics/UploadTaskMetrics;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/qiniu/android/http/metrics/UploadTaskMetrics;->addMetrics(Lcom/qiniu/android/http/metrics/UploadRegionRequestMetrics;)V

    if-nez p1, :cond_24

    .line 95
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/BaseUpload;->prepareToUpload()I

    move-result p1

    if-nez p1, :cond_19

    .line 97
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p1}, Lcom/qiniu/android/storage/BaseUpload;->startToUpload()V

    goto :goto_2b

    :cond_19
    const/4 p2, 0x0

    .line 99
    invoke-static {p1, p2}, Lcom/qiniu/android/http/ResponseInfo;->errorInfo(ILjava/lang/String;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    .line 100
    iget-object p3, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    invoke-virtual {p3, p1, p2}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    goto :goto_2b

    .line 103
    :cond_24
    iget-object p1, p0, Lcom/qiniu/android/storage/BaseUpload$1;->this$0:Lcom/qiniu/android/storage/BaseUpload;

    iget-object p3, p2, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, p3}, Lcom/qiniu/android/storage/BaseUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :goto_2b
    return-void
.end method
