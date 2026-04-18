.class Lcom/codemao/nemo/dialog/WorkPlayShareDialog$4;
.super Ljava/lang/Object;
.source "WorkPlayShareDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->doShowShareAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/WorkPlayShareDialog;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 449
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkPlayShareDialog$4;->this$0:Lcom/codemao/nemo/dialog/WorkPlayShareDialog;

    iget-object p1, p1, Lcom/codemao/nemo/dialog/WorkPlayShareDialog;->ivScreenShoot:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

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
