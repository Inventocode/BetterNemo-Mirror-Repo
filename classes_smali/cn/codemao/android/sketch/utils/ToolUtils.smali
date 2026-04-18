.class public Lcn/codemao/android/sketch/utils/ToolUtils;
.super Ljava/lang/Object;
.source "ToolUtils.java"


# direct methods
.method public static hasNotch(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 26
    :cond_4
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ToolUtils;->hasNotchInOppo(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ToolUtils;->hasNotchInHW(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ToolUtils;->hasNotchInViVo(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static hasNotchInHW(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 56
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 57
    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    return p0

    :catch_20
    :try_start_20
    const-string p0, "ToolUtils"

    const-string v1, "hasNotchInHW Exception"

    .line 60
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_27

    :catchall_27
    return v0
.end method

.method public static hasNotchInOppo(Landroid/content/Context;)Z
    .registers 2

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasNotchInViVo(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    .line 41
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v1, "com.util.FtFeature"

    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "isFeatureSupport"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 43
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x20

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d
    .catchall {:try_start_1 .. :try_end_2c} :catchall_34

    return p0

    :catch_2d
    :try_start_2d
    const-string p0, "ToolUtils"

    const-string v1, "hasNotchInViVo Exception"

    .line 46
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_34

    :catchall_34
    return v0
.end method
