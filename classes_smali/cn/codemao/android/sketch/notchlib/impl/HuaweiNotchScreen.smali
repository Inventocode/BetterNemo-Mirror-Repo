.class public Lcn/codemao/android/sketch/notchlib/impl/HuaweiNotchScreen;
.super Ljava/lang/Object;
.source "HuaweiNotchScreen.java"

# interfaces
.implements Lcn/codemao/android/sketch/notchlib/INotchScreen;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V
    .registers 7

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNotchSize"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 75
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {p1, v2, v0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {p2, v1}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    const/4 p1, 0x0

    .line 81
    invoke-interface {p2, p1}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    :goto_34
    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x0

    .line 46
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v1, "com.huawei.android.util.HwNotchSizeUtil"

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "hasNotchInScreen"

    new-array v2, v0, [Ljava/lang/Class;

    .line 48
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1f

    :catchall_1f
    return v0
.end method
