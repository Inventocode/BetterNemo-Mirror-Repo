.class public Lcom/codemao/nemo/view/CompatibleNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "CompatibleNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;
    }
.end annotation


# instance fields
.field private isKeyboardShow:Z

.field private scrollListener:Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->isKeyboardShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->isKeyboardShow:Z

    return-void
.end method


# virtual methods
.method public getScrollListener()Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->scrollListener:Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 50
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .registers 6

    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 56
    iget-object v0, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->scrollListener:Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;

    if-eqz v0, :cond_a

    .line 57
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;->onScrollChange(IIII)V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 42
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->isKeyboardShow:Z

    if-eqz v0, :cond_9

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->scrollListener:Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;

    invoke-interface {v0}, Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;->hideKeyboard()V

    .line 45
    :cond_9
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setKeyboardShow(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->isKeyboardShow:Z

    return-void
.end method

.method public setScrollListener(Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/view/CompatibleNestedScrollView;->scrollListener:Lcom/codemao/nemo/view/CompatibleNestedScrollView$ScrollListener;

    return-void
.end method
