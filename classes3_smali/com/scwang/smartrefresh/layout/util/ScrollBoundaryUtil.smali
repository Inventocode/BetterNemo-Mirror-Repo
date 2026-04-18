.class public Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;
.super Ljava/lang/Object;
.source "ScrollBoundaryUtil.java"


# direct methods
.method public static canLoadMore(Landroid/view/View;Landroid/graphics/PointF;Z)Z
    .registers 11

    .line 58
    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollDown(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 62
    :cond_e
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5c

    if-eqz p1, :cond_5c

    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 63
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 65
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v2, :cond_5c

    .line 67
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 68
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v5, v6, v7, v3}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 69
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v1

    .line 72
    :cond_44
    iget p0, v3, Landroid/graphics/PointF;->x:F

    iget v0, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 73
    invoke-static {v5, p1, p2}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canLoadMore(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p0

    .line 74
    iget p2, v3, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    iget v0, v3, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->offset(FF)V

    return p0

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_5c
    if-nez p2, :cond_64

    .line 79
    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollUp(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_65

    :cond_64
    const/4 v1, 0x1

    :cond_65
    return v1
.end method

.method public static canRefresh(Landroid/view/View;Landroid/graphics/PointF;)Z
    .registers 8

    .line 26
    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canScrollUp(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 30
    :cond_e
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 33
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    :goto_1f
    if-lez v0, :cond_56

    add-int/lit8 v3, v0, -0x1

    .line 35
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 36
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v3, v4, v5, v2}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    return v1

    .line 40
    :cond_3e
    iget p0, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 41
    invoke-static {v3, p1}, Lcom/scwang/smartrefresh/layout/util/ScrollBoundaryUtil;->canRefresh(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    .line 42
    iget v0, v2, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    return p0

    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    :cond_56
    const/4 p0, 0x1

    return p0
.end method

.method public static canScrollDown(Landroid/view/View;)Z
    .registers 6

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_39

    .line 121
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 122
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 123
    move-object v3, p0

    check-cast v3, Landroid/widget/AbsListView;

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2e

    .line 125
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v4, v1

    if-lt v3, v4, :cond_2f

    .line 126
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    if-le v0, p0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :cond_2f
    :goto_2f
    return v1

    .line 128
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-gez p0, :cond_37

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    :goto_38
    return v1

    .line 131
    :cond_39
    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public static canScrollUp(Landroid/view/View;)Z
    .registers 6

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_38

    .line 105
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 106
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    move-object v3, p0

    check-cast v3, Landroid/widget/AbsListView;

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_2d

    .line 109
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_2e

    .line 110
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    if-ge v0, p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :cond_2e
    :goto_2e
    return v1

    .line 112
    :cond_2f
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_36

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    return v1

    :cond_38
    const/4 v0, -0x1

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public static isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z
    .registers 11

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    .line 147
    aget v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 148
    aget v3, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    add-float/2addr v3, p0

    aput v3, v0, v2

    .line 150
    aget p0, v0, v1

    const/4 v3, 0x0

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_53

    aget p0, v0, v2

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_53

    aget p0, v0, v1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float p0, p0, v3

    if-gez p0, :cond_53

    aget p0, v0, v2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_53

    const/4 p0, 0x1

    goto :goto_54

    :cond_53
    const/4 p0, 0x0

    :goto_54
    if-eqz p0, :cond_61

    if-eqz p4, :cond_61

    .line 154
    aget p1, v0, v1

    sub-float/2addr p1, p2

    aget p2, v0, v2

    sub-float/2addr p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_61
    return p0
.end method
