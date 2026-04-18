.class Lcom/qiniu/android/storage/UpProgress$4;
.super Ljava/lang/Object;
.source "UpProgress.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/storage/UpProgress;->notifyDone(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/storage/UpProgress;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/qiniu/android/storage/UpProgress$4;->this$0:Lcom/qiniu/android/storage/UpProgress;

    iput-object p2, p0, Lcom/qiniu/android/storage/UpProgress$4;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/storage/UpProgress$4;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " progress:1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress$4;->this$0:Lcom/qiniu/android/storage/UpProgress;

    invoke-static {v0}, Lcom/qiniu/android/storage/UpProgress;->access$000(Lcom/qiniu/android/storage/UpProgress;)Lcom/qiniu/android/storage/UpProgressHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/storage/UpProgress$4;->val$key:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/qiniu/android/storage/UpProgressHandler;->progress(Ljava/lang/String;D)V

    return-void
.end method
