.class public final Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$4;
.super Ljava/lang/Object;
.source "ShareQRCodeActivity.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->doShowShareAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$4;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    const/high16 v1, -0x3e600000  # -20.0f

    invoke-direct {p1, v0, v0, v1, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0xc8

    .line 206
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 208
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity$doShowShareAnim$4;->this$0:Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;

    sget v1, Lcom/codemao/nemo/R$id;->iv_share_close:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/qrscan/activity/ShareQRCodeActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
