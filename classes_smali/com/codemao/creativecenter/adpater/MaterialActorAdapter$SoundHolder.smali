.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public static synthetic $r8$lambda$CDiVQnpuk-7THv51E7vYnNL5K2c(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;)V
    .registers 3

    .line 554
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 555
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 4

    .line 568
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    .line 569
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 570
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_2b

    .line 572
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_2b
    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 560
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 561
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 562
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 563
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 565
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$800(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->listenPlayMusic(Lcom/codemao/creativecenter/utils/Mp3PlayController;)V

    .line 566
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->setMusicUrl(Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$SoundHolder;Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 576
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 578
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 583
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
