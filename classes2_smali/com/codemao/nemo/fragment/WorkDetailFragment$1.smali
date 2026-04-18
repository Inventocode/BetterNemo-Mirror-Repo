.class Lcom/codemao/nemo/fragment/WorkDetailFragment$1;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->doExandAndShrinAnim(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

.field final synthetic val$afterString:Ljava/lang/String;

.field final synthetic val$endHeight:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;ILjava/lang/String;)V
    .registers 4

    .line 193
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->val$endHeight:I

    iput-object p3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->val$afterString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flDes:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 198
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flDes:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->val$endHeight:I

    if-ne p1, v0, :cond_32

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->val$afterString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$1;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_32
    return-void
.end method
