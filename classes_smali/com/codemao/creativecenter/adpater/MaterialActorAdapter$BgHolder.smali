.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BgHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public static synthetic $r8$lambda$UFJjnYxneNgp---iHQSJVbVIyBg(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->lambda$bindData$2(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z77yrVPLDQP3rzScawlMOSoKJxw(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apYVm5YK3L9LsYksOHEdwsLhzJE(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;)V
    .registers 3

    .line 590
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 591
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 592
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    return-void
.end method

.method private disableItemClick()V
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 694
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 695
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private enableItemClick()V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 687
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 688
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 5

    .line 607
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$500(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 608
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 610
    :cond_12
    iget v0, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 611
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 612
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickToDownloadCollection(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    goto :goto_3f

    :cond_29
    const/4 v1, 0x1

    if-eqz v0, :cond_30

    if-ne v0, v1, :cond_2f

    goto :goto_30

    :cond_2f
    return-void

    .line 615
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 616
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 620
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_54

    .line 622
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_54
    return-void
.end method

.method private static synthetic lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 628
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$bindData$2(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    .line 630
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setDeleteSelect(Z)V

    .line 631
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 10

    .line 596
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 597
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 599
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 600
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 602
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 604
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 606
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 626
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    new-instance v2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 633
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 635
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 636
    iget v2, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x8

    const v7, 0x3ecccccd  # 0.4f

    if-ne v2, v5, :cond_ca

    .line 637
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 638
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 639
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->enableItemClick()V

    .line 640
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_140

    .line 642
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto/16 :goto_140

    :cond_ca
    if-ne v2, v4, :cond_11b

    .line 645
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 646
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 647
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble()Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 648
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->enableItemClick()V

    goto :goto_eb

    .line 650
    :cond_e8
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->disableItemClick()V

    .line 652
    :goto_eb
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_111

    .line 654
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/codemao/creativecenter/R$anim;->creative_material_collection_loading_bg:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v2, -0x1

    .line 655
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 656
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 657
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 659
    :cond_111
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_140

    .line 661
    :cond_11b
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 662
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 663
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BgHolder;->enableItemClick()V

    .line 664
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v2, v2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_140

    .line 666
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 670
    :cond_140
    :goto_140
    iget p1, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    if-eq p1, v3, :cond_15c

    if-eq p1, v4, :cond_15c

    if-ne p1, v5, :cond_149

    goto :goto_15c

    .line 677
    :cond_149
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 678
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->vTextBg:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_16e

    .line 674
    :cond_15c
    :goto_15c
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->vTextBg:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 681
    :goto_16e
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 700
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
