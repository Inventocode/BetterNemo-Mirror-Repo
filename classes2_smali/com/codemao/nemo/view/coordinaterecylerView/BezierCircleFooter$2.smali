.class Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;
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

.field final synthetic val$bH:F

.field final synthetic val$diffY:F

.field final synthetic val$rectF:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;FFLandroid/graphics/RectF;)V
    .registers 5

    .line 355
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    iput p2, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$diffY:F

    iput p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$bH:F

    iput-object p4, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$rectF:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 358
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 359
    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$diffY:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$bH:F

    mul-float p1, p1, v0

    .line 360
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->access$000(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->val$rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 361
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter$2;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;->access$000(Lcom/codemao/nemo/view/coordinaterecylerView/BezierCircleFooter;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method
