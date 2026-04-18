.class public Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "AppBarLayoutOverScrollViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;
    }
.end annotation


# instance fields
.field private isMoving:Z

.field private listener:Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;

.field private mActivePointerId:I

.field private mLastMotionY:I

.field private mTouchSlop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mActivePointerId:I

    .line 23
    iput v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mTouchSlop:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->isMoving:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mActivePointerId:I

    .line 23
    iput p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mTouchSlop:I

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->isMoving:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 19
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/MotionEvent;)Z
    .registers 9

    .line 38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 41
    :cond_a
    iget v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mTouchSlop:I

    if-gez v0, :cond_1c

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mTouchSlop:I

    .line 45
    :cond_1c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_67

    const/4 v4, -0x1

    if-eq v0, v2, :cond_59

    if-eq v0, v1, :cond_2d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_59

    goto :goto_7f

    .line 60
    :cond_2d
    iget v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mActivePointerId:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v4, :cond_36

    return v3

    .line 65
    :cond_36
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 66
    iget v1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mLastMotionY:I

    sub-int/2addr v0, v1

    .line 67
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mTouchSlop:I

    if-le v1, v3, :cond_50

    .line 68
    iget-object v1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->listener:Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;

    if-eqz v1, :cond_50

    .line 69
    invoke-interface {v1, v0}, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;->onHeaderMoving(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->isMoving:Z

    .line 72
    :cond_50
    iget-boolean v0, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->isMoving:Z

    if-nez v0, :cond_7f

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 81
    :cond_59
    iput v4, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mActivePointerId:I

    .line 82
    iget-object p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->listener:Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;

    if-eqz p1, :cond_7f

    iget-boolean p2, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->isMoving:Z

    if-eqz p2, :cond_7f

    .line 83
    invoke-interface {p1}, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;->onHeaderReleased()V

    goto :goto_7f

    .line 47
    :cond_67
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 48
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 50
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 51
    iput v1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mLastMotionY:I

    .line 52
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->mActivePointerId:I

    :cond_7f
    :goto_7f
    return v2

    :cond_80
    return v3
.end method

.method public setListener(Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior;->listener:Lcom/codemao/nemo/view/behavior/AppBarLayoutOverScrollViewBehavior$HeaderScrollListener;

    return-void
.end method
