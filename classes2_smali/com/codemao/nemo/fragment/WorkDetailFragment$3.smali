.class Lcom/codemao/nemo/fragment/WorkDetailFragment$3;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkDetailFragment;->setData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkDetailFragment;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 253
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    const v2, 0x7f0e004e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/16 v2, 0xbb8

    const/high16 v3, -0x80000000

    .line 256
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 257
    iget-object v3, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v3, v3, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 258
    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$102(Lcom/codemao/nemo/fragment/WorkDetailFragment;I)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_91

    .line 260
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    add-int/lit8 v2, v0, -0x3

    if-gez v2, :cond_50

    add-int/lit8 v0, v0, 0x3

    .line 264
    :cond_50
    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v4}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCombDesCription()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$302(Lcom/codemao/nemo/fragment/WorkDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v2, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$300(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9a

    .line 268
    :cond_91
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    :goto_9a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flDes:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41900000  # 18.0f

    .line 271
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$3;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkDetailFragment;->flDes:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
