.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadingHoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public static synthetic $r8$lambda$Kx3joa7f8bv2OEmzvUSG7SOqWbA(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->lambda$updateStatus$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;)V
    .registers 4

    .line 470
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 471
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 460
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$1;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 473
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$2;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V
    .registers 2

    .line 457
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->updateStatus(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V

    return-void
.end method

.method private synthetic lambda$updateStatus$0(Landroid/view/View;)V
    .registers 3

    .line 518
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;->clickToDownloadCollection(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method private updateStatus(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V
    .registers 7

    .line 482
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_60

    .line 483
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 484
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivRetry:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 486
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 487
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 488
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 490
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_theme_material_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c6

    .line 491
    :cond_60
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_bd

    .line 492
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 493
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivRetry:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 496
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 499
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_theme_material_load_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c6

    .line 500
    :cond_bd
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_11a

    .line 501
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 502
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivRetry:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 505
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 508
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_collection_material_downloading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c6

    .line 509
    :cond_11a
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownlaodStatus()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_190

    .line 510
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivRetry:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 514
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v3}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_collection_material_load_error:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;->getDownloadItemNum()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1c6

    .line 520
    :cond_190
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 521
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->clNotice:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 522
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 524
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->ivCloudDownload:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvDownloadCloudCollect:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1c6
    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V
    .registers 4

    .line 530
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 531
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 532
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->tvName:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$3;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder$3;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->updateStatus(Lcom/codemao/creativecenter/bean/MaterialDetailLoadingInfo;)V

    .line 541
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$LoadingHoder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;->setIsPad(Ljava/lang/Boolean;)V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLoadingBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
