.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$7;
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

    .line 701
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$7;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .line 709
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, -0x3e600000  # -20.0f

    invoke-direct {p1, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    .line 710
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 711
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 712
    iget-object v0, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$7;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object v0, v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->ivClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

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
