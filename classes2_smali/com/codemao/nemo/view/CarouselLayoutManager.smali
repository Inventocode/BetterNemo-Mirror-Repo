.class public Lcom/codemao/nemo/view/CarouselLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;,
        Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;,
        Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;,
        Lcom/codemao/nemo/view/CarouselLayoutManager$OnCenterItemSelectionListener;,
        Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;
    }
.end annotation


# instance fields
.field private canScrollHor:Z

.field private expandItemPositon:I

.field private isAnimating:Z

.field private isExpanding:Z

.field private isShrink:Z

.field private leftWitdh:I

.field private mCenterItemPosition:I

.field private final mCircleLayout:Z

.field private mDecoratedChildHeight:Ljava/lang/Integer;

.field private mDecoratedChildSizeInvalid:Z

.field private mDecoratedChildWidth:Ljava/lang/Integer;

.field private mItemsCount:I

.field private final mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

.field private final mOnCenterItemSelectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/view/CarouselLayoutManager$OnCenterItemSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientation:I

.field private mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

.field private mPendingScrollPosition:I

.field private mViewPostLayout:Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;

.field private needExpand:Z

.field private needShrink:Z

.field private padding:I

.field private rightWitdh:I

.field private final valueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 8

    .line 186
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    .line 66
    new-instance v2, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;-><init>(I)V

    iput-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    const/4 v2, -0x1

    .line 71
    iput v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    .line 75
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    .line 76
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->needShrink:Z

    .line 77
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->needExpand:Z

    .line 78
    iput-boolean v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->canScrollHor:Z

    const/16 v0, -0x3e7

    .line 79
    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    const/16 v0, 0x2b

    .line 82
    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->padding:I

    new-array v0, v3, [F

    .line 187
    fill-array-data v0, :array_50

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    .line 188
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_48

    if-ne v1, p1, :cond_40

    goto :goto_48

    .line 190
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "orientation should be HORIZONTAL or VERTICAL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 192
    :cond_48
    :goto_48
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    .line 193
    iput-boolean p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCircleLayout:Z

    .line 194
    iput v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    return-void

    nop

    :array_50
    .array-data 4
        0x0
        0x40a00000  # 5.0f
    .end array-data
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    return p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/CarouselLayoutManager;I)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I
    .registers 1

    .line 46
    iget p0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    return p0
.end method

.method static synthetic access$802(Lcom/codemao/nemo/view/CarouselLayoutManager;I)I
    .registers 2

    .line 46
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    return p1
.end method

