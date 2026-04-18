.class Lcom/qiniu/android/storage/UpProgress;
.super Ljava/lang/Object;
.source "UpProgress.java"


# instance fields
.field private final handler:Lcom/qiniu/android/storage/UpProgressHandler;

.field private volatile maxProgressUploadBytes:J

.field private volatile previousUploadBytes:J


# direct methods
.method constructor <init>(Lcom/qiniu/android/storage/UpProgressHandler;)V
    .registers 4

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    .line 13
    iput-object p1, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/storage/UpProgress;)Lcom/qiniu/android/storage/UpProgressHandler;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    return-object p0
.end method


# virtual methods
.method public notifyDone(Ljava/lang/String;J)V
    .registers 5

    .line 65
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    if-nez v0, :cond_5

    return-void

    .line 70
    :cond_5
    instance-of v0, v0, Lcom/qiniu/android/storage/UpProgressBytesHandler;

    if-eqz v0, :cond_12

    .line 71
    new-instance v0, Lcom/qiniu/android/storage/UpProgress$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qiniu/android/storage/UpProgress$3;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void

    .line 81
    :cond_12
    new-instance p2, Lcom/qiniu/android/storage/UpProgress$4;

    invoke-direct {p2, p0, p1}, Lcom/qiniu/android/storage/UpProgress$4;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public progress(Ljava/lang/String;JJ)V
    .registers 16

    .line 17
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    if-eqz v0, :cond_57

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_57

    cmp-long v2, p4, v0

    if-lez v2, :cond_13

    cmp-long v3, p2, p4

    if-lez v3, :cond_13

    goto :goto_57

    :cond_13
    if-lez v2, :cond_2d

    .line 22
    iget-wide v3, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    cmp-long v5, v3, v0

    if-gez v5, :cond_26

    long-to-double v0, p4

    const-wide v3, 0x3fee666666666666L  # 0.95

    mul-double v0, v0, v3

    double-to-long v0, v0

    .line 23
    iput-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    .line 26
    :cond_26
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->maxProgressUploadBytes:J

    cmp-long v3, p2, v0

    if-lez v3, :cond_2d

    return-void

    .line 31
    :cond_2d
    iget-wide v0, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    cmp-long v3, p2, v0

    if-lez v3, :cond_57

    .line 32
    iput-wide p2, p0, Lcom/qiniu/android/storage/UpProgress;->previousUploadBytes:J

    .line 38
    iget-object v0, p0, Lcom/qiniu/android/storage/UpProgress;->handler:Lcom/qiniu/android/storage/UpProgressHandler;

    instance-of v0, v0, Lcom/qiniu/android/storage/UpProgressBytesHandler;

    if-eqz v0, :cond_49

    .line 40
    new-instance v0, Lcom/qiniu/android/storage/UpProgress$1;

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/qiniu/android/storage/UpProgress$1;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;JJ)V

    invoke-static {v0}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    return-void

    :cond_49
    if-gez v2, :cond_4c

    return-void

    :cond_4c
    long-to-double p2, p2

    long-to-double p4, p4

    div-double/2addr p2, p4

    .line 55
    new-instance p4, Lcom/qiniu/android/storage/UpProgress$2;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/qiniu/android/storage/UpProgress$2;-><init>(Lcom/qiniu/android/storage/UpProgress;Ljava/lang/String;D)V

    invoke-static {p4}, Lcom/qiniu/android/utils/AsyncRun;->runInMain(Ljava/lang/Runnable;)V

    :cond_57
    :goto_57
    return-void
.end method
