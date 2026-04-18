.class Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;
.super Ljava/lang/Object;
.source "RecommendFragmentV2.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/RecommendFragmentV2;->startPullDownRefreshTipsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field consumed:[I

.field preConsumed:I

.field final synthetic this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 2

    .line 762
    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 763
    fill-array-data p1, :array_12

    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->consumed:[I

    const/4 p1, 0x0

    .line 764
    iput p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->preConsumed:I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 9

    .line 768
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 769
    iget v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->preConsumed:I

    sub-int v6, v0, p1

    .line 770
    iput p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->preConsumed:I

    if-gez v6, :cond_1f

    .line 772
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v2, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->onNestedScroll(Landroid/view/View;IIII)V

    goto :goto_2b

    .line 774
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->this$0:Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;->consumed:[I

    invoke-virtual {v0, p1, v1, v6, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->onNestedPreScroll(Landroid/view/View;II[I)V

    :goto_2b
    return-void
.end method
