.class Lcom/gyf/immersionbar/BarConfig;
.super Ljava/lang/Object;
.source "BarConfig.java"


# instance fields
.field private final mActionBarHeight:I

.field private final mHasNavigationBar:Z

.field private final mInPortrait:Z

.field private final mNavigationBarHeight:I

.field private final mNavigationBarWidth:I

.field private final mSmallestWidthDp:F

.field private final mStatusBarHeight:I


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/gyf/immersionbar/BarConfig;->mInPortrait:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/BarConfig;->getSmallestWidthDp(Landroid/app/Activity;)F

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/BarConfig;->mSmallestWidthDp:F

    const-string v0, "status_bar_height"

    .line 48
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/BarConfig;->getInternalDimensionSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/BarConfig;->mStatusBarHeight:I

    .line 49
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/BarConfig;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/BarConfig;->mActionBarHeight:I

    .line 50
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/gyf/immersionbar/BarConfig;->mNavigationBarHeight:I

    .line 51
    invoke-direct {p0, p1}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/gyf/immersionbar/BarConfig;->mNavigationBarWidth:I

    if-lez v0, :cond_39

    const/4 v1, 0x1

    .line 52
    :cond_39
    iput-boolean v1, p0, Lcom/gyf/immersionbar/BarConfig;->mHasNavigationBar:Z

    return-void
.end method

.method private getActionBarHeight(Landroid/app/Activity;)I
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-lt v0, v2, :cond_37

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v2, Lcom/gyf/immersionbar/R$id;->action_bar_container:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :cond_17
    if-nez v1, :cond_37

    .line 64
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 66
    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    :cond_37
    return v1
.end method

.method static getInternalDimensionSize(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    .line 124
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_54

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 127
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v1, v2, :cond_30

    .line 129
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2f

    const-string v3, "status_bar_height"

    .line 130
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_2f
    return v1

    .line 133
    :cond_30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 134
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_44
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_44} :catch_54

    int-to-float v0, v2

    mul-float v0, v0, p1

    div-float/2addr v0, p0

    const/4 p0, 0x0

    const/high16 p1, 0x3f000000  # 0.5f

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_51

    add-float/2addr v0, p1

    goto :goto_52

    :cond_51
    sub-float/2addr v0, p1

    :goto_52
    float-to-int p0, v0

    return p0

    :catch_54
    :cond_54
    return v0
.end method

.method private getNavigationBarHeight(Landroid/content/Context;)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_14

    .line 76
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/BarConfig;->hasNavBar(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    invoke-static {p1}, Lcom/gyf/immersionbar/BarConfig;->getNavigationBarHeightInternal(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method static getNavigationBarHeightInternal(Landroid/content/Context;)I
    .registers 3

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const-string v0, "navigation_bar_height"

    goto :goto_12

    :cond_10
    const-string v0, "navigation_bar_height_landscape"

    .line 227
    :goto_12
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/BarConfig;->getInternalDimensionSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNavigationBarWidth(Landroid/content/Context;)I
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    .line 87
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/gyf/immersionbar/BarConfig;->hasNavBar(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "navigation_bar_width"

    .line 88
    invoke-static {p1, v0}, Lcom/gyf/immersionbar/BarConfig;->getInternalDimensionSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_16
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

    .line 147
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_17

    .line 149
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_22

    .line 151
    :cond_17
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 153
    :goto_22
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 154
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 155
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private hasNavBar(Landroid/app/Activity;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_14

    .line 97
    invoke-static {p1}, Lcom/gyf/immersionbar/GestureUtils;->getGestureBean(Landroid/content/Context;)Lcom/gyf/immersionbar/GestureUtils$GestureBean;

    move-result-object v3

    .line 98
    iget-boolean v4, v3, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->checkNavigation:Z

    if-nez v4, :cond_14

    iget-boolean v3, v3, Lcom/gyf/immersionbar/GestureUtils$GestureBean;->isGesture:Z

    if-eqz v3, :cond_14

    return v1

    .line 103
    :cond_14
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 106
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    if-lt v0, v2, :cond_26

    .line 108
    invoke-virtual {p1, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    :cond_26
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 112
    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 113
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    invoke-virtual {p1, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget p1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 117
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_3c

    sub-int/2addr v0, p1

    if-lez v0, :cond_3d

    :cond_3c
    const/4 v1, 0x1

    :cond_3d
    return v1
.end method


# virtual methods
.method getActionBarHeight()I
    .registers 2

    .line 184
    iget v0, p0, Lcom/gyf/immersionbar/BarConfig;->mActionBarHeight:I

    return v0
.end method

.method getNavigationBarHeight()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/gyf/immersionbar/BarConfig;->mNavigationBarHeight:I

    return v0
.end method

.method getNavigationBarWidth()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/gyf/immersionbar/BarConfig;->mNavigationBarWidth:I

    return v0
.end method

.method getStatusBarHeight()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/gyf/immersionbar/BarConfig;->mStatusBarHeight:I

    return v0
.end method

.method hasNavigationBar()Z
    .registers 2

    .line 193
    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarConfig;->mHasNavigationBar:Z

    return v0
.end method

.method isNavigationAtBottom()Z
    .registers 3

    .line 166
    iget v0, p0, Lcom/gyf/immersionbar/BarConfig;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000  # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_f

    iget-boolean v0, p0, Lcom/gyf/immersionbar/BarConfig;->mInPortrait:Z

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
