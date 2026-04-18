.class public Lcom/codemao/nemo/view/BannerLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "BannerLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;
    }
.end annotation


# instance fields
.field private centerScale:F

.field private currentFocusView:Landroid/view/View;

.field private itemSpace:I

.field protected mDecoratedMeasurement:I

.field protected mDecoratedMeasurementInOther:I

.field private mDistanceToBottom:I

.field private mEnableBringCenterToFront:Z

.field private mInfinite:Z

.field protected mInterval:F

.field private mLeftItems:I

.field private mMaxVisibleItemCount:I

.field protected mOffset:F

.field mOrientation:I

.field protected mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field private mRightItems:I

.field private mShouldReverseLayout:Z

.field private mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

.field private mSmoothScrollbarEnabled:Z

.field protected mSpaceInOther:I

.field protected mSpaceMain:I

.field private moveSpeed:F

.field private positionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private calculateScale(F)F
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 168
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    int-to-float v1, v0

    sub-float/2addr v1, p1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    int-to-float v1, v0

    sub-float v2, v1, p1

    .line 169
    :cond_1e
    iget p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->centerScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr p1, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    return p1
.end method

.method private computeScrollExtent()I
    .registers 2

    .line 567
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 571
    :cond_8
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    .line 575
    :cond_e
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    float-to-int v0, v0

    return v0
.end method

.method private computeScrollOffset()I
    .registers 4

    .line 553
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 557
    :cond_8
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_21

    .line 558
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_15

    .line 559
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPosition()I

    move-result v0

    goto :goto_20

    :cond_15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_20
    return v0

    .line 562
    :cond_21
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getOffsetOfRightAdapterPosition()F

    move-result v0

    .line 563
    iget-boolean v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_2b

    float-to-int v0, v0

    goto :goto_38

    :cond_2b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    :goto_38
    return v0
.end method

.method private computeScrollRange()I
    .registers 3

    .line 579
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 583
    :cond_8
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSmoothScrollbarEnabled:Z

    if-nez v0, :cond_11

    .line 584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    return v0

    .line 587
    :cond_11
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCurrentPositionOffset()I
    .registers 3

    .line 806
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getMovement(I)I
    .registers 5

    .line 479
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    const/16 v0, 0x21

    if-ne p1, v0, :cond_e

    .line 481
    iget-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr p1, v2

    return p1

    :cond_e
    const/16 v0, 0x82

    if-ne p1, v0, :cond_15

    .line 483
    iget-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    return p1

    :cond_15
    return v1

    :cond_16
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1e

    .line 489
    iget-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr p1, v2

    return p1

    :cond_1e
    const/16 v0, 0x42

    if-ne p1, v0, :cond_25

    .line 491
    iget-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    return p1

    :cond_25
    return v1
.end method

.method private getOffsetOfRightAdapterPosition()F
    .registers 5

    .line 814
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 815
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_30

    .line 816
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1a

    .line 817
    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_32

    .line 818
    :cond_1a
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    neg-float v2, v1

    mul-float v0, v0, v2

    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_32

    .line 819
    :cond_30
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    :goto_32
    return v0

    .line 821
    :cond_33
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_5d

    .line 822
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_48

    .line 823
    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    rem-float/2addr v0, v1

    goto :goto_5f

    .line 824
    :cond_48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v1, v3

    rem-float/2addr v2, v1

    add-float/2addr v0, v2

    goto :goto_5f

    .line 825
    :cond_5d
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    :goto_5f
    return v0
.end method

.method private getProperty(I)F
    .registers 3

    .line 512
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    :goto_b
    mul-float p1, p1, v0

    return p1
.end method

