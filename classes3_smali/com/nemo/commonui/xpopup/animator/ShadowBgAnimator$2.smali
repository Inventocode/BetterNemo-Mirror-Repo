.class Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator$2;
.super Ljava/lang/Object;
.source "ShadowBgAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;->animateDismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;


# direct methods
.method constructor <init>(Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator$2;->this$0:Lcom/nemo/commonui/xpopup/animator/ShadowBgAnimator;

    iget-object v0, v0, Lcom/nemo/commonui/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
