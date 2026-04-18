.class Lcom/codemao/nemo/activity/BaseSearchActivity$3;
.super Ljava/lang/Object;
.source "BaseSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseSearchActivity;->enterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseSearchActivity;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 217
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->cancelTv:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 218
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v0, v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 219
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 220
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v4, 0x14d

    .line 221
    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 222
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 223
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 224
    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->cancelTv:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->root:Landroid/view/View;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_7c

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 229
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 232
    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseSearchActivity$3;->this$0:Lcom/codemao/nemo/activity/BaseSearchActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/BaseSearchActivity;->animRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    new-array v1, v1, [F

    .line 235
    fill-array-data v1, :array_84

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 236
    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 237
    new-instance v4, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/codemao/nemo/activity/BaseSearchActivity$3$1;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity$3;III)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 249
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_7c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_84
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
