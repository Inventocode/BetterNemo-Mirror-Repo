.class public final Lcom/blankj/utilcode/util/ActivityUtils;
.super Ljava/lang/Object;
.source "ActivityUtils.java"


# direct methods
.method public static getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 101
    :cond_4
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 102
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_f

    return-object v0

    :cond_f
    return-object p0
.end method

.method private static getActivityByContextInner(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 109
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :cond_9
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2d

    .line 111
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_14

    .line 112
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 114
    :cond_14
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1b

    return-object v2

    .line 116
    :cond_1b
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_27

    return-object v0

    .line 121
    :cond_27
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_2d
    return-object v0
.end method

.method private static getActivityFromDecorContext(Landroid/content/Context;)Landroid/app/Activity;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 132
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.internal.policy.DecorContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 134
    :try_start_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mActivityContext"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    :cond_2f
    return-object v0
.end method

.method public static isActivityAlive(Landroid/app/Activity;)Z
    .registers 3

    if-eqz p0, :cond_16

    .line 1541
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_16

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_14

    .line 1542
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method
