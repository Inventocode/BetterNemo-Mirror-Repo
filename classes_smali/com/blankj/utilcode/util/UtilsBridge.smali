.class Lcom/blankj/utilcode/util/UtilsBridge;
.super Ljava/lang/Object;
.source "UtilsBridge.java"


# direct methods
.method static addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    .line 78
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->addActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static dp2px(F)I
    .registers 1

    .line 499
    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    return p0
.end method

.method static fixSoftInputLeaks(Landroid/app/Activity;)V
    .registers 1

    .line 422
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->fixSoftInputLeaks(Landroid/app/Activity;)V

    return-void
.end method

.method static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 541
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getActivityList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getAppScreenWidth()I
    .registers 1

    .line 471
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenWidth()I

    move-result v0

    return v0
.end method

.method static getApplicationByReflect()Landroid/app/Application;
    .registers 1

    .line 104
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentProcessName()Ljava/lang/String;
    .registers 1

    .line 457
    invoke-static {}, Lcom/blankj/utilcode/util/ProcessUtils;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getNavBarHeight()I
    .registers 1

    .line 161
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getNavBarHeight()I

    move-result v0

    return v0
.end method

.method static getNotification(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;Lcom/blankj/utilcode/util/Utils$Consumer;)Landroid/app/Notification;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .line 430
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/NotificationUtils;->getNotification(Lcom/blankj/utilcode/util/NotificationUtils$ChannelConfig;Lcom/blankj/utilcode/util/Utils$Consumer;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method static getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;
    .registers 1

    const-string v0, "Utils"

    .line 518
    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    return-object v0
.end method

.method static getStatusBarHeight()I
    .registers 1

    .line 157
    invoke-static {}, Lcom/blankj/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v0

    return v0
.end method

.method static getString(I)Ljava/lang/String;
    .registers 1

    .line 533
    invoke-static {p0}, Lcom/blankj/utilcode/util/StringUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static init(Landroid/app/Application;)V
    .registers 2

    .line 51
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->init(Landroid/app/Application;)V

    return-void
.end method

.method static isActivityAlive(Landroid/app/Activity;)Z
    .registers 1

    .line 115
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static isAppForeground()Z
    .registers 1

    .line 108
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->isAppForeground()Z

    move-result v0

    return v0
.end method

.method static isGrantedDrawOverlays()Z
    .registers 1

    .line 442
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    return v0
.end method

.method static isLayoutRtl()Z
    .registers 1

    .line 612
    invoke-static {}, Lcom/blankj/utilcode/util/ViewUtils;->isLayoutRtl()Z

    move-result v0

    return v0
.end method

.method static layoutId2View(I)Landroid/view/View;
    .registers 1

    .line 608
    invoke-static {p0}, Lcom/blankj/utilcode/util/ViewUtils;->layoutId2View(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static preLoad()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    .line 59
    invoke-static {}, Lcom/blankj/utilcode/util/AdaptScreenUtils;->getPreLoadRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->preLoad([Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs preLoad([Ljava/lang/Runnable;)V
    .registers 5

    .line 587
    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 588
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method static removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V
    .registers 2

    .line 82
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->removeActivityLifecycleCallbacks(Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static runOnUiThread(Ljava/lang/Runnable;)V
    .registers 1

    .line 554
    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .registers 3

    .line 558
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static unInit(Landroid/app/Application;)V
    .registers 2

    .line 55
    sget-object v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->INSTANCE:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    invoke-virtual {v0, p0}, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->unInit(Landroid/app/Application;)V

    return-void
.end method

.method static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 1

    .line 359
    invoke-static {p0}, Lcom/blankj/utilcode/util/ImageUtils;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
