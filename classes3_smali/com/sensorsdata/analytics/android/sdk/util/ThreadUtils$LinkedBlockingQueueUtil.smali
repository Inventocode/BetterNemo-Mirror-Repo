.class final Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkedBlockingQueueUtil"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private mCapacity:I

.field private volatile mPool:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    .line 138
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 152
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    .line 138
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    .line 153
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3

    .line 145
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    .line 138
    iput v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    if-eqz p1, :cond_d

    const/4 p1, 0x0

    .line 147
    iput p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    :cond_d
    return-void
.end method

.method static synthetic access$102(Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;)Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mPool:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    return-object p1
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 2

    .line 134
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->offer(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .registers 4

    .line 158
    iget v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mCapacity:I

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    if-gt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mPool:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mPool:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    .line 159
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$LinkedBlockingQueueUtil;->mPool:Lcom/sensorsdata/analytics/android/sdk/util/ThreadUtils$ThreadPoolExecutorUtil;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_1c

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_1c
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
