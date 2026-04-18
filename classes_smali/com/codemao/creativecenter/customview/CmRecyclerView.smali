.class public Lcom/codemao/creativecenter/customview/CmRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CmRecyclerView.java"


# instance fields
.field hasMove:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance p1, Lcom/codemao/creativecenter/customview/CmRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/customview/CmRecyclerView$1;-><init>(Lcom/codemao/creativecenter/customview/CmRecyclerView;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "CmRecyclerView"

    if-eqz v0, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    goto :goto_1d

    :cond_c
    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecyclerView;->hasMove:Z

    const-string v0, "dispatchTouchEvent: ACTION_MOVE"

    .line 62
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_15
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecyclerView;->hasMove:Z

    const-string v0, "dispatchTouchEvent: ACTION_DOWN"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :goto_1d
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_1c

    .line 75
    :cond_8
    iget-boolean v0, p0, Lcom/codemao/creativecenter/customview/CmRecyclerView;->hasMove:Z

    if-nez v0, :cond_15

    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    .line 77
    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->quite()V

    :cond_15
    const-string v0, "CmRecyclerView"

    const-string v1, "onTouchEvent: ACTION_UP"

    .line 79
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
