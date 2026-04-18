.class Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;
.super Landroid/os/Handler;
.source "AnalyticsMessages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsMessageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;Landroid/os/Looper;)V
    .registers 3

    .line 441
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    .line 442
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const-string v0, "SA.AnalyticsMessages"

    .line 448
    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_18

    .line 449
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-static {p1, v4}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;Z)V

    .line 450
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-static {p1, v3}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;Z)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_17} :catch_5e

    goto :goto_64

    :cond_18
    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    .line 453
    :try_start_1b
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->access$100(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;)Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/data/adapter/DbAdapter;->deleteAllEvents()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_27

    goto :goto_64

    :catch_27
    move-exception p1

    .line 455
    :try_start_28
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_64

    :cond_2c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_3e

    .line 458
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->flushScheduled()V

    .line 459
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-static {p1, v3}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;Z)V

    goto :goto_64

    :cond_3e
    const/4 v2, 0x7

    if-ne v1, v2, :cond_49

    .line 461
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker$AnalyticsMessageHandler;->this$1:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;

    iget-object p1, p1, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages$Worker;->this$0:Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;

    invoke-static {p1, v4}, Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;->access$000(Lcom/sensorsdata/analytics/android/sdk/AnalyticsMessages;Z)V

    goto :goto_64

    .line 463
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message received by SensorsData worker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_5d} :catch_5e

    goto :goto_64

    :catch_5e
    move-exception p1

    const-string v1, "Worker threw an unhandled exception"

    .line 466
    invoke-static {v0, v1, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_64
    return-void
.end method
