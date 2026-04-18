.class Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;
.source "ScaleInOutItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 4

    .line 99
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 118
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 119
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 102
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->this$0:Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/ScaleInOutItemAnimator$2;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
