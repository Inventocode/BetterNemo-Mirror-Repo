.class Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;
.super Ljava/lang/Object;
.source "ScrollScaleAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/animator/ScrollScaleAnimator;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 105
    fill-array-data v0, :array_28

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2$1;-><init>(Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    iget-object v1, p0, Lcom/lxj/xpopup/animator/ScrollScaleAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScrollScaleAnimator;

    iget v1, v1, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 117
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_28
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
