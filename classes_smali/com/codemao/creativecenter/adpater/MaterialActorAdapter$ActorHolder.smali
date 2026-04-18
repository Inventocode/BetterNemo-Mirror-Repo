.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public static synthetic $r8$lambda$g7kcW9fGXujByZSMgxKU0YkhfcI(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gX6QzyujlyGO835RD1_EWNknX5k(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yzjUPNjDj5krVv-QT0YIHHcfQSU(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->lambda$bindData$2(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method private disableItemClick()V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 445
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private enableItemClick()V
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 438
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$500(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 371
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->callOnClick()Z

    return-void

    .line 373
    :cond_12
    iget v0, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 374
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 375
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

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

    .line 378
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 379
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setSelected(Z)V

    .line 383
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_54

    .line 385
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_54
    return-void
.end method

.method private static synthetic lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 391
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method

.method private synthetic lambda$bindData$2(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    .line 393
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setDeleteSelect(Z)V

    .line 394
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 7

    .line 362
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 363
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 364
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 365
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 367
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 369
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 389
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivCollectChoose:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isDeleteSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 398
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 399
    iget v1, p1, Lcom/codemao/creativestore/bean/MaterialActorBean;->itemType:I

    const/16 v2, 0x8

    const v3, 0x3ecccccd  # 0.4f

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b5

    .line 400
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->enableItemClick()V

    .line 401
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 402
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 403
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_12e

    .line 405
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto/16 :goto_12e

    :cond_b5
    const/4 v4, 0x3

    if-ne v1, v4, :cond_109

    .line 408
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 409
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 410
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isCollectDeleteAble()Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 411
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->enableItemClick()V

    goto :goto_d7

    .line 413
    :cond_d4
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->disableItemClick()V

    .line 415
    :goto_d7
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez v0, :cond_ff

    .line 417
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$anim;->creative_material_collection_loading_bg:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 p1, -0x1

    .line 418
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 p1, 0x1

    .line 419
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 420
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    :cond_ff
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_12e

    .line 424
    :cond_109
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 425
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 426
    invoke-direct {p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$ActorHolder;->enableItemClick()V

    .line 427
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->collectionDownloadingBg:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_12e

    .line 429
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 433
    :cond_12e
    :goto_12e
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
