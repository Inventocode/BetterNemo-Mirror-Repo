.class public Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;
.source "MaterialDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BgHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;


# direct methods
.method public static synthetic $r8$lambda$-SOFuU7EcjZtKKXEbQ-tfkd351c(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->lambda$bindData$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8TLOklIKczirIE6pUeNHW6VMgdI(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->lambda$bindData$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;)V
    .registers 4

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 158
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 159
    iget-object p1, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->tvName:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Landroid/view/View;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 175
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$bindData$1(Landroid/view/View;)V
    .registers 3

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 3

    .line 168
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 169
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 171
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;->mBean:Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 172
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivAnim:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 173
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;->ivChoose:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BgHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialBackgroundBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