.method static synthetic access$902(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z
    .registers 2

    .line 46
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    return p1
.end method

.method private bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .registers 3

    .line 875
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 877
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 878
    invoke-virtual {p0, p1, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    return-object p1
.end method

.method private calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    .line 495
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_8

    goto :goto_d

    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    .line 496
    :goto_d
    iget p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    if-ne v1, p2, :cond_14

    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    goto :goto_16

    :cond_14
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    :goto_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int p1, p1, p2

    return p1
.end method

.method private detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 528
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 529
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 531
    iget p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq p2, p1, :cond_23

    .line 532
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    .line 533
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$2;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_23
    return-void
.end method

.method private fillChildItem(IIIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
    .registers 28

    move-object/from16 v9, p0

    move/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 607
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    move-object/from16 v1, p6

    invoke-direct {v9, v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->bindChild(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v10

    const v0, 0x7f0a033d

    .line 608
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/codemao/nemo/view/MyExpandCardView;

    move/from16 v0, p7

    int-to-float v0, v0

    .line 610
    invoke-static {v10, v0}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 612
    iget-object v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->mViewPostLayout:Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;

    if-eqz v0, :cond_33

    .line 613
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v1

    iget v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    invoke-interface {v0, v10, v1, v2}, Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;->transformChild(Landroid/view/View;FI)Lcom/codemao/nemo/view/ItemTransformation;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    move-object v12, v0

    if-nez v12, :cond_3c

    .line 616
    invoke-virtual {v10, v3, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_3a2

    :cond_3c
    const/4 v15, 0x0

    const/high16 v16, 0x3f000000  # 0.5f

    const/high16 v17, 0x40000000  # 2.0f

    const/4 v4, 0x0

    if-eqz v11, :cond_2fc

    .line 620
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    const/16 v1, -0x3e7

    const/4 v2, 0x1

    const v8, 0x7f0a0508

    cmpl-float v0, v0, v15

    if-eqz v0, :cond_150

    .line 621
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    iget v13, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    if-eq v0, v13, :cond_80

    int-to-float v0, v3

    .line 622
    iget v1, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v5

    iget v2, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v6

    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    .line 623
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v7

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 622
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_7d
    const/4 v15, 0x0

    goto/16 :goto_25f

    .line 625
    :cond_80
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v14, v0

    const-wide/high16 v18, 0x3fe0000000000000L  # 0.5

    cmpl-double v0, v14, v18

    if-lez v0, :cond_cb

    .line 626
    iput v1, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    .line 627
    iput-boolean v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    .line 628
    iput-boolean v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    int-to-float v0, v3

    .line 629
    iget v1, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v5

    iget v2, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v6

    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    .line 630
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v7

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 629
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 631
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 632
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 633
    invoke-virtual {v11}, Lcom/codemao/nemo/view/MyExpandCardView;->resetBitmap()V

    goto :goto_7d

    .line 635
    :cond_cb
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    iget v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->leftWitdh:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v0, v0, v1

    div-float v0, v0, v17

    float-to-int v0, v0

    const v1, 0x7f0a061a

    .line 636
    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    int-to-float v1, v3

    .line 637
    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v1, v3

    iget v3, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v3, v5

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v5, v6

    iget v6, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v5, v6

    iget v6, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 638
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v0, v7

    iget v6, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 637
    invoke-virtual {v10, v1, v3, v5, v0}, Landroid/view/View;->layout(IIII)V

    .line 640
    iget v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v3, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/view/View;->layout(IIII)V

    .line 641
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 642
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v2, v2, v17

    mul-float v2, v2, v0

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_7d

    .line 647
    :cond_150
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    iget v14, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    if-eq v0, v14, :cond_15e

    .line 648
    iput v1, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->expandItemPositon:I

    .line 649
    iput-boolean v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    .line 650
    iput-boolean v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    .line 652
    :cond_15e
    iget-boolean v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->needShrink:Z

    if-eqz v0, :cond_18c

    .line 653
    iput-boolean v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    .line 654
    iput-boolean v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    .line 655
    iput-boolean v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    .line 656
    iput-boolean v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->needShrink:Z

    .line 658
    iget-object v8, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v14, Lcom/codemao/nemo/view/CarouselLayoutManager$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, p1

    const/4 v15, 0x0

    move-object v4, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/codemao/nemo/view/CarouselLayoutManager$3;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/view/View;ILcom/codemao/nemo/view/ItemTransformation;III)V

    invoke-virtual {v8, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 678
    iget-object v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 679
    invoke-virtual {v11}, Lcom/codemao/nemo/view/MyExpandCardView;->shrinkItem()V

    goto/16 :goto_25f

    :cond_18c
    const/4 v15, 0x0

    .line 680
    iget-boolean v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->needExpand:Z

    if-eqz v0, :cond_1bd

    .line 681
    iput-boolean v15, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->needExpand:Z

    .line 682
    iput-boolean v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    .line 683
    iput-boolean v15, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    .line 684
    iput-boolean v15, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    .line 687
    iget-object v14, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v8, Lcom/codemao/nemo/view/CarouselLayoutManager$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, p1

    move-object v4, v12

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object v13, v8

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/codemao/nemo/view/CarouselLayoutManager$4;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/view/View;ILcom/codemao/nemo/view/ItemTransformation;IIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)V

    invoke-virtual {v14, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 705
    iget-object v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 706
    invoke-virtual {v11}, Lcom/codemao/nemo/view/MyExpandCardView;->expandItem()V

    goto/16 :goto_25f

    .line 708
    :cond_1bd
    iget-boolean v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    if-eqz v0, :cond_1c3

    goto/16 :goto_25f

    .line 710
    :cond_1c3
    iget-boolean v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    if-eqz v0, :cond_229

    const v0, 0x7f0a061a

    .line 711
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v3

    .line 712
    iget v2, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v0, v2

    iget v2, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, v5

    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v6

    iget v4, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v3, v4

    iget v4, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 713
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v7

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v4, v5

    .line 714
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 712
    invoke-virtual {v10, v0, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 715
    iget v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    neg-int v0, v0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v1, v0, v15, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 716
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 717
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_25f

    .line 718
    :cond_229
    iget-boolean v0, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    if-eqz v0, :cond_25f

    int-to-float v0, v3

    .line 719
    iget v1, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v5

    iget v2, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v2, v6

    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    .line 720
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v3, v7

    iget v4, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v4

    .line 721
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 719
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 722
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 723
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 728
    :cond_25f
    :goto_25f
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f0a0487

    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_286

    .line 729
    invoke-virtual {v10, v2}, Landroid/view/View;->setAlpha(F)V

    .line 730
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f0a061a

    .line 731
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_381

    .line 732
    :cond_286
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v17

    if-gtz v0, :cond_2b8

    .line 733
    invoke-virtual {v10, v2}, Landroid/view/View;->setAlpha(F)V

    .line 734
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v17, v17, v0

    mul-float v17, v17, v16

    add-float v0, v17, v16

    .line 735
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f0a061a

    .line 736
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_381

    .line 737
    :cond_2b8
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x40400000  # 3.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2ea

    .line 738
    invoke-virtual {v10, v2}, Landroid/view/View;->setAlpha(F)V

    .line 739
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v14, v3, v0

    mul-float v14, v14, v16

    .line 740
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f0a061a

    .line 741
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_381

    :cond_2ea
    const v0, 0x7f0a061a

    const/16 v1, 0x8

    .line 744
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 745
    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_381

    :cond_2fc
    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v15, 0x0

    .line 748
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    iget v1, v9, Lcom/codemao/nemo/view/CarouselLayoutManager;->padding:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    mul-float v0, v0, v17

    float-to-int v0, v0

    int-to-float v1, v3

    .line 749
    iget v3, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v3, v5

    iget v4, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v6

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v0

    .line 750
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v4, v7

    iget v5, v12, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 749
    invoke-virtual {v10, v1, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    .line 751
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_341

    .line 752
    invoke-virtual {v10, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_381

    .line 753
    :cond_341
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v17

    if-gtz v0, :cond_35f

    .line 754
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v17, v17, v0

    mul-float v17, v17, v16

    add-float v0, v17, v16

    .line 755
    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_381

    .line 756
    :cond_35f
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_37d

    .line 757
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v14, v1, v0

    mul-float v14, v14, v16

    .line 758
    invoke-virtual {v10, v14}, Landroid/view/View;->setAlpha(F)V

    goto :goto_381

    :cond_37d
    const/4 v0, 0x0

    .line 760
    invoke-virtual {v10, v0}, Landroid/view/View;->setAlpha(F)V

    .line 764
    :goto_381
    iget v0, v12, Lcom/codemao/nemo/view/ItemTransformation;->mScaleX:F

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleX(F)V

    .line 765
    iget v0, v12, Lcom/codemao/nemo/view/ItemTransformation;->mScaleY:F

    invoke-virtual {v10, v0}, Landroid/view/View;->setScaleY(F)V

    .line 766
    invoke-static/range {p5 .. p5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40400000  # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_39f

    const/16 v0, 0x8

    .line 767
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3a2

    .line 769
    :cond_39f
    invoke-virtual {v10, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_3a2
    return-void
.end method

.method private fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 500
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    .line 502
    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    .line 503
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 504
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->recyclerOldViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 506
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v1

    .line 507
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    .line 508
    iget v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_1e

    .line 509
    invoke-direct {p0, p1, v1, v2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    goto :goto_21

    .line 511
    :cond_1e
    invoke-direct {p0, p1, v1, v2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V

    .line 514
    :goto_21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 516
    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method private fillDataHorizontal(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 15

    .line 580
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    .line 581
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, p3, v0

    .line 582
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p2, v0

    div-int/lit8 v9, v0, 0x2

    .line 583
    div-int/lit8 p2, p2, 0x2

    .line 585
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object p2

    array-length p2, p2

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_26
    if-ge v10, p2, :cond_9c

    .line 586
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v10

    .line 590
    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_55

    int-to-float v0, v9

    .line 592
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v2

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 593
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8e

    :cond_55
    const/high16 v0, 0x3f000000  # 0.5f

    .line 595
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float/2addr v0, v1

    mul-float v2, v2, v0

    float-to-int v0, v2

    int-to-float v1, v9

    .line 596
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    int-to-float v0, v0

    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float v0, v0, v2

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 597
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_8e
    add-int/2addr v1, v0

    move v3, v1

    move v1, v0

    move-object v0, p0

    move v2, p3

    move v4, v8

    move-object v6, p1

    move v7, v10

    .line 599
    invoke-direct/range {v0 .. v7}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillChildItem(IIIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    :cond_9c
    return-void
.end method

.method private fillDataVertical(Landroidx/recyclerview/widget/RecyclerView$Recycler;II)V
    .registers 15

    .line 549
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    .line 550
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, p2, v0

    .line 552
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    .line 553
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    array-length v9, v0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_23
    if-ge v10, v9, :cond_4a

    .line 554
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object v0

    aget-object v5, v0, v10

    .line 555
    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$100(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCardOffsetByPositionDiff(F)I

    move-result v0

    add-int v2, p3, v0

    .line 557
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v4, v2, v0

    move-object v0, p0

    move v1, p2

    move v3, v8

    move-object v6, p1

    move v7, v10

    .line 558
    invoke-direct/range {v0 .. v7}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillChildItem(IIIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_23

    :cond_4a
    return-void
.end method

.method private generateLayoutOrder(FLandroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14

    .line 825
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    iput p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    .line 826
    invoke-static {p1, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result p1

    .line 827
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 829
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCircleLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_75

    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    if-ge v1, v0, :cond_75

    .line 830
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    iget v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 832
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v2, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    .line 834
    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    :goto_2f
    if-gt v3, v2, :cond_4c

    int-to-float v4, v3

    sub-float v5, p1, v4

    .line 837
    iget v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v5, v6

    .line 838
    iget-object v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    sub-int v7, v2, v3

    int-to-float v8, p2

    sub-float/2addr v8, p1

    sub-float/2addr v8, v4

    invoke-virtual {v6, v7, v5, v8}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_4c
    add-int/lit8 v3, v0, -0x1

    move v4, v3

    :goto_4f
    add-int/lit8 v5, v2, 0x1

    if-lt v4, v5, :cond_6d

    int-to-float v5, v4

    sub-float v6, p1, v5

    int-to-float v7, v0

    add-float/2addr v6, v7

    .line 842
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v8, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    rem-int/2addr v6, v8

    .line 843
    iget-object v8, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v9, v4, -0x1

    int-to-float v10, p2

    sub-float/2addr v10, p1

    add-float/2addr v10, v7

    sub-float/2addr v10, v5

    invoke-virtual {v8, v9, v6, v10}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4f

    .line 845
    :cond_6d
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    int-to-float v1, p2

    sub-float/2addr v1, p1

    invoke-virtual {v0, v3, p2, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_c4

    .line 848
    :cond_75
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    sub-int v0, p2, v0

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 849
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    add-int/2addr v2, p2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, v2, v0

    add-int/2addr v3, v1

    .line 852
    iget-object v4, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-virtual {v4, v3}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->initLayoutOrder(I)V

    move v4, v0

    :goto_9b
    if-gt v4, v2, :cond_c4

    if-ne v4, p2, :cond_a9

    .line 856
    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    add-int/lit8 v6, v3, -0x1

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_c1

    :cond_a9
    if-ge v4, p2, :cond_b5

    .line 858
    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    sub-int v6, v4, v0

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    goto :goto_c1

    .line 860
    :cond_b5
    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    sub-int v6, v4, p2

    sub-int v6, v3, v6

    sub-int/2addr v6, v1

    int-to-float v7, v4

    sub-float/2addr v7, p1

    invoke-virtual {v5, v6, v4, v7}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->setLayoutOrder(IIF)V

    :goto_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    :cond_c4
    :goto_c4
    return-void
.end method

.method private getCurrentScrollPosition()F
    .registers 3

    .line 799
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    const/high16 v0, 0x3f800000  # 1.0f

    .line 803
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method private getMaxScrollOffset()I
    .registers 3

    .line 810
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    add-int/lit8 v1, v1, -0x1

    mul-int v0, v0, v1

    return v0
.end method

.method private getScrollDirection(I)F
    .registers 5

    .line 345
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->makeScrollPositionInRange0ToCount(FI)F

    move-result v0

    .line 347
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v1, :cond_2b

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 349
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 350
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2a

    .line 351
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    mul-float v0, v0, p1

    :cond_2a
    return v0

    :cond_2b
    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private static makeScrollPositionInRange0ToCount(FI)F
    .registers 3

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_8

    int-to-float v0, p1

    add-float/2addr p0, v0

    goto :goto_0

    .line 1016
    :cond_8
    :goto_8
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-lt v0, p1, :cond_11

    int-to-float v0, p1

    sub-float/2addr p0, v0

    goto :goto_8

    :cond_11
    return p0
.end method

.method private recyclerOldViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .registers 10

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 885
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 887
    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v3}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$000(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)[Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_26
    if-ge v6, v4, :cond_35

    aget-object v7, v3, v6

    .line 888
    invoke-static {v7}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I

    move-result v7

    if-ne v7, v2, :cond_32

    const/4 v5, 0x1

    goto :goto_35

    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :cond_35
    :goto_35
    if-nez v5, :cond_d

    .line 894
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_d

    :cond_3d
    return-void
.end method

.method private selectItemCenterPosition(I)V
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOnCenterItemSelectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/CarouselLayoutManager$OnCenterItemSelectionListener;

    .line 544
    invoke-interface {v1, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$OnCenterItemSelectionListener;->onCenterItemChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->canScrollHor:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public canScrollVertically()Z
    .registers 3

    .line 257
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 330
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 333
    :cond_8
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 335
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    .line 337
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 338
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 340
    :cond_1e
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method protected convertItemPositionDiffToSmoothPositionDiff(F)D
    .registers 8

    .line 940
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, p1

    .line 943
    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v2}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    div-float/2addr v3, v2

    float-to-double v2, v3

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2d

    .line 945
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$200(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fe5555560000000L  # 0.6666666865348816

    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    return-wide v0

    :cond_2d
    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 949
    invoke-static {v0, v1, v2, v3}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 238
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getCardOffsetByPositionDiff(F)I
    .registers 6

    .line 914
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->convertItemPositionDiffToSmoothPositionDiff(F)D

    move-result-wide v0

    .line 917
    iget v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_17

    .line 918
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getHeightNoPadding()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    goto :goto_24

    .line 920
    :cond_17
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getWidthNoPadding()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 923
    :goto_24
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float v2, v2

    mul-float p1, p1, v2

    float-to-double v2, p1

    mul-double v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public getCenterItemPosition()I
    .registers 2

    .line 264
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    return v0
.end method

.method public getHeightNoPadding()I
    .registers 3

    .line 871
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getOffsetCenterView()I
    .registers 3

    .line 989
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCurrentScrollPosition()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v1

    mul-int v0, v0, v1

    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getOffsetForCurrentView(Landroid/view/View;)I
    .registers 3

    .line 993
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 994
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollDirection(I)F

    move-result p1

    .line 996
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getOrientation()I
    .registers 2

    .line 247
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    return v0
.end method

.method protected getScrollItemSize()I
    .registers 3

    .line 957
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_c

    .line 958
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 960
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWidthNoPadding()I
    .registers 3

    .line 867
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isExpanding()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isExpanding:Z

    return v0
.end method

.method public isShrink()Z
    .registers 2

    .line 787
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    return v0
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 438
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 440
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAllViews()V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 447
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isAnimating:Z

    if-eqz v0, :cond_5

    return-void

    .line 450
    :cond_5
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_13

    .line 451
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 452
    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->selectItemCenterPosition(I)V

    return-void

    .line 456
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    if-eqz v0, :cond_5d

    .line 457
    :cond_1c
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 458
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 459
    invoke-virtual {p0, v0, v2, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 461
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v3

    .line 462
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v4

    .line 463
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 465
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_43

    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_4f

    .line 466
    :cond_43
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v0, :cond_4f

    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    if-nez v0, :cond_4f

    .line 467
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 471
    :cond_4f
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    .line 472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    .line 473
    iput-boolean v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    .line 476
    :cond_5d
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v0, :cond_77

    .line 477
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_69

    const/4 v0, -0x1

    goto :goto_75

    :cond_69
    add-int/lit8 v0, v0, -0x1

    .line 478
    iget v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_75
    iput v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 480
    :cond_77
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    const/4 v2, 0x0

    if-eq v1, v0, :cond_8a

    .line 481
    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$302(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 482
    iput v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 483
    iput-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    goto :goto_b1

    .line 484
    :cond_8a
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_9e

    .line 485
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->access$400(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$302(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 486
    iput-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    goto :goto_b1

    .line 487
    :cond_9e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    if-eq v1, v0, :cond_b1

    .line 488
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-direct {p0, v0, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->calculateScrollForSelectingPosition(ILandroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$302(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 491
    :cond_b1
    :goto_b1
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .registers 6

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildSizeInvalid:Z

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 976
    instance-of v0, p1, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_10

    .line 977
    check-cast p1, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    .line 979
    invoke-static {p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->access$1200(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_13

    .line 981
    :cond_10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_13
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 966
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    if-eqz v0, :cond_c

    .line 967
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingCarouselSavedState:Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;)V

    return-object v0

    .line 969
    :cond_c
    new-instance v0, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 970
    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCenterItemPosition:I

    invoke-static {v0, v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;->access$402(Lcom/codemao/nemo/view/CarouselLayoutManager$CarouselSavedState;I)I

    return-object v0
.end method

.method protected scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildWidth:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mDecoratedChildHeight:Ljava/lang/Integer;

    if-nez v0, :cond_b

    goto/16 :goto_78

    .line 392
    :cond_b
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_78

    if-nez p1, :cond_14

    goto :goto_78

    .line 396
    :cond_14
    iget-boolean v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mCircleLayout:Z

    if-eqz v0, :cond_47

    .line 399
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$312(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 401
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    iget v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mItemsCount:I

    mul-int v0, v0, v1

    .line 402
    :goto_25
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    if-gez v1, :cond_33

    .line 403
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$312(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_25

    .line 405
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    if-le v1, v0, :cond_41

    .line 406
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$320(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_33

    .line 409
    :cond_41
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$320(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    goto :goto_6d

    .line 411
    :cond_47
    invoke-direct {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getMaxScrollOffset()I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    if-gez v1, :cond_5c

    .line 414
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    neg-int p1, p1

    goto :goto_6d

    .line 415
    :cond_5c
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result v1

    add-int/2addr v1, p1

    if-le v1, v0, :cond_6d

    .line 416
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$300(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;)I

    move-result p1

    sub-int p1, v0, p1

    :cond_6d
    :goto_6d
    if-eqz p1, :cond_77

    .line 422
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$312(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 423
    invoke-direct {p0, p2, p3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->fillData(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    :cond_77
    return p1

    :cond_78
    :goto_78
    return v1
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    .line 370
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_7

    const/4 p1, 0x0

    return p1

    .line 373
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public scrollToPosition(I)V
    .registers 5

    if-ltz p1, :cond_8

    .line 287
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mPendingScrollPosition:I

    .line 288
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 285
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position can\'t be less then 0. position is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5

    .line 362
    iget v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 365
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->scrollBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public setLeftWitdh(I)V
    .registers 2

    .line 134
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->leftWitdh:I

    return-void
.end method

.method public setMaxVisibleItems(I)V
    .registers 3

    if-lez p1, :cond_b

    .line 223
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mLayoutHelper:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;->access$202(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutHelper;I)I

    .line 224
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 221
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxVisibleItems can\'t be less then 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNeedExpand(Z)V
    .registers 2

    .line 105
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->needExpand:Z

    return-void
.end method

.method public setNeedShrink(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->needShrink:Z

    return-void
.end method

.method public setPadding(I)V
    .registers 2

    .line 89
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->padding:I

    return-void
.end method

.method public setPostLayoutListener(Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->mViewPostLayout:Lcom/codemao/nemo/view/CarouselLayoutManager$PostLayoutListener;

    .line 208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setRightWitdh(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->rightWitdh:I

    return-void
.end method

.method public setScreenHeight(I)V
    .registers 2

    return-void
.end method

.method public setScreenWitdh(I)V
    .registers 2

    return-void
.end method

.method public setShrink(Z)V
    .registers 2

    .line 791
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager;->isShrink:Z

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    .line 294
    invoke-virtual {p0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 297
    :cond_7
    new-instance p2, Lcom/codemao/nemo/view/CarouselLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager$1;-><init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/content/Context;)V

    if-ltz p3, :cond_18

    .line 321
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 322
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_18
    return-void
.end method
