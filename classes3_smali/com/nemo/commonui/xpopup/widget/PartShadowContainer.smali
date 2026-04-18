.class public Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;
.super Landroid/widget/FrameLayout;
.source "PartShadowContainer.java"


# instance fields
.field public isDismissOnTouchOutside:Z

.field private listener:Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->isDismissOnTouchOutside:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->isDismissOnTouchOutside:Z

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 42
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v0

    const/4 v5, 0x1

    aget v6, v2, v5

    aget v0, v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    aget v2, v2, v5

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v2, v1

    invoke-direct {v3, v4, v6, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1, v3}, Lcom/nemo/commonui/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7c

    if-eq v0, v5, :cond_3a

    goto :goto_88

    .line 51
    :cond_3a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->x:F

    sub-float/2addr v0, v1

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->y:F

    sub-float/2addr p1, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 53
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v6, p1

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_76

    .line 55
    iget-boolean p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->isDismissOnTouchOutside:Z

    if-eqz p1, :cond_76

    .line 56
    iget-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->listener:Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;

    if-eqz p1, :cond_76

    invoke-interface {p1}, Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;->onClickOutside()V

    :cond_76
    const/4 p1, 0x0

    .line 59
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->x:F

    .line 60
    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->y:F

    goto :goto_88

    .line 47
    :cond_7c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->x:F

    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->y:F

    :cond_88
    :goto_88
    return v5
.end method

.method public setOnClickOutsideListener(Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/widget/PartShadowContainer;->listener:Lcom/nemo/commonui/xpopup/interfaces/OnClickOutsideListener;

    return-void
.end method
