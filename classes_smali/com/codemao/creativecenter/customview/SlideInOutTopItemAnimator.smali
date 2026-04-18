.class public Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator;
.source "SlideInOutTopItemAnimator.java"


# instance fields
.field mOriginalY:F

.field time:I


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/16 p1, 0xfa

    .line 35
    iput p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->time:I

    .line 43
    iput p2, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->time:I

    return-void
.end method

.method private retrieveItemHeight(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->mOriginalY:F

    return-void
.end method


# virtual methods
.method protected animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 89
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 91
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/high16 v2, 0x3f800000  # 1.0f

    .line 94
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->time:I

    int-to-long v2, v2

    .line 95
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;-><init>(Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 96
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method protected animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5

    .line 47
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->retrieveItemHeight(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 49
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget v1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->time:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->mOriginalY:F

    neg-float v2, v2

    .line 53
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;-><init>(Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 54
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method protected prepareAnimateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 83
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->retrieveItemHeight(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 84
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->mOriginalY:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
