.class Lcom/codemao/nemo/activity/LoginActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->showAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$8;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 472
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 473
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$8;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->canClickBtn:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 478
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 479
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$8;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/codemao/nemo/activity/LoginActivity;->canClickBtn:Z

    return-void
.end method
