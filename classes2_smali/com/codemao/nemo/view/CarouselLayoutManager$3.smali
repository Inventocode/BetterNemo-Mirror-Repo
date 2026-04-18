.class Lcom/codemao/nemo/view/CarouselLayoutManager$3;
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

.field final synthetic val$start:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/view/View;ILcom/codemao/nemo/view/ItemTransformation;III)V
    .registers 8

    .line 658
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    iput-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$start:I

    iput-object p4, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iput p5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$top:I

    iput p6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$end:I

    iput p7, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$bottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    .line 661
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 662
    iget-object v0, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$view:Landroid/view/View;

    const v1, 0x7f0a061a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 663
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$start:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v3, v3, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, 0x40a00000  # 5.0f

    sub-float v3, v4, v3

    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v5}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v3, v5

    const/high16 v5, 0x41200000  # 10.0f

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$top:I

    int-to-float v3, v3

    iget-object v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v6, v6, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$end:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v7, v7, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    add-float/2addr v6, v7

    .line 664
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float v7, v4, v7

    iget-object v8, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v8}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v8

    int-to-float v8, v8

    mul-float v7, v7, v8

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$bottom:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$finalTransformation:Lcom/codemao/nemo/view/ItemTransformation;

    iget v7, v7, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    add-float/2addr v6, v7

    .line 665
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 663
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 666
    iget-object v1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {v3}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$700(Lcom/codemao/nemo/view/CarouselLayoutManager;)I

    move-result v3

    iget-object v5, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->val$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 667
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    cmpl-float p1, p1, v4

    if-nez p1, :cond_b1

    .line 668
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/16 v0, -0x3e7

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$802(Lcom/codemao/nemo/view/CarouselLayoutManager;I)I

    .line 669
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$902(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    .line 670
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {p1, v5}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$1002(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    .line 671
    iget-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$3;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-static {p1, v5}, Lcom/codemao/nemo/view/CarouselLayoutManager;->access$1102(Lcom/codemao/nemo/view/CarouselLayoutManager;Z)Z

    :cond_b1
    return-void
.end method
