.class public Lcom/lxj/xpopup/widget/PartShadowContainer;
.super Landroid/widget/FrameLayout;
.source "PartShadowContainer.java"


# instance fields
.field private listener:Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;

.field public notDismissArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public popupView:Lcom/lxj/xpopup/core/BasePopupView;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/widget/PartShadowContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 46
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 47
    new-instance v4, Landroid/graphics/Rect;

    aget v5, v3, v0

    const/4 v6, 0x1

    aget v7, v3, v6

    aget v8, v3, v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    aget v3, v3, v6

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v3, v1

    invoke-direct {v4, v5, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {v1, v3, v4}, Lcom/lxj/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_bf

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_b3

    if-eq v1, v6, :cond_40

    if-eq v1, v2, :cond_40

    const/4 v2, 0x3

    if-eq v1, v2, :cond_40

    goto/16 :goto_bf

    .line 65
    :cond_40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->x:F

    sub-float/2addr v1, v2

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->y:F

    sub-float/2addr v2, v3

    float-to-double v3, v1

    const-wide/high16 v7, 0x4000000000000000L  # 2.0

    .line 67
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v1, v2

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 68
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_ad

    .line 69
    iget-object v1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->notDismissArea:Ljava/util/ArrayList;

    if-eqz v1, :cond_a6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a6

    .line 71
    iget-object v1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->notDismissArea:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_81
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-static {v3, v4, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->isInRect(FFLandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_81

    const/4 v0, 0x1

    :cond_9c
    if-nez v0, :cond_ad

    .line 77
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->listener:Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;

    if-eqz p1, :cond_ad

    .line 78
    invoke-interface {p1}, Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;->onClickOutside()V

    goto :goto_ad

    .line 81
    :cond_a6
    iget-object p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->listener:Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;

    if-eqz p1, :cond_ad

    invoke-interface {p1}, Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;->onClickOutside()V

    :cond_ad
    :goto_ad
    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->x:F

    .line 85
    iput p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->y:F

    goto :goto_bf

    .line 52
    :cond_b3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->x:F

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->y:F

    :cond_bf
    :goto_bf
    return v6
.end method

.method public setOnClickOutsideListener(Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PartShadowContainer;->listener:Lcom/lxj/xpopup/interfaces/OnClickOutsideListener;

    return-void
.end method
