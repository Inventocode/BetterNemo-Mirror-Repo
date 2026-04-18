.class Lcom/codemao/nemo/view/CarouselLayoutManager$4;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;->fillChildItem(IIIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;Landroidx/recyclerview/widget/RecyclerView$Recycler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

.field final synthetic val$bottom:I

.field final synthetic val$end:I

.field final synthetic val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

.field final synthetic val$layoutOrder:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

.field final synthetic val$start:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/view/View;ILcom/codemao/nemo/view/ItemTransformation;IIILcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)V
    .registers 9

    .line 687
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iput-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$start:I

    iput-object p4, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iput p5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$top:I

    iput p6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$end:I

    iput p7, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$bottom:I

    iput-object p8, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$layoutOrder:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .line 690
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 691
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$view:Landroid/view/View;

    const v1, 0x7f0a061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$start:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v3, v3, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v4}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    const/high16 v4, 0x41200000  # 10.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$top:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v5, v5, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$end:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v6, v6, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v5, v6

    .line 693
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v7}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    div-float/2addr v6, v4

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v6, v6, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v5, v6

    .line 694
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 692
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 695
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 696
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x40a00000  # 5.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_b1

    .line 697
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {p1, v4}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$902(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    .line 698
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$1002(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    .line 699
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {p1, v4}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$1102(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    .line 700
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$4;->val$layoutOrder:Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;

    invoke-static {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;->access$600(Lcom/codemao/nemo/view/CarouselLayoutManager$LayoutOrder;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$802(Lcom/codemao/nemo/view/CarouselLayoutManager;I)I

    :cond_b1
    return-void
.end method
