.class public Lcom/codemao/nemo/view/NestScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "NestScrollRecyclerView.java"


# instance fields
.field private lastX:F

.field private lastY:F

.field private oriention:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->oriention:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    const/4 p1, 0x1

    .line 18
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->oriention:I

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 47
    iget v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 49
    :cond_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getOriention()I
    .registers 2

    .line 33
    iget v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->oriention:I

    return v0
.end method

.method public getState()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 42
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 56
    iget v2, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->lastX:F

    sub-float/2addr v0, v2

    .line 57
    iget v2, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->lastY:F

    sub-float/2addr v1, v2

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1b

    goto :goto_45

    .line 67
    :cond_1b
    iget v2, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    if-nez v2, :cond_45

    .line 68
    iget v2, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->oriention:I

    const/high16 v4, 0x40400000  # 3.0f

    if-nez v2, :cond_30

    .line 69
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_45

    .line 70
    iput v3, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    goto :goto_45

    .line 73
    :cond_30
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_45

    .line 74
    iput v3, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    goto :goto_45

    :cond_3b
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    goto :goto_45

    .line 60
    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 81
    :cond_45
    :goto_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->lastX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->lastY:F

    .line 83
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOriention(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->oriention:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 91
    iput p1, p0, Lcom/codemao/nemo/view/NestScrollRecyclerView;->state:I

    return-void
.end method
