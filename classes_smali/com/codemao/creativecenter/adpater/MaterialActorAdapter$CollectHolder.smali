.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CollectHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public static synthetic $r8$lambda$5D-WeaugAmnMB9miYJaZX0j3B_c(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->lambda$bindData$0(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gpgzbIywZ5b6h6ug5dVSvOb1CdA(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->lambda$bindData$2(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$loPuMXSKRZzrqG3ezqnzp9QSfsE(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->lambda$bindData$1(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;)V
    .registers 3

    .line 820
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 821
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x1

    .line 829
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->setOpenManagerMode(Z)V

    .line 830
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->notifyUI(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    .line 831
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 832
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCollectManager(Z)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$bindData$1(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    .line 837
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 838
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCollectDelete()V

    :cond_11
    const/4 p2, 0x0

    .line 840
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->setOpenManagerMode(Z)V

    .line 841
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->notifyUI(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    .line 842
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 843
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCollectManager(Z)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$bindData$2(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;Landroid/view/View;)V
    .registers 3

    const/4 p2, 0x0

    .line 848
    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->setOpenManagerMode(Z)V

    .line 849
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->notifyUI(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    .line 850
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 851
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickCollectManager(Z)V

    :cond_18
    return-void
.end method

.method private notifyUI(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V
    .registers 5

    .line 857
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isOpenManagerMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_37

    .line 858
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$502(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Z)Z

    .line 859
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->title:Landroid/widget/TextView;

    const-string/jumbo v0, "删除所选的收藏角色？"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->manager:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 861
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_91

    .line 863
    :cond_37
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;->isShowEmpty()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 864
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->title:Landroid/widget/TextView;

    const-string/jumbo v0, "暂无收藏角色"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->manager:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 866
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_91

    .line 869
    :cond_65
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1, v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$502(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Z)Z

    .line 870
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->title:Landroid/widget/TextView;

    const-string/jumbo v0, "我的收藏"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->manager:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 872
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->delete:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->cancel:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_91
    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V
    .registers 4

    .line 826
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;->notifyUI(Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    .line 828
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->manager:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->delete:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;->cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$CollectHolder;Lcom/codemao/creativecenter/bean/MaterialCollectHeaderBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 879
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialCollectBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
