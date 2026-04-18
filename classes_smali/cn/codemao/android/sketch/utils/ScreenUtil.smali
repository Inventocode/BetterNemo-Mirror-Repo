.class public Lcn/codemao/android/sketch/utils/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# direct methods
.method public static calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;
    .registers 8

    .line 100
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 101
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 102
    aget v0, v0, v3

    .line 107
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sub-int/2addr v2, p1

    .line 108
    div-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    move v1, v2

    const/4 v0, 0x0

    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_1e

    :cond_1a
    sub-int/2addr v0, p1

    .line 114
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 118
    :goto_1e
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static getDimensionPixel(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "dimen"

    const-string v1, "android"

    .line 62
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_13

    .line 64
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v1, "window"

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 75
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 76
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 79
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 80
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x11

    if-lt v3, v6, :cond_41

    .line 82
    :try_start_23
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 83
    const-class v6, Landroid/view/Display;

    const-string v7, "getRealSize"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/graphics/Point;

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v3, v7, v5

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 85
    iget v1, v3, Landroid/graphics/Point;->y:I
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_41

    :catchall_41
    :cond_41
    aput v2, v0, v5

    aput v1, v0, v4

    return-object v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 1

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 2

    const-string v0, "status_bar_height"

    .line 55
    invoke-static {p0, v0}, Lcn/codemao/android/sketch/utils/ScreenUtil;->getDimensionPixel(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .registers 2

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method
