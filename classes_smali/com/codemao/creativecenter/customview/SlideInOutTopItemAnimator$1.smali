.class Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;
.source "SlideInOutTopItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 4

    .line 54
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    .line 62
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;->onAnimationCancel(Landroid/view/View;)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget v0, v0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->mOriginalY:F

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 74
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 75
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 57
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$1;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
