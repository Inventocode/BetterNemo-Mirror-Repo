.class Lcom/codemao/nemo/view/MyItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MyItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .registers 5

    .line 162
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 169
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 170
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/MyItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
