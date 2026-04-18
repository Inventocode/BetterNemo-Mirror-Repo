.class Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;


# direct methods
.method constructor <init>(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->access$000(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)V

    .line 48
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    iget-object v1, v0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-static {v0}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->access$100(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)I

    move-result v0

    iget-object v2, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    invoke-static {v2}, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;->access$200(Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    .line 49
    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator$1;->this$0:Lcn/codemao/android/sketch/xpopup/animator/ScrollScaleAnimator;

    iget-object v0, v0, Lcn/codemao/android/sketch/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2c
    return-void
.end method