.method private layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 13

    .line 637
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 638
    iget-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 640
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 644
    :cond_f
    iget-boolean v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_19

    .line 645
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v1

    neg-int v1, v1

    goto :goto_1d

    :cond_19
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v1

    .line 646
    :goto_1d
    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mLeftItems:I

    sub-int v2, v1, v2

    .line 647
    iget v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mRightItems:I

    add-int/2addr v3, v1

    .line 650
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_47

    .line 651
    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mMaxVisibleItemCount:I

    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-nez v3, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    if-eqz v3, :cond_3d

    .line 653
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    add-int/2addr v3, v4

    goto :goto_42

    :cond_3d
    sub-int/2addr v2, v4

    .line 657
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    :goto_42
    add-int/2addr v2, v1

    add-int/2addr v2, v4

    move v10, v3

    move v3, v2

    move v2, v10

    .line 663
    :cond_47
    iget-boolean v4, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-nez v4, :cond_59

    if-gez v2, :cond_56

    .line 666
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v2

    if-eqz v2, :cond_55

    iget v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mMaxVisibleItemCount:I

    :cond_55
    const/4 v2, 0x0

    :cond_56
    if-le v3, v0, :cond_59

    move v3, v0

    :cond_59
    const/4 v4, 0x1

    :goto_5a
    if-ge v2, v3, :cond_b5

    .line 674
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->useMaxVisibleCount()Z

    move-result v6

    if-nez v6, :cond_6f

    invoke-direct {p0, v2}, Lcom/codemao/nemo/view/BannerLayoutManager;->getProperty(I)F

    move-result v6

    iget v7, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    sub-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/codemao/nemo/view/BannerLayoutManager;->removeCondition(F)Z

    move-result v6

    if-nez v6, :cond_b2

    :cond_6f
    if-lt v2, v0, :cond_74

    .line 679
    rem-int v6, v2, v0

    goto :goto_7f

    :cond_74
    if-gez v2, :cond_7e

    neg-int v6, v2

    .line 681
    rem-int/2addr v6, v0

    if-nez v6, :cond_7b

    move v6, v0

    :cond_7b
    sub-int v6, v0, v6

    goto :goto_7f

    :cond_7e
    move v6, v2

    .line 685
    :goto_7f
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v7

    .line 686
    invoke-virtual {p0, v7, v5, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 687
    invoke-direct {p0, v7}, Lcom/codemao/nemo/view/BannerLayoutManager;->resetViewProperty(Landroid/view/View;)V

    .line 689
    invoke-direct {p0, v2}, Lcom/codemao/nemo/view/BannerLayoutManager;->getProperty(I)F

    move-result v8

    iget v9, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    sub-float/2addr v8, v9

    .line 690
    invoke-direct {p0, v7, v8}, Lcom/codemao/nemo/view/BannerLayoutManager;->layoutScrap(Landroid/view/View;F)V

    .line 691
    iget-boolean v9, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mEnableBringCenterToFront:Z

    if-eqz v9, :cond_9c

    .line 692
    invoke-virtual {p0, v7, v8}, Lcom/codemao/nemo/view/BannerLayoutManager;->setViewElevation(Landroid/view/View;F)F

    move-result v6

    goto :goto_9d

    :cond_9c
    int-to-float v6, v6

    :goto_9d
    cmpl-float v4, v6, v4

    if-lez v4, :cond_a5

    .line 694
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_a8

    .line 696
    :cond_a5
    invoke-virtual {p0, v7, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :goto_a8
    if-ne v2, v1, :cond_ac

    .line 698
    iput-object v7, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->currentFocusView:Landroid/view/View;

    .line 700
    :cond_ac
    iget-object v4, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v4, v6

    :cond_b2
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 704
    :cond_b5
    iget-object p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->currentFocusView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private layoutScrap(Landroid/view/View;F)V
    .registers 12

    .line 734
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/BannerLayoutManager;->calItemLeft(Landroid/view/View;F)I

    move-result v0

    .line 735
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/BannerLayoutManager;->calItemTop(Landroid/view/View;F)I

    move-result v1

    .line 736
    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 737
    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceInOther:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    goto :goto_3c

    .line 740
    :cond_25
    iget v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    add-int v5, v2, v0

    iget v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceInOther:I

    add-int v6, v3, v1

    add-int/2addr v2, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    add-int v7, v2, v0

    add-int/2addr v3, v1

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    add-int v8, v3, v0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 743
    :goto_3c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/view/BannerLayoutManager;->setItemViewProperty(Landroid/view/View;F)V

    return-void
.end method

.method private removeCondition(F)Z
    .registers 3

    .line 712
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->maxRemoveOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_13

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->minRemoveOffset()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private resetViewProperty(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 716
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 717
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 718
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 719
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 720
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 721
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .line 342
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 343
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mReverseLayout:Z

    :cond_10
    return-void
.end method

.method private scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 8

    .line 607
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_66

    if-nez p1, :cond_a

    goto :goto_66

    .line 610
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->ensureLayoutState()V

    int-to-float p3, p1

    .line 613
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result v1

    div-float v1, p3, v1

    .line 614
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x322bcc77  # 1.0E-8f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    return v0

    .line 617
    :cond_20
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    add-float/2addr v0, v1

    .line 620
    iget-boolean v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-nez v1, :cond_3d

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getMinOffset()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3d

    .line 621
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getMinOffset()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result p1

    mul-float v0, v0, p1

    sub-float/2addr p3, v0

    float-to-int p1, p3

    goto :goto_57

    .line 622
    :cond_3d
    iget-boolean p3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-nez p3, :cond_57

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getMaxOffset()F

    move-result p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_57

    .line 623
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getMaxOffset()F

    move-result p1

    iget p3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, p3

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    :cond_57
    :goto_57
    int-to-float p3, p1

    .line 626
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    div-float/2addr p3, v0

    .line 628
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    .line 631
    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/BannerLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return p1

    :cond_66
    :goto_66
    return v0
.end method

.method private useMaxVisibleCount()Z
    .registers 3

    .line 708
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mMaxVisibleItemCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method protected calItemLeft(Landroid/view/View;F)I
    .registers 4

    .line 747
    iget p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    float-to-int p1, p2

    :goto_8
    return p1
.end method

.method protected calItemTop(Landroid/view/View;F)I
    .registers 4

    .line 751
    iget p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    float-to-int p1, p2

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public canScrollHorizontally()Z
    .registers 2

    .line 272
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public canScrollVertically()Z
    .registers 3

    .line 280
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public computeHorizontalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 534
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 524
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 544
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 539
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollExtent()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 529
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollOffset()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 2

    .line 549
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->computeScrollRange()I

    move-result p1

    return p1
.end method

.method ensureLayoutState()V
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-nez v0, :cond_c

    .line 500
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    :cond_c
    return-void
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 6

    .line 790
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/4 v2, 0x0

    .line 792
    :goto_9
    iget-object v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_38

    .line 793
    iget-object v3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-ltz v3, :cond_25

    .line 795
    rem-int/2addr v3, v0

    if-ne p1, v3, :cond_35

    iget-object p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 797
    :cond_25
    rem-int/2addr v3, v0

    if-nez v3, :cond_29

    neg-int v3, v0

    :cond_29
    add-int/2addr v3, v0

    if-ne v3, p1, :cond_35

    .line 799
    iget-object p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->positionCache:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_38
    return-object v1
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 206
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getCurrentPosition()I
    .registers 5

    .line 772
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 774
    :cond_8
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 775
    iget-boolean v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-nez v2, :cond_15

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0

    .line 777
    :cond_15
    iget-boolean v2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v2, :cond_2c

    if-ltz v0, :cond_21

    .line 780
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    goto :goto_40

    .line 781
    :cond_21
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    add-int/2addr v0, v2

    goto :goto_40

    :cond_2c
    if-lez v0, :cond_3a

    .line 783
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v3

    rem-int/2addr v0, v3

    sub-int v0, v2, v0

    goto :goto_40

    :cond_3a
    neg-int v0, v0

    .line 784
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    rem-int/2addr v0, v2

    .line 785
    :goto_40
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_47

    goto :goto_48

    :cond_47
    move v1, v0

    :goto_48
    return v1
.end method

.method protected getDistanceRatio()F
    .registers 3

    .line 135
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->moveSpeed:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    return v0

    :cond_b
    const/high16 v1, 0x3f800000  # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method getMaxOffset()F
    .registers 3

    .line 725
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method getMinOffset()F
    .registers 3

    .line 729
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float v0, v0, v1

    :goto_12
    return v0
.end method

.method public getOffsetToPosition(I)I
    .registers 4

    .line 840
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-eqz v0, :cond_29

    .line 841
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPositionOffset()I

    move-result v0

    .line 842
    iget-boolean v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int/2addr p1, v1

    goto :goto_18

    :cond_12
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPosition()I

    move-result v1

    sub-int p1, v1, p1

    :goto_18
    add-int/2addr v0, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    mul-float p1, p1, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, v0

    .line 843
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    :goto_25
    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1

    :cond_29
    int-to-float p1, p1

    .line 845
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-nez v0, :cond_31

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    goto :goto_34

    :cond_31
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    :goto_34
    mul-float p1, p1, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getDistanceRatio()F

    move-result v0

    goto :goto_25
.end method

.method public getTotalSpaceInOther()I
    .registers 3

    .line 440
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_13

    .line 441
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 442
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    :goto_11
    sub-int/2addr v0, v1

    return v0

    .line 444
    :cond_13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 445
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    goto :goto_11
.end method

.method protected maxRemoveOffset()F
    .registers 3

    .line 759
    iget-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method protected minRemoveOffset()F
    .registers 3

    .line 767
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 517
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    const/4 p1, 0x0

    .line 518
    iput p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    .line 457
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getCurrentPosition()I

    move-result v0

    .line 458
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/BannerLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_c

    return v2

    .line 460
    :cond_c
    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 461
    invoke-direct {p0, p3}, Lcom/codemao/nemo/view/BannerLayoutManager;->getMovement(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_25

    if-ne p2, v2, :cond_1d

    sub-int/2addr v0, v2

    goto :goto_1e

    :cond_1d
    add-int/2addr v0, v2

    .line 465
    :goto_1e
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_25

    .line 468
    :cond_22
    invoke-virtual {v1, p2, p3, p4}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_25
    :goto_25
    return v2
.end method

.method public onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 3

    .line 240
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 241
    iget-boolean p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_d

    .line 242
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 243
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 399
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    if-nez p2, :cond_d

    .line 400
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    const/4 p1, 0x0

    .line 401
    iput p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    return-void

    .line 405
    :cond_d
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->ensureLayoutState()V

    .line 406
    invoke-direct {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->resolveShouldLayoutReverse()V

    const/4 p2, 0x0

    .line 409
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 410
    invoke-virtual {p0, v0, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 411
    iget-object p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    .line 412
    iget-object p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    .line 413
    iget-object p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    .line 414
    iget p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDistanceToBottom:I

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_4b

    .line 415
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getTotalSpaceInOther()I

    move-result p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceInOther:I

    goto :goto_57

    .line 417
    :cond_4b
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->getTotalSpaceInOther()I

    move-result p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurementInOther:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDistanceToBottom:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceInOther:I

    .line 420
    :goto_57
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->setInterval()F

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    .line 421
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->setUp()V

    .line 422
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->minRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mLeftItems:I

    .line 423
    invoke-virtual {p0}, Lcom/codemao/nemo/view/BannerLayoutManager;->maxRemoveOffset()F

    move-result p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-int p2, p2

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mRightItems:I

    .line 425
    iget-object p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    if-eqz p2, :cond_90

    .line 426
    iget-boolean v0, p2, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    iput-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    .line 427
    iget v0, p2, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    iput v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingScrollPosition:I

    .line 428
    iget p2, p2, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    .line 431
    :cond_90
    iget p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingScrollPosition:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_a5

    .line 432
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9e

    int-to-float p2, p2

    .line 433
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_a1

    :cond_9e
    int-to-float p2, p2

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    :goto_a1
    mul-float p2, p2, v0

    iput p2, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    .line 436
    :cond_a5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 437
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/BannerLayoutManager;->layoutItems(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 2

    .line 450
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 451
    iput-object p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 452
    iput p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingScrollPosition:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 261
    instance-of v0, p1, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    if-eqz v0, :cond_10

    .line 262
    new-instance v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    check-cast p1, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    invoke-direct {v0, p1}, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;-><init>(Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;)V

    iput-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    .line 263
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_10
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    if-eqz v0, :cond_c

    .line 250
    new-instance v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    iget-object v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingSavedState:Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;-><init>(Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;)V

    return-object v0

    .line 252
    :cond_c
    new-instance v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;-><init>()V

    .line 253
    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingScrollPosition:I

    iput v1, v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->position:I

    .line 254
    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    iput v1, v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->offset:F

    .line 255
    iget-boolean v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v1, v0, Lcom/codemao/nemo/view/BannerLayoutManager$SavedState;->isReverseLayout:Z

    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    .line 592
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    return p1

    .line 595
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/view/BannerLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .registers 3

    .line 391
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInfinite:Z

    if-nez v0, :cond_d

    if-ltz p1, :cond_c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_d

    :cond_c
    return-void

    .line 392
    :cond_d
    iput p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mPendingScrollPosition:I

    .line 393
    iget-boolean v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mShouldReverseLayout:Z

    int-to-float p1, p1

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    neg-float v0, v0

    goto :goto_1a

    :cond_18
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mInterval:F

    :goto_1a
    mul-float p1, p1, v0

    iput p1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOffset:F

    .line 394
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    .line 600
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 603
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/view/BannerLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method protected setInterval()F
    .registers 5

    .line 141
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mDecoratedMeasurement:I

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->centerScale:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    iget v1, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->itemSpace:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected setItemViewProperty(Landroid/view/View;F)V
    .registers 4

    .line 157
    iget v0, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSpaceMain:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/codemao/nemo/view/BannerLayoutManager;->calculateScale(F)F

    move-result p2

    .line 158
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected setUp()V
    .registers 1

    return-void
.end method

.method protected setViewElevation(Landroid/view/View;F)F
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 6

    .line 382
    invoke-virtual {p0, p3}, Lcom/codemao/nemo/view/BannerLayoutManager;->getOffsetToPosition(I)I

    move-result p2

    .line 383
    iget p3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mOrientation:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_10

    .line 384
    iget-object p3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_15

    .line 386
    :cond_10
    iget-object p3, p0, Lcom/codemao/nemo/view/BannerLayoutManager;->mSmoothScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2, v0, p3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_15
    return-void
.end method
