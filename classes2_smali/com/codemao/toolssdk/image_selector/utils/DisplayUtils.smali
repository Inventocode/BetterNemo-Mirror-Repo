.class public Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public static clipViewCornerByDp(Landroid/view/View;I)V
    .registers 3

    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 20
    new-instance v0, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils$1;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils$1;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 14
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
