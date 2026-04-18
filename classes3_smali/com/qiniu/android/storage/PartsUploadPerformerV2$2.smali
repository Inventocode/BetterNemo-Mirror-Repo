.class Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;
.super Ljava/lang/Object;
.source "PartsUploadPerformerV2.java"

# interfaces
.implements Lcom/qiniu/android/http/request/handler/RequestProgressHandler;


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

.field final synthetic val$uploadData:Lcom/qiniu/android/storage/UploadData;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/PartsUploadPerformerV2;Lcom/qiniu/android/storage/UploadData;)V
    .registers 3

    .line 112
    iput-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    iput-object p2, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progress(JJ)V
    .registers 5

    .line 115
    iget-object p3, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;->val$uploadData:Lcom/qiniu/android/storage/UploadData;

    invoke-virtual {p3, p1, p2}, Lcom/qiniu/android/storage/UploadData;->setUploadSize(J)V

    .line 116
    iget-object p1, p0, Lcom/qiniu/android/storage/PartsUploadPerformerV2$2;->this$0:Lcom/qiniu/android/storage/PartsUploadPerformerV2;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/qiniu/android/storage/PartsUploadPerformer;->notifyProgress(Ljava/lang/Boolean;)V

    return-void
.end method
