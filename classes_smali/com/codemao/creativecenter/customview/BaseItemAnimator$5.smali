.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;
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

.field final synthetic val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 4

    .line 333
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 342
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 343
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 344
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 345
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 346
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object p1, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 4

    .line 336
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->this$0:Lcom/codemao/creativecenter/customview/BaseItemAnimator;

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;->val$changeInfo:Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
