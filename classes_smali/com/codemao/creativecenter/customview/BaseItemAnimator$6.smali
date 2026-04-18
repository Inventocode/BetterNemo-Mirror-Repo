.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;
.super Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateChangeImpl(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

.field final synthetic val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 5

    .line 355
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 362
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 363
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 364
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 365
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$newView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 366
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 367
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 368
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 4

    .line 358
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
