.class public final synthetic Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/qiniu/android/storage/UpCancellationSignal;


# instance fields
.field public final synthetic f$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;


# direct methods
.method public synthetic constructor <init>(Lcom/codemao/toolssdk/manager/CMTUploadManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    return-void
.end method


# virtual methods
.method public final isCancelled()Z
    .registers 2

    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMTUploadManager$$ExternalSyntheticLambda0;->f$0:Lcom/codemao/toolssdk/manager/CMTUploadManager;

    invoke-static {v0}, Lcom/codemao/toolssdk/manager/CMTUploadManager;->$r8$lambda$8hsmbdWsVaSE7aW21BZmtVOKTqs(Lcom/codemao/toolssdk/manager/CMTUploadManager;)Z

    move-result v0

    return v0
.end method
