.class public final Lcom/qiniu/android/utils/ContextGetter;
.super Ljava/lang/Object;
.source "ContextGetter.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    return-void
.end method

.method public static applicationContext()Landroid/content/Context;
    .registers 1

    .line 15
    sget-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    .line 19
    :cond_5
    sget-object v0, Lcom/qiniu/android/storage/GlobalConfiguration;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    return-object v0

    .line 23
    :cond_a
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->getApplicationUsingReflection()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 25
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    .line 27
    :cond_16
    sget-object v0, Lcom/qiniu/android/utils/ContextGetter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private static getApplicationUsingReflection()Landroid/app/Application;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 33
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 34
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_36

    if-nez v2, :cond_3c

    :try_start_18
    const-string v4, "currentActivityThread"

    new-array v5, v3, [Ljava/lang/Class;

    .line 37
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "getApplication"

    new-array v3, v3, [Ljava/lang/Class;

    .line 38
    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_32} :catch_34

    move-object v2, v0

    goto :goto_3c

    :catch_34
    move-exception v0

    goto :goto_39

    :catch_36
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 41
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3c
    :goto_3c
    return-object v2
.end method
