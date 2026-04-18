.class Lcom/qiniu/android/storage/PartsUpload$1;
.super Ljava/lang/Object;
.source "PartsUpload.java"

# interfaces
.implements Lcom/qiniu/android/storage/PartsUpload$UploadFileCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/PartsUpload;->startToUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/PartsUpload;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUpload;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V
    .registers 4

    .line 130
    invoke-virtual {p1}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-nez v0, :cond_14

    .line 131
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p1}, Lcom/qiniu/android/storage/BaseUpload;->switchRegionAndUploadIfNeededWithErrorResponse(Lcom/qiniu/android/http/ResponseInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 132
    iget-object v0, p0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/storage/PartsUpload;->completeAction(Lcom/qiniu/android/http/ResponseInfo;Lorg/json/JSONObject;)V

    :cond_13
    return-void

    .line 137
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "key:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    iget-object p2, p2, Lcom/qiniu/android/storage/BaseUpload;->key:Ljava/lang/String;

    invoke-static {p2}, Lcom/qiniu/android/utils/StringUtils;->toNonnullString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uploadRestData"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUpload$1;->this$0:Lcom/qiniu/android/storage/PartsUpload;

    new-instance p2, Lcom/qiniu/android/storage/PartsUpload$1$1;

    invoke-direct {p2, p0}, Lcom/qiniu/android/storage/PartsUpload$1$1;-><init>(Lcom/qiniu/android/storage/PartsUpload$1;)V

    invoke-virtual {p1, p2}, Lcom/qiniu/android/storage/PartsUpload;->uploadRestData(Lcom/qiniu/android/storage/PartsUpload$UploadFileRestDataCompleteHandler;)V

    return-void
.end method
