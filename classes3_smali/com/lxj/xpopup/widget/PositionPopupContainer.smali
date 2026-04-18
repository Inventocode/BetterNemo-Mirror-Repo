.class public Lcom/lxj/xpopup/widget/PositionPopupContainer;
.super Landroid/widget/FrameLayout;
.source "PositionPopupContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PositionPopupContainer"


# instance fields
.field canIntercept:Z

.field cb:Landroidx/customview/widget/ViewDragHelper$Callback;

.field public child:Landroid/view/View;

.field private dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field public dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

.field public dragRatio:F

.field public enableDrag:Z

.field private positionDragListener:Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;

.field touchSlop:I

.field private touchX:F

.field private touchY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/lxj/xpopup/widget/PositionPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcom/lxj/xpopup/widget/PositionPopupContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e4ccccd  # 0.2f

    .line 22
    iput p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragRatio:F

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    .line 25
    sget-object p2, Lcom/lxj/xpopup/enums/DragOrientation;->DragToUp:Lcom/lxj/xpopup/enums/DragOrientation;

    iput-object p2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragOrientation:Lcom/lxj/xpopup/enums/DragOrientation;

    .line 50
    iput-boolean p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->canIntercept:Z

    .line 93
    new-instance p1, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;

    invoke-direct {p1, p0}, Lcom/lxj/xpopup/widget/PositionPopupContainer$1;-><init>(Lcom/lxj/xpopup/widget/PositionPopupContainer;)V

    iput-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    .line 35
    invoke-direct {p0}, Lcom/lxj/xpopup/widget/PositionPopupContainer;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/lxj/xpopup/widget/PositionPopupContainer;)Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->positionDragListener:Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/lxj/xpopup/widget/PositionPopupContainer;)Landroidx/customview/widget/ViewDragHelper;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    return-object p0
.end method

.method private init()V
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->cb:Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {p0, v0}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchSlop:I

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 149
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 150
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 151
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_69

    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    if-nez v0, :cond_c

    goto :goto_69

    .line 55
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_58

    if-eq v0, v1, :cond_52

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_52

    goto :goto_64

    .line 61
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchX:F

    sub-float/2addr v0, v2

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchY:F

    sub-float/2addr v2, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    .line 63
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchSlop:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->canIntercept:Z

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchX:F

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchY:F

    goto :goto_64

    :cond_52
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchX:F

    .line 70
    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchY:F

    goto :goto_64

    .line 57
    :cond_58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchX:F

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->touchY:F
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_64} :catch_64

    .line 74
    :catch_64
    :goto_64
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 53
    :cond_69
    :goto_69
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 80
    :cond_9
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 81
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-boolean p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->canIntercept:Z

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->child:Landroid/view/View;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_12

    iget-boolean v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->enableDrag:Z

    if-nez v0, :cond_c

    goto :goto_12

    .line 88
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_11

    :catch_11
    return v1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return p1
.end method

.method public setOnPositionDragChangeListener(Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "positionDragListener"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/lxj/xpopup/widget/PositionPopupContainer;->positionDragListener:Lcom/lxj/xpopup/widget/PositionPopupContainer$OnPositionDragListener;

    return-void
.end method
