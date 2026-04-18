.class Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;
.super Ljava/lang/Object;
.source "SAExposedProcess.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;


# direct methods
.method constructor <init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExposureViewSize(Landroid/app/Activity;)I
    .registers 3

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 162
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz p1, :cond_1f

    .line 164
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViewSize()I

    move-result p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return p1

    :catch_1b
    move-exception p1

    .line 168
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method public getExposureViews(Landroid/app/Activity;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;",
            ">;"
        }
    .end annotation

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 177
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz p1, :cond_1f

    .line 179
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViews()Ljava/util/Collection;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p1

    :catch_1b
    move-exception p1

    .line 183
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 148
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz p1, :cond_1a

    .line 150
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->invisibleElement()V

    .line 152
    :cond_1a
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$300(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p1

    .line 154
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_24
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .line 121
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$700(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$602(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Z)Z

    .line 123
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$702(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$600(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 125
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz v0, :cond_50

    .line 127
    invoke-virtual {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;->getExposureViews()Ljava/util/Collection;

    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    :goto_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;

    if-eqz v1, :cond_3e

    .line 130
    invoke-virtual {v1, v3}, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposureView;->setActivityChange(Z)V

    goto :goto_3e

    .line 136
    :cond_50
    invoke-virtual {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->viewLayoutChange(Landroid/app/Activity;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_58
    return-void
.end method

.method public viewLayoutChange(Landroid/app/Activity;)V
    .registers 5

    .line 101
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    :cond_17
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$300(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)V

    .line 105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$400(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Ljava/util/WeakHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;

    if-eqz p1, :cond_8d

    .line 107
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;-><init>(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/ExposedPage;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$202(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    .line 108
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object p1

    const-string v0, "SA.SAExposedProcess"

    if-eqz p1, :cond_77

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getDelayTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    move-result-object v0

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$500(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/exposure/SAExposureConfig;->getDelayTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8d

    :cond_77
    const-string p1, "delayTime->500ms"

    .line 112
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$100(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$1;->this$0:Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;

    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;->access$200(Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess;)Lcom/sensorsdata/analytics/android/sdk/exposure/SAExposedProcess$ExposureRunnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8d
    :goto_8d
    return-void
.end method
