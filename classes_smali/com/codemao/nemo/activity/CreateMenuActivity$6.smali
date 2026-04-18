.class Lcom/codemao/nemo/activity/CreateMenuActivity$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CreateMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CreateMenuActivity;->startAnimationToNewWorksPage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

.field final synthetic val$fromAlpha2:F

.field final synthetic val$isReverse:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CreateMenuActivity;ZF)V
    .registers 4

    .line 325
    iput-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->val$isReverse:Z

    iput p3, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->val$fromAlpha2:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 337
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 338
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$300(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->val$isReverse:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 339
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$400(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->val$fromAlpha2:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 340
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$500(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->val$fromAlpha2:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 328
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 329
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$400(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 330
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$500(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 331
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$400(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$6;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$500(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
