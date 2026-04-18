.class Lcom/codemao/nemo/view/MyItemAnimator$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyItemAnimator;->animateChangeImpl(Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyItemAnimator;

.field final synthetic val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

.field final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    .line 310
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 316
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 317
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 318
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 319
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 320
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 321
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 322
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/MyItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 312
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$7;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
