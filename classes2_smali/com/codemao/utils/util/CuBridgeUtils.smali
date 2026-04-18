.class Lcom/codemao/utils/util/CuBridgeUtils;
.super Ljava/lang/Object;
.source "CuBridgeUtils.java"


# direct methods
.method static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 1

    .line 424
    invoke-static {p0}, Lcom/codemao/utils/util/CuKeyboardUtils;->fixSoftInputLeaks(Landroid/app/Activity;)V

    return-void
.end method

.method static getApplicationByReflect()Landroid/app/Application;
    .registers 1

    .line 106
    sget-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentProcessName()Ljava/lang/String;
    .registers 1

    .line 459
    invoke-static {}, Lcom/codemao/utils/util/CuProcessUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNotification(Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;Lcom/codemao/utils/util/CuUtils$Consumer;)Landroid/app/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;",
            "Lcom/codemao/utils/util/CuUtils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 432
    invoke-static {p0, p1}, Lcom/codemao/utils/util/CuNotificationUtils;->getNotification(Lcom/codemao/utils/util/CuNotificationUtils$ChannelConfig;Lcom/codemao/utils/util/CuUtils$Consumer;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static getSpUtils4Utils()Lcom/codemao/utils/util/CuSPUtils;
    .registers 1

    const-string v0, "Utils"

    .line 520
    invoke-static {v0}, Lcom/codemao/utils/util/CuSPUtils;->getInstance(Ljava/lang/String;)Lcom/codemao/utils/util/CuSPUtils;

    move-result-object v0

    return-object v0
.end method

.method static getTopActivity()Landroid/app/Activity;
    .registers 1

    .line 68
    sget-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static init(Landroid/app/Application;)V
    .registers 2

    .line 53
    sget-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->init(Landroid/app/Application;)V

    return-void
.end method

.method static isActivityAlive(Landroid/app/Activity;)Z
    .registers 1

    .line 117
    invoke-static {p0}, Lcom/codemao/utils/util/CuActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static preLoad()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 61
    invoke-static {}, Lcom/codemao/utils/util/CuAdaptUtils;->getPreLoadRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/codemao/utils/util/CuBridgeUtils;->preLoad([Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs preLoad([Ljava/lang/Runnable;)V
    .registers 5

    .line 588
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 589
    invoke-static {}, Lcom/codemao/utils/util/CuThreadUtils;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 3

    .line 560
    invoke-static {p0, p1, p2}, Lcom/codemao/utils/util/CuThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static unInit(Landroid/app/Application;)V
    .registers 2

    .line 57
    sget-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->unInit(Landroid/app/Application;)V

    return-void
.end method
