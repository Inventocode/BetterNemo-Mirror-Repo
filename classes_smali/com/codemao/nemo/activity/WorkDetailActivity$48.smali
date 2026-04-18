.class Lcom/codemao/nemo/activity/WorkDetailActivity$48;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->doCollectAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 1817
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$48;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1826
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$48;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->tvCollect:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

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
