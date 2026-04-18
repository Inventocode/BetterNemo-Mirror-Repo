.class Lcom/codemao/nemo/fragment/WorkDetailFragment$2;
.super Ljava/lang/Object;
.source "WorkDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 221
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 228
    :cond_9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-boolean v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isExpand:Z

    if-nez v0, :cond_5c

    .line 230
    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->tvDes:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCombDesCription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->ivExpand:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 234
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    const/high16 v0, 0x41900000  # 18.0f

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$100(Lcom/codemao/nemo/fragment/WorkDetailFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$000(Lcom/codemao/nemo/fragment/WorkDetailFragment;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getCombDesCription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/fragment/WorkDetailFragment;->access$200(Lcom/codemao/nemo/fragment/WorkDetailFragment;IILjava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/fragment/WorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/WorkDetailFragment;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/codemao/nemo/fragment/WorkDetailFragment;->isExpand:Z

    :cond_5c
    return-void
.end method
