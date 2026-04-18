.class Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;
.super Ljava/lang/Object;
.source "SAExposedProcess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExposureRunnable"
.end annotation


# instance fields
.field private final mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method public constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;Landroid/view/View;)V
    .registers 4

    .line 55
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    .line 57
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mExposedPage:Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViewList(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    .line 65
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->isViewLayoutChange()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 66
    const-class v2, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    monitor-enter v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_94

    .line 67
    :try_start_27
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    if-eqz v3, :cond_47

    .line 69
    iget-object v4, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v4}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_47
    const-string v3, "SA.SAExposedProcess"

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExposureRunnable->exposureView:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->getExposureData()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;

    move-result-object v3

    if-eqz v3, :cond_8e

    .line 75
    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureData;->getExposureConfig()Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getStayDuration()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L  # 1000.0

    mul-double v3, v3, v5

    double-to-long v3, v3

    .line 76
    new-instance v5, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;

    invoke-direct {v5, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/StayDurationRunnable;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;)V

    .line 77
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$000(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v6, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v6}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setViewLayoutChange(Z)V

    .line 81
    :cond_8e
    monitor-exit v2

    goto/16 :goto_c

    :catchall_91
    move-exception v0

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_27 .. :try_end_93} :catchall_91

    :try_start_93
    throw v0
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_94} :catch_94

    :catch_94
    move-exception v0

    .line 85
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_98
    return-void
.end method
