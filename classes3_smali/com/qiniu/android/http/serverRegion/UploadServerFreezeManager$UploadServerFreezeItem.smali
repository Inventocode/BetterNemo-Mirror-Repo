.class Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;
.super Ljava/lang/Object;
.source "UploadServerFreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadServerFreezeItem"
.end annotation


# instance fields
.field private freezeDate:Ljava/util/Date;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$1;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;Ljava/util/Date;)Z
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->isFrozenByDate(Ljava/util/Date;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;I)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->freeze(I)V

    return-void
.end method

.method private declared-synchronized freeze(I)V
    .registers 7

    monitor-enter p0

    .line 71
    :try_start_1
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Lcom/qiniu/android/utils/Utils;->currentTimestamp()J

    move-result-wide v1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->freezeDate:Ljava/util/Date;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 72
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized isFrozenByDate(Ljava/util/Date;)Z
    .registers 7

    monitor-enter p0

    const/4 v0, 0x1

    .line 64
    :try_start_2
    iget-object v1, p0, Lcom/qiniu/android/http/serverRegion/UploadServerFreezeManager$UploadServerFreezeItem;->freezeDate:Ljava/util/Date;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_15

    cmp-long p1, v1, v3

    if-gez p1, :cond_13

    :cond_12
    const/4 v0, 0x0

    .line 67
    :cond_13
    monitor-exit p0

    return v0

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method
