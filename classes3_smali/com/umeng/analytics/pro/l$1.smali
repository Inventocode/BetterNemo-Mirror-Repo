.class Lcom/umeng/analytics/pro/l$1;
.super Ljava/lang/Object;
.source "AutoViewPageTracker.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/pro/l;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/pro/l;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .line 479
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/umeng/analytics/pro/ap;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "header_first_resume"

    .line 435
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger enabled."

    .line 436
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/umeng/analytics/pro/l;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 438
    :try_start_14
    invoke-static {}, Lcom/umeng/analytics/pro/l;->e()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 439
    monitor-exit v0

    return-void

    .line 441
    :cond_1c
    monitor-exit v0

    goto :goto_28

    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_1e

    throw p1

    :cond_21
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityPaused: FirstResumeTrigger disabled."

    .line 443
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_28
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eq v0, v1, :cond_3c

    .line 446
    sget-object p1, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->MANUAL:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-ne p1, v0, :cond_3b

    .line 447
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/umeng/analytics/b;->i()V

    :cond_3b
    return-void

    .line 451
    :cond_3c
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->b(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    .line 452
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->i()V

    .line 453
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/umeng/analytics/pro/l;->b:Z

    .line 470
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/ap;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "header_first_resume"

    .line 397
    invoke-static {v0}, Lcom/umeng/commonsdk/config/FieldManager;->allow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger enabled."

    .line 398
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/umeng/analytics/pro/l;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 400
    :try_start_14
    invoke-static {}, Lcom/umeng/analytics/pro/l;->e()Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    .line 401
    invoke-static {v1}, Lcom/umeng/analytics/pro/l;->a(Z)Z

    .line 403
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_25

    .line 404
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    goto :goto_34

    :catchall_25
    move-exception p1

    .line 403
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    const-string v0, "MobclickRT"

    const-string v1, "--->>> onActivityResumed: FirstResumeTrigger disabled."

    .line 406
    invoke-static {v0, v1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0, p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;Landroid/app/Activity;)V

    .line 410
    :goto_34
    invoke-static {}, Lcom/umeng/analytics/pro/l;->f()Lcom/umeng/analytics/pro/ap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/umeng/analytics/pro/ap;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 8

    if-eqz p1, :cond_ca

    .line 339
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)I

    move-result v0

    if-gtz v0, :cond_b7

    .line 342
    sget-object v0, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 343
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    .line 345
    :cond_18
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    .line 346
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    sput v0, Lcom/umeng/analytics/pro/l;->e:I

    .line 348
    :cond_23
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const-string v1, "activityName"

    const-string v2, "isMainProcess"

    const-string v3, "pid"

    if-nez v0, :cond_74

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 350
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_60

    const-string v2, "$$_onUMengEnterForegroundInitError"

    .line 355
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_60
    const/4 p1, -0x2

    .line 358
    sput p1, Lcom/umeng/analytics/pro/l;->e:I

    .line 359
    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->isDebugLog()Z

    move-result p1

    if-eqz p1, :cond_b7

    const/4 p1, 0x2

    const-string v0, "请在Application.onCreate函数中使用UMConfigure.preInit函数初始化友盟sdk"

    .line 360
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMLog;->mutlInfo(I[Ljava/lang/String;)V

    goto :goto_b7

    .line 362
    :cond_74
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7f

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b7

    .line 363
    :cond_7f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    sget-object v4, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const-string v5, "pairUUID"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_b7

    .line 370
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    const-string v2, "$$_onUMengEnterForeground"

    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 378
    :cond_b7
    :goto_b7
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->d(Lcom/umeng/analytics/pro/l;)I

    move-result p1

    if-gez p1, :cond_c5

    .line 379
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->e(Lcom/umeng/analytics/pro/l;)I

    goto :goto_ca

    .line 381
    :cond_c5
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->f(Lcom/umeng/analytics/pro/l;)I

    :cond_ca
    :goto_ca
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 5

    .line 270
    sget-object v0, Lcom/umeng/commonsdk/UMConfigure;->AUTO_ACTIVITY_PAGE_COLLECTION:Lcom/umeng/analytics/MobclickAgent$PageMode;

    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    if-eqz p1, :cond_7f

    .line 293
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 294
    iget-object p1, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {p1}, Lcom/umeng/analytics/pro/l;->a(Lcom/umeng/analytics/pro/l;)I

    goto :goto_7f

    .line 296
    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->b(Lcom/umeng/analytics/pro/l;)I

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/pro/l$1;->a:Lcom/umeng/analytics/pro/l;

    invoke-static {v0}, Lcom/umeng/analytics/pro/l;->c(Lcom/umeng/analytics/pro/l;)I

    move-result v0

    if-gtz v0, :cond_7f

    .line 300
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    if-nez v0, :cond_2a

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_7f

    .line 302
    :cond_2a
    sget v0, Lcom/umeng/analytics/pro/l;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    if-nez v0, :cond_7f

    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 304
    :cond_37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 305
    sget-object v1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    const-string v2, "pairUUID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "reason"

    const-string v2, "Normal"

    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {p1}, Lcom/umeng/commonsdk/utils/UMUtils;->isMainProgress(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isMainProcess"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    invoke-static {}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/b;

    move-result-object v1

    if-eqz v1, :cond_78

    const-string v2, "$$_onUMengEnterBackground"

    .line 313
    invoke-virtual {v1, p1, v2, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 316
    :cond_78
    sget-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    if-eqz p1, :cond_7f

    const/4 p1, 0x0

    .line 317
    sput-object p1, Lcom/umeng/analytics/pro/l;->d:Ljava/lang/String;

    :cond_7f
    :goto_7f
    return-void
.end method
