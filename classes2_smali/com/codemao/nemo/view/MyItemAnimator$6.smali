.class Lcom/codemao/nemo/view/MyItemAnimator$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .registers 7

    .line 246
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$view:Landroid/view/View;

    iput p5, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 252
    iget p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$deltaX:I

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 253
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 256
    :cond_a
    iget p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$deltaY:I

    if-eqz p1, :cond_13

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_13
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 263
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 264
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 265
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/MyItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 248
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$6;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
