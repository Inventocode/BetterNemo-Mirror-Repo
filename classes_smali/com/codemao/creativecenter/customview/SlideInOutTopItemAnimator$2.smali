.class Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;
.source "SlideInOutTopItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
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

    .line 96
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 117
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 118
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 99
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/SlideInOutTopItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
