.class final Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;
.super Ljava/lang/Object;
.source "CuUtilsActivityLifecycleImpl.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field static final INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

.field private static final STUB:Landroid/app/Activity;


# instance fields
.field private final mActivityLifecycleCallbacksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mActivityList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigCount:I

.field private mForegroundCount:I

.field private mIsBackground:Z

.field private final mStatusListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/utils/util/CuUtils$OnAppStatusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    invoke-direct {v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;-><init>()V

    sput-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->INSTANCE:Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;

    .line 41
    new-instance v0, Landroid/app/Activity;

    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    sput-object v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 44
    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mConfigCount:I

    .line 45
    iput-boolean v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mIsBackground:Z

    return-void
.end method

.method private consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    sget-object v1, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->STUB:Landroid/app/Activity;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V

    return-void
.end method

.method private consumeLifecycle(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Ljava/util/List<",
            "Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 155
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7
    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onLifecycleChanged(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 157
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 158
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;)V

    goto :goto_7

    .line 159
    :cond_22
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 160
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_7

    .line 161
    :cond_2e
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 162
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_7

    .line 163
    :cond_3a
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 164
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_7

    .line 165
    :cond_46
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 166
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_7

    .line 167
    :cond_52
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 168
    invoke-virtual {v0, p1}, Lcom/codemao/utils/util/CuUtils$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_7

    .line 171
    :cond_5e
    sget-object p3, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p2, p3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 172
    iget-object p2, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    return-void
.end method

.method private getActivitiesByReflect()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 365
    :try_start_6
    invoke-direct {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_d

    return-object v0

    .line 367
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    .line 368
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 370
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_24

    return-object v0

    .line 373
    :cond_24
    check-cast v2, Ljava/util/Map;

    .line 374
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 375
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "activity"

    .line 376
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 377
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 378
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    if-nez v1, :cond_62

    const-string v7, "paused"

    .line 380
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 381
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 382
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    move-object v1, v6

    goto :goto_2e

    .line 385
    :cond_5e
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_2e

    .line 388
    :cond_62
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_65} :catch_66

    goto :goto_2e

    :catch_66
    move-exception v2

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivitiesByReflect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UtilsActivityLifecycle"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    if-eqz v1, :cond_86

    .line 395
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_86
    return-object v0
.end method

.method private getActivityThread()Ljava/lang/Object;
    .registers 2

    .line 401
    invoke-direct {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 403
    :cond_7
    invoke-direct {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 408
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sCurrentActivityThread"

    .line 409
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    move-exception v1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityThreadInActivityThreadStaticField: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtilsActivityLifecycle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 420
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 421
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v1

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtilsActivityLifecycle"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private postStatus(Landroid/app/Activity;Z)V
    .registers 5

    .line 337
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mStatusListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/utils/util/CuUtils$OnAppStatusChangedListener;

    if-eqz p2, :cond_21

    .line 340
    invoke-interface {v1, p1}, Lcom/codemao/utils/util/CuUtils$OnAppStatusChangedListener;->onForeground(Landroid/app/Activity;)V

    goto :goto_f

    .line 342
    :cond_21
    invoke-interface {v1, p1}, Lcom/codemao/utils/util/CuUtils$OnAppStatusChangedListener;->onBackground(Landroid/app/Activity;)V

    goto :goto_f

    :cond_25
    return-void
.end method

.method private processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V
    .registers 5

    const/16 v0, -0x7b

    if-eqz p2, :cond_1e

    .line 311
    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 312
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 313
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 314
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 p2, 0x3

    .line 315
    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_39

    .line 317
    :cond_1e
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    .line 318
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_2f

    return-void

    .line 319
    :cond_2f
    new-instance v0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl$4;-><init>(Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    const-wide/16 p1, 0x64

    invoke-static {v0, p1, p2}, Lcom/codemao/utils/util/CuBridgeUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_39} :catch_39

    :catch_39
    :goto_39
    return-void
.end method

.method private static setAnimatorsEnabled()V
    .registers 4

    .line 432
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_d

    invoke-static {}, Landroid/animation/ValueAnimator;->areAnimatorsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 437
    :cond_d
    :try_start_d
    const-class v0, Landroid/animation/ValueAnimator;

    const-string v1, "sDurationScale"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_43

    const/high16 v2, 0x3f800000  # 1.0f

    .line 442
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "UtilsActivityLifecycle"

    const-string v1, "setAnimatorsEnabled: Animators are enabled now!"

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_39} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_39} :catch_3a

    goto :goto_43

    :catch_3a
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_43

    :catch_3f
    move-exception v0

    .line 446
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :cond_43
    :goto_43
    return-void
.end method

.method private setTopActivity(Landroid/app/Activity;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 349
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 350
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 351
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_26

    .line 354
    :cond_21
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_26
    :goto_26
    return-void
.end method


# virtual methods
.method getActivityList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 71
    :cond_10
    invoke-direct {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivitiesByReflect()Ljava/util/List;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getApplicationByReflect()Landroid/app/Application;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 178
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 179
    invoke-direct {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivityThread()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_e

    return-object v0

    :cond_e
    const-string v3, "getApplication"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 181
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    return-object v0

    .line 183
    :cond_20
    check-cast v1, Landroid/app/Application;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object v1

    :catch_23
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method getTopActivity()Landroid/app/Activity;
    .registers 4

    .line 57
    invoke-virtual {p0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->getActivityList()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 59
    invoke-static {v1}, Lcom/codemao/utils/util/CuBridgeUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_8

    :cond_1b
    return-object v1

    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method init(Landroid/app/Application;)V
    .registers 2

    .line 48
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 198
    iget-object p2, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    if-nez p2, :cond_c

    const/4 p2, 0x1

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 201
    :cond_c
    invoke-static {p1}, Lcom/codemao/utils/util/CuLanguageUtils;->applyLanguage(Landroid/app/Activity;)V

    .line 202
    invoke-static {}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->setAnimatorsEnabled()V

    .line 203
    invoke-direct {p0, p1}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 204
    sget-object p2, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, p2}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 293
    invoke-static {p1}, Lcom/codemao/utils/util/CuBridgeUtils;->fixSoftInputLeaks(Landroid/app/Activity;)V

    .line 294
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 251
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityPostDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPostPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPostSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPostStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPreSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityPreStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 234
    invoke-direct {p0, p1}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 235
    iget-boolean v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mIsBackground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 236
    iput-boolean v1, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mIsBackground:Z

    const/4 v0, 0x1

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 239
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 240
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 3

    .line 215
    iget-boolean v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mIsBackground:Z

    if-nez v0, :cond_7

    .line 216
    invoke-direct {p0, p1}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->setTopActivity(Landroid/app/Activity;)V

    .line 218
    :cond_7
    iget v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mConfigCount:I

    if-gez v0, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 219
    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mConfigCount:I

    goto :goto_16

    .line 221
    :cond_10
    iget v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mForegroundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mForegroundCount:I

    .line 223
    :goto_16
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    .line 262
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 263
    iget v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mConfigCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mConfigCount:I

    goto :goto_1a

    .line 265
    :cond_d
    iget v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mForegroundCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mForegroundCount:I

    if-gtz v0, :cond_1a

    .line 267
    iput-boolean v1, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mIsBackground:Z

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->postStatus(Landroid/app/Activity;Z)V

    .line 271
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1, v1}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->processHideSoftInputOnActivityDestroy(Landroid/app/Activity;Z)V

    .line 272
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-direct {p0, p1, v0}, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->consumeActivityLifecycleCallbacks(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method unInit(Landroid/app/Application;)V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/codemao/utils/util/CuUtilsActivityLifecycleImpl;->mActivityList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 53
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
