.class Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$3;
.super Ljava/lang/Object;
.source "BezierCircleFooter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;)V
    .registers 2

    .line 376
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$3;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$3;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    .line 380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->mFinishRatio:F

    .line 381
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
