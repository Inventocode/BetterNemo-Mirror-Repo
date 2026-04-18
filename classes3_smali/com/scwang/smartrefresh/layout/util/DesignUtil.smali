.class public Lcom/scwang/smartrefresh/layout/util/DesignUtil;
.super Ljava/lang/Object;
.source "DesignUtil.java"


# direct methods
.method public static checkCoordinatorLayout(Landroid/view/View;Lcom/scwang/smartrefresh/layout/api/RefreshKernel;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    .registers 4

    .line 20
    :try_start_0
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_11

    .line 21
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setEnableNestedScroll(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 22
    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {p0, p2}, Lcom/scwang/smartrefresh/layout/util/DesignUtil;->wrapperCoordinatorLayout(Landroid/view/ViewGroup;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_11

    :catchall_11
    :cond_11
    return-void
.end method

.method private static wrapperCoordinatorLayout(Landroid/view/ViewGroup;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
    .registers 5

    .line 29
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1d

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 31
    instance-of v2, v1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_1a

    .line 32
    check-cast v1, Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v2, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;

    invoke-direct {v2, p1}, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;-><init>(Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1d
    return-void
.end method
