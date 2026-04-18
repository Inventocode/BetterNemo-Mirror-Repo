.class Lcom/codemao/nemo/view/ExpandTextView$2;
.super Ljava/lang/Object;
.source "ExpandTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/ExpandTextView;->doExandOrShrinAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/ExpandTextView;

.field final synthetic val$endHeight:I

.field final synthetic val$expandStr:Ljava/lang/String;

.field final synthetic val$finalMaxLines:I

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/ExpandTextView;ILjava/lang/String;II)V
    .registers 6

    .line 211
    iput-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    iput p2, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$endHeight:I

    iput-object p3, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$expandStr:Ljava/lang/String;

    iput p4, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$resourceId:I

    iput p5, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$finalMaxLines:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 214
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 216
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    iget-object v1, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget v0, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$endHeight:I

    if-ne p1, v0, :cond_3c

    .line 219
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ExpandTextView;->access$100(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$expandStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ExpandTextView;->access$200(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$resourceId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object p1, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->this$0:Lcom/codemao/nemo/view/ExpandTextView;

    invoke-static {p1}, Lcom/codemao/nemo/view/ExpandTextView;->access$300(Lcom/codemao/nemo/view/ExpandTextView;)Landroid/widget/TextView;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/view/ExpandTextView$2;->val$finalMaxLines:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_3c
    return-void
.end method
