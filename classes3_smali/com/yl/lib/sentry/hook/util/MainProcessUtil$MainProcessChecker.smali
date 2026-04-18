.class public final Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;
.super Ljava/lang/Object;
.source "MainProcessUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;

.field private static currentProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->INSTANCE:Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;

    const-string v0, ""

    .line 15
    sput-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->currentProcessName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getActivityThread(Landroid/content/Context;)Ljava/lang/Object;
    .registers 3

    .line 61
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 63
    :cond_7
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    goto :goto_12

    .line 64
    :cond_e
    invoke-direct {p0, p1}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getActivityThreadInLoadedApkField(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method private final getActivityThreadInActivityThreadStaticField()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 69
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sCurrentActivityThread"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "sCurrentActivityThreadField"

    .line 72
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception v1

    .line 75
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityThreadInActivityThreadStaticField: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    :goto_36
    return-object v0
.end method

.method private final getActivityThreadInActivityThreadStaticMethod()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.app.ActivityThread"

    .line 82
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    .line 83
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_32

    :catch_17
    move-exception v1

    .line 85
    sget-object v2, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActivityThreadInActivityThreadStaticMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    :goto_32
    return-object v0
.end method

.method private final getActivityThreadInLoadedApkField(Landroid/content/Context;)Ljava/lang/Object;
    .registers 5

    .line 92
    :try_start_0
    const-class v0, Landroid/app/Application;

    const-string v1, "mLoadedApk"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "mLoadedApkField"

    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "mActivityThread"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v2, "mActivityThreadField"

    .line 96
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_48

    :catch_2c
    move-exception p1

    .line 99
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActivityThreadInLoadedApkField: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_48
    return-object p1
.end method

.method private final getProcessNameByReflect(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 46
    invoke-direct {p0, p1}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getActivityThread(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 50
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "currentProcessName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "method"

    .line 51
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_27
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public final getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_15

    .line 37
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Application.getProcessName()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_19

    .line 40
    :cond_15
    invoke-direct {p0, p1}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getProcessNameByReflect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :goto_19
    return-object p1
.end method

.method public final isMainProcess(Landroid/content/Context;)Z
    .registers 3

    if-nez p1, :cond_b

    .line 22
    sget-object p1, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v0, "======> isMainProcess context == null"

    invoke-virtual {p1, v0}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_b
    sget-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->currentProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 26
    invoke-virtual {p0, p1}, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->currentProcessName:Ljava/lang/String;

    .line 28
    :cond_19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/yl/lib/sentry/hook/util/MainProcessUtil$MainProcessChecker;->currentProcessName:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
