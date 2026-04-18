.class Lcom/codemao/nemo/dialog/ShareCardDialogV3$4;
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

    .line 623
    iput-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$4;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 626
    iget-object p1, p0, Lcom/codemao/nemo/dialog/ShareCardDialogV3$4;->this$0:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
