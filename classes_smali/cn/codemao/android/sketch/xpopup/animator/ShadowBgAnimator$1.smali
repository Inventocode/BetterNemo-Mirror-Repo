.class Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$1;
.super Ljava/lang/Object;
.source "ShadowBgAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ShadowBgAnimator;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
