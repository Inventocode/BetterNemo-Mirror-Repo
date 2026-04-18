.class Lcom/codemao/nemo/activity/CreateMenuActivity$2;
.super Ljava/lang/Object;
.source "CreateMenuActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CreateMenuActivity;->openMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CreateMenuActivity;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$2;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 179
    iget-object p1, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$2;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    const v0, 0x7f010033

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 180
    new-instance v0, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutLinearInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x1

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/CreateMenuActivity$2;->this$0:Lcom/codemao/nemo/activity/CreateMenuActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CreateMenuActivity;->access$100(Lcom/codemao/nemo/activity/CreateMenuActivity;)Landroid/view/View;

    move-result-object v0

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
