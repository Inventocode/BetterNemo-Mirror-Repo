.class public final Lcom/codemao/nemo/util/ProcessHelperKt;
.super Ljava/lang/Object;
.source "ProcessHelper.kt"


# static fields
.field private static currentProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static final getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 26
    sget-object p0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 31
    :cond_10
    invoke-static {}, Lcom/codemao/nemo/util/ProcessHelperKt;->getCurrentProcessNameByApplication()Ljava/lang/String;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 33
    sget-object p0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 38
    :cond_1f
    invoke-static {}, Lcom/codemao/nemo/util/ProcessHelperKt;->getCurrentProcessNameByActivityThread()Ljava/lang/String;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 40
    sget-object p0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    return-object p0

    .line 45
    :cond_2e
    invoke-static {p0}, Lcom/codemao/nemo/util/ProcessHelperKt;->getCurrentProcessNameByActivityManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 44
    sput-object p0, Lcom/codemao/nemo/util/ProcessHelperKt;->currentProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public static final getCurrentProcessNameByActivityManager(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 88
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_33

    .line 90
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 92
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 93
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1c

    .line 94
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_33
    return-object v0
.end method

.method public static final getCurrentProcessNameByActivityThread()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi",
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 67
    const-class v2, Landroid/app/Application;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    .line 66
    invoke-static {v1, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentProcessName"

    new-array v4, v3, [Ljava/lang/Class;

    .line 69
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 73
    check-cast v1, Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    move-object v0, v1

    goto :goto_2c

    :catchall_28
    move-exception v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2c
    :goto_2c
    return-object v0
.end method

.method public static final getCurrentProcessNameByApplication()Ljava/lang/String;
    .registers 2

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 55
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public static final isMainProcess(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/codemao/nemo/util/ProcessHelperKt;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
