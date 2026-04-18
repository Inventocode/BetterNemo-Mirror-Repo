.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$5;
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


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/ShareCardDialogV3;)V
    .registers 2

    .line 648
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$5;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 11

    .line 656
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x42333333  # -0.1f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0xc8

    .line 657
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 659
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$5;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlQrcode:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

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
