.class public Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;
.super Ljava/lang/Object;
.source "MiNotchScreen.java"

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

.method public static getNotchHeight(Landroid/content/Context;)I
    .registers 5

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static getNotchWidth(Landroid/content/Context;)I
    .registers 5

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notch_width"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private static isNotch()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.os.SystemProperties"

    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.miui.notch"

    aput-object v4, v3, v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_33

    if-ne v1, v6, :cond_33

    const/4 v0, 0x1

    :catchall_33
    :cond_33
    return v0
.end method


# virtual methods
.method public getNotchRect(Landroid/app/Activity;Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;)V
    .registers 5

    .line 64
    invoke-static {p1}, Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;->getNotchWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1}, Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;->getNotchHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcn/codemao/android/sketch/utils/ScreenUtil;->calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {p2, v0}, Lcn/codemao/android/sketch/notchlib/INotchScreen$NotchSizeCallback;->onResult(Ljava/util/List;)V

    return-void
.end method

.method public hasNotch(Landroid/app/Activity;)Z
    .registers 2

    .line 48
    invoke-static {}, Lcn/codemao/android/sketch/notchlib/impl/MiNotchScreen;->isNotch()Z

    move-result p1

    return p1
.end method
