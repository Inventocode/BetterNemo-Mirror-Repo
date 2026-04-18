.class public Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;
.super Ljava/lang/Object;
.source "SystemBarTintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/readystatesoftware/systembartint/SystemBarTintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemBarConfig"
.end annotation


# instance fields
.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;ZZ)V
    .registers 6

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 376
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_13

    const/4 p3, 0x1

    goto :goto_14

    :cond_13
    const/4 p3, 0x0

    :goto_14
    iput-boolean p3, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    .line 377
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result p3

    iput p3, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const-string p3, "status_bar_height"

    .line 378
    invoke-direct {p0, p2, p3}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    .line 379
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getActionBarHeight(Landroid/content/Context;)I

    .line 380
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    .line 381
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    if-lez p2, :cond_36

    const/4 v0, 0x1

    .line 382
    :cond_36
    iput-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;ZZLcom/readystatesoftware/systembartint/SystemBarTintManager$1;)V
    .registers 5

    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;-><init>(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method private getActionBarHeight(Landroid/content/Context;)I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 390
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_21

    .line 391
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    return p1
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 5

    const-string v0, "dimen"

    const-string v1, "android"

    .line 448
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_f

    .line 450
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    return p1
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 402
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1e

    .line 403
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 405
    iget-boolean p1, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz p1, :cond_17

    const-string p1, "navigation_bar_height"

    goto :goto_19

    :cond_17
    const-string p1, "navigation_bar_height_landscape"

    .line 410
    :goto_19
    invoke-direct {p0, v0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 420
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_17

    .line 421
    invoke-direct {p0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "navigation_bar_width"

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private getSmallestWidthDp(Landroid/app/Activity;)F
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 457
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 458
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_17

    .line 459
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 462
    :cond_17
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 464
    :goto_22
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 465
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 466
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 430
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 431
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    .line 433
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 435
    invoke-static {}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v2, 0x0

    goto :goto_31

    .line 437
    :cond_23
    invoke-static {}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_31

    :cond_30
    move v2, p1

    :goto_31
    return v2

    .line 442
    :cond_32
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method


# virtual methods
.method public getNavigationBarHeight()I
    .registers 2

    .line 514
    iget v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method public getNavigationBarWidth()I
    .registers 2

    .line 524
    iget v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method public getStatusBarHeight()I
    .registers 2

    .line 486
    iget v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mStatusBarHeight:I

    return v0
.end method

.method public hasNavigtionBar()Z
    .registers 2

    .line 504
    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method public isNavigationAtBottom()Z
    .registers 3

    .line 477
    iget v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000  # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_f

    iget-boolean v0, p0, Lcom/readystatesoftware/systembartint/SystemBarTintManager$SystemBarConfig;->mInPortrait:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
