.class Lcom/codemao/nemo/view/MyItemAnimator$8;
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

.field final synthetic val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation1:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyItemAnimator;Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Lcom/codemao/nemo/view/MyExpandCardView;Landroid/view/View;)V
    .registers 6

    .line 333
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iput-object p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newViewAnimation1:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    iput-object p5, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newViewAnimation1:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 340
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    const/high16 v0, 0x3f000000  # 0.5f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_6a

    .line 341
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget-object v3, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-static {v3}, Lcom/codemao/nemo/view/MyItemAnimator;->access$000(Lcom/codemao/nemo/view/MyItemAnimator;)I

    move-result v3

    const v4, 0x7f0a061a

    const v5, 0x7f0a0487

    if-eq p1, v3, :cond_52

    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget-object v3, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-static {v3}, Lcom/codemao/nemo/view/MyItemAnimator;->access$000(Lcom/codemao/nemo/view/MyItemAnimator;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v3, :cond_38

    goto :goto_52

    .line 346
    :cond_38
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 347
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 348
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_98

    .line 342
    :cond_52
    :goto_52
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 343
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$myExpandCardView:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_98

    .line 351
    :cond_6a
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget-object v3, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-static {v3}, Lcom/codemao/nemo/view/MyItemAnimator;->access$000(Lcom/codemao/nemo/view/MyItemAnimator;)I

    move-result v3

    if-eq p1, v3, :cond_93

    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result p1

    iget-object v3, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-static {v3}, Lcom/codemao/nemo/view/MyItemAnimator;->access$000(Lcom/codemao/nemo/view/MyItemAnimator;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne p1, v3, :cond_8d

    goto :goto_93

    .line 354
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_98

    .line 352
    :cond_93
    :goto_93
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 358
    :goto_98
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 359
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 360
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 361
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object p1, p1, Lcom/codemao/nemo/view/MyItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/MyItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 335
    iget-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->this$0:Lcom/codemao/nemo/view/MyItemAnimator;

    iget-object v0, p0, Lcom/codemao/nemo/view/MyItemAnimator$8;->val$changeInfo:Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/codemao/nemo/view/MyItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
