.class Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;
.super Ljava/lang/Object;
.source "BezierCircleFooter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

.field final synthetic val$height:I

.field final synthetic val$maxDragHeight:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;II)V
    .registers 4

    .line 337
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    iput p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->val$height:I

    iput p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->val$maxDragHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    .line 340
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 341
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    float-to-int v3, p1

    iget v4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->val$height:I

    iget v5, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$1;->val$maxDragHeight:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual/range {v0 .. v5}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->onMoving(ZFIII)V

    return-void
.end method
