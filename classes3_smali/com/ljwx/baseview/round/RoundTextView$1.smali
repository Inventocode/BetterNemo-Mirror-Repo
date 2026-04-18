.class Lcom/ljwx/baseview/round/RoundTextView$1;
.super Ljava/lang/Object;
.source "RoundTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/baseview/round/RoundTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ljwx/baseview/round/RoundTextView;

.field final synthetic val$bottomShadowLen:I

.field final synthetic val$isHasShadow:Z

.field final synthetic val$leftShadowLen:I

.field final synthetic val$rightShadowLen:I

.field final synthetic val$strokeWidth:I

.field final synthetic val$topShadowLen:I


# direct methods
.method constructor <init>(Lcom/ljwx/baseview/round/RoundTextView;IIIIZI)V
    .registers 8

    .line 83
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    iput p2, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$leftShadowLen:I

    iput p3, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$rightShadowLen:I

    iput p4, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$topShadowLen:I

    iput p5, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$bottomShadowLen:I

    iput-boolean p6, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$isHasShadow:Z

    iput p7, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$strokeWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 9

    .line 86
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_97

    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_97

    .line 87
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-static {v0}, Lcom/ljwx/baseview/round/RoundTextView;->access$000(Lcom/ljwx/baseview/round/RoundTextView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4a

    .line 88
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$leftShadowLen:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$rightShadowLen:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$topShadowLen:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$bottomShadowLen:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/ljwx/baseview/round/RoundTextView;->access$002(Lcom/ljwx/baseview/round/RoundTextView;I)I

    .line 89
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-static {v0}, Lcom/ljwx/baseview/round/RoundTextView;->access$100(Lcom/ljwx/baseview/round/RoundTextView;)Lcom/ljwx/baseview/round/RoundDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-static {v1}, Lcom/ljwx/baseview/round/RoundTextView;->access$000(Lcom/ljwx/baseview/round/RoundTextView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 91
    :cond_4a
    iget-boolean v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$isHasShadow:Z

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-static {v0}, Lcom/ljwx/baseview/round/RoundTextView;->access$200(Lcom/ljwx/baseview/round/RoundTextView;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_8e

    .line 92
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$leftShadowLen:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$strokeWidth:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    iget v4, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$topShadowLen:I

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iget-object v3, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    .line 94
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iget v6, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$rightShadowLen:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$strokeWidth:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    .line 95
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$bottomShadowLen:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->val$strokeWidth:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    sub-float/2addr v6, v7

    invoke-direct {v1, v2, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    invoke-static {v0, v1}, Lcom/ljwx/baseview/round/RoundTextView;->access$202(Lcom/ljwx/baseview/round/RoundTextView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 96
    :cond_8e
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView$1;->this$0:Lcom/ljwx/baseview/round/RoundTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_97
    const/4 v0, 0x1

    return v0
.end method
