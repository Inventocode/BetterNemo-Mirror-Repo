.class public Lcom/qiniu/android/utils/Wait;
.super Ljava/lang/Object;
.source "Wait.java"


# instance fields
.field final completeSingle:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public startWait()V
    .registers 6

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_14

    .line 12
    :try_start_c
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_14

    :catch_12
    nop

    goto :goto_0

    :cond_14
    :goto_14
    return-void
.end method

.method public stopWait()V
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/qiniu/android/utils/Wait;->completeSingle:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
