.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 6

    .line 269
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$deltaX:I

    iput p4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$deltaY:I

    iput-object p5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 4

    .line 276
    iget v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 277
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 279
    :cond_8
    iget v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$deltaY:I

    if-eqz v0, :cond_f

    .line 280
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 285
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 286
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 287
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 272
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
