.class Lcom/codemao/nemo/activity/CreateMenuActivity$5;
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

.field final synthetic val$isReverse:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CreateMenuActivity;Z)V
    .registers 3

    .line 279
    iput-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->val$isReverse:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 282
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 283
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$100(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->val$isReverse:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 284
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$200(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$5;->val$isReverse:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
