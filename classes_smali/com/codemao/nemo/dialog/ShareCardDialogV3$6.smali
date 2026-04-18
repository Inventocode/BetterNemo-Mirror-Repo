.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;
.super Ljava/lang/Object;
.source "ShareCardDialogV3.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/ShareCardDialogV3;->doShowShareAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;Landroid/view/View;)V
    .registers 3

    .line 677
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iput-object p2, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 685
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->access$100(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f010015

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    check-cast p1, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    .line 686
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 687
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$6;->val$view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
