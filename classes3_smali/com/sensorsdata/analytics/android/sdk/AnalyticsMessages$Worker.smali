.class Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;
.super Ljava/lang/Object;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)V
    .registers 4

    .line 407
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    .line 408
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "com.sensorsdata.analytics.android.sdk.AnalyticsMessages.Worker"

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 411
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 412
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;-><init>(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method runMessage(Landroid/os/Message;)V
    .registers 6

    .line 416
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_20

    const-string v1, "SA.AnalyticsMessages"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead worker dropping a message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 421
    :cond_20
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    :goto_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method runMessageOnce(Landroid/os/Message;J)V
    .registers 7

    .line 427
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_20

    const-string p2, "SA.AnalyticsMessages"

    .line 430
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dead worker dropping a message: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 432
    :cond_20
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 433
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 436
    :cond_2d
    :goto_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method
