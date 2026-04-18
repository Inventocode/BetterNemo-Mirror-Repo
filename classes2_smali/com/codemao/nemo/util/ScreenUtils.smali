.class public Lcom/codemao/nemo/util/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field public static screenMode:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static dp2px(F)I
    .registers 2

    .line 63
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 2

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static fetchScreenDefaultDpi(Landroid/content/res/Resources;)I
    .registers 5

    .line 245
    sget-object v0, Lcom/codemao/nemo/MainApplication;->realSizePoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 246
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 247
    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/16 v2, 0x190

    if-le v1, v2, :cond_21

    if-gt v0, v2, :cond_12

    goto :goto_21

    :cond_12
    mul-int v1, v1, v1

    mul-int v0, v0, v0

    add-int/2addr v1, v0

    int-to-double v0, v1

    .line 253
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->fetchScreenInches()D

    move-result-wide v2

    goto :goto_37

    .line 250
    :cond_21
    :goto_21
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 251
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int v0, v0, v0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int p0, p0, p0

    add-int/2addr v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->fetchScreenInches()D

    move-result-wide v2

    :goto_37
    div-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public static fetchScreenInches()D
    .registers 6

    .line 262
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 263
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 267
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 268
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 271
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    .line 273
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static fetchViewInWindowPosition(Landroid/view/View;)[I
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 316
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    return-object v0
.end method

.method public static getDefaultDisplayDensity()I
    .registers 7

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 203
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 204
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 205
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 206
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInitialDisplayDensity"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 209
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return v0

    :catch_3f
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public static getScreenHeight()I
    .registers 1

    .line 99
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 4

    const-string v0, "window"

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 50
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-lt v1, v2, :cond_1b

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_26

    .line 55
    :cond_1b
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    .line 57
    invoke-virtual {v0, v1, p0}, Landroid/graphics/Point;->set(II)V

    :goto_26
    return-object v0
.end method

.method public static getScreenWidth()I
    .registers 1

    .line 90
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getStatusHeight()I
    .registers 5

    const-string v0, "status_bar_height"

    const/4 v1, -0x1

    :try_start_3
    const-string v2, "com.android.internal.R$dimen"

    .line 110
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 114
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    move-exception v2

    .line 116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    :goto_2f
    if-ne v2, v1, :cond_4f

    .line 119
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4f

    .line 121
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_4f
    return v2
.end method

.method public static isLargePad()Z
    .registers 5

    .line 301
    sget v0, Lcom/codemao/nemo/util/ScreenUtils;->screenMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_32

    .line 302
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isPadRatioAndSize()Z

    move-result v0

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "是否pad3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "是否pad"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->isPad(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2f

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    const/4 v0, 0x1

    :goto_30
    sput v0, Lcom/codemao/nemo/util/ScreenUtils;->screenMode:I

    .line 306
    :cond_32
    sget v0, Lcom/codemao/nemo/util/ScreenUtils;->screenMode:I

    if-nez v0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1
.end method

.method public static isPad(Landroid/content/Context;)Z
    .registers 4

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 221
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "是否pad1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "是否pad"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2f

    .line 223
    invoke-static {p0}, Lcom/codemao/nemo/util/ScreenUtils;->isPadBySize(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2f
    return v0
.end method

.method private static isPadBySize(Landroid/content/Context;)Z
    .registers 6

    .line 230
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->fetchScreenInches()D

    move-result-wide v0

    const-string p0, "是否pad"

    const-wide v2, 0x401d333333333333L  # 7.3

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_16

    const-string v0, "是否pad2:true"

    .line 231
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_16
    const-string v0, "是否pad2:false"

    .line 234
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static isPadRatioAndSize()Z
    .registers 8

    .line 284
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 285
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 286
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 288
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 289
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v6, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 290
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 291
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const-wide/high16 v4, 0x4021000000000000L  # 8.5

    cmpl-double v1, v2, v4

    if-gez v1, :cond_4c

    const v1, 0x3fb33333  # 1.4f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4a

    goto :goto_4c

    :cond_4a
    const/4 v0, 0x0

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v0, 0x1

    :goto_4d
    return v0
.end method

.method public static px2dp(F)I
    .registers 2

    .line 79
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    const/high16 v0, 0x3f000000  # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static setDefaultDisplay(Landroid/content/Context;I)V
    .registers 5

    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->fetchScreenDefaultDpi(Landroid/content/res/Resources;)I

    move-result v1

    if-lez p1, :cond_15

    if-ge p1, v1, :cond_15

    goto :goto_16

    :cond_15
    move p1, v1

    .line 187
    :goto_16
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v1

    const/16 v2, 0xf0

    if-eqz v1, :cond_22

    if-ge p1, v2, :cond_22

    const/16 p1, 0xf0

    .line 191
    :cond_22
    iput p1, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/high16 p1, 0x3f800000  # 1.0f

    .line 193
    iput p1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 194
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le p1, v1, :cond_32

    .line 195
    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_41

    .line 197
    :cond_32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :goto_41
    return-void
.end method
