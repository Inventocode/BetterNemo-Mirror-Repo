.class public Lcom/codemao/toolssdk/image_selector/utils/StatusBarCompat;
.super Ljava/lang/Object;
.source "StatusBarCompat.java"


# direct methods
.method public static calculateNotchRect(Landroid/content/Context;II)Landroid/graphics/Rect;
    .registers 8

    .line 103
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/StatusBarCompat;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 105
    aget v0, v0, v3

    .line 110
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/StatusBarCompat;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    sub-int/2addr v2, p1

    .line 111
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

    .line 117
    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    .line 121
    :goto_1e
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v1, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public static compatTransStatusBar(Landroid/app/Activity;IZ)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_44

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_13

    const/16 p2, 0x2400

    goto :goto_15

    :cond_13
    const/16 p2, 0x500

    .line 72
    :goto_15
    invoke-virtual {v1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/16 p2, 0x15

    const/high16 v1, 0x4000000

    if-lt v0, p2, :cond_3d

    .line 75
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/utils/AndroidRomUtil;->isEMUI()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_35

    .line 78
    :cond_2c
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 80
    :goto_35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_44

    .line 82
    :cond_3d
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .registers 11

    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v1, "window"

    .line 130
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 131
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 132
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 133
    invoke-virtual {p0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 135
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 136
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x11

    if-lt v3, v6, :cond_41

    .line 138
    :try_start_23
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 139
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

    .line 140
    iget v2, v3, Landroid/graphics/Point;->x:I

    .line 141
    iget v1, v3, Landroid/graphics/Point;->y:I
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_41

    :catchall_41
    :cond_41
    aput v2, v0, v5

    aput v1, v0, v4

    return-object v0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .registers 2

    .line 150
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
