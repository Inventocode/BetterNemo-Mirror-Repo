.class public Lcn/codemao/android/sketch/utils/UiUtil;
.super Ljava/lang/Object;
.source "UiUtil.java"


# static fields
.field private static lastClickSec:J


# direct methods
.method public static dp2px(Landroid/content/Context;F)I
    .registers 2

    .line 28
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/UiUtil;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

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

.method public static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .registers 1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static hideNavigationBar(Landroid/app/Activity;)V
    .registers 3

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1706

    .line 219
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 220
    new-instance v0, Lcn/codemao/android/sketch/utils/UiUtil$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/sketch/utils/UiUtil$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :cond_1b
    return-void
.end method

.method public static isFastClick()Z
    .registers 2

    const-wide/16 v0, 0x1f4

    .line 191
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result v0

    return v0
.end method

.method public static isFastClick(J)Z
    .registers 7

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcn/codemao/android/sketch/utils/UiUtil;->lastClickSec:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_13

    cmp-long v2, v0, p0

    if-gez v2, :cond_13

    const/4 p0, 0x1

    return p0

    .line 199
    :cond_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcn/codemao/android/sketch/utils/UiUtil;->lastClickSec:J

    const/4 p0, 0x0

    return p0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 2

    .line 33
    invoke-static {p0}, Lcn/codemao/android/sketch/utils/UiUtil;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method
