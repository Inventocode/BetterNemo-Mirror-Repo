.class public Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;
.super Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;
.source "SelectSoundAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoundHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;


# direct methods
.method public static synthetic $r8$lambda$fEVllLh9Rdfsok0uAXmn1s8SFgg(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->lambda$bindData$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;)V
    .registers 3

    .line 207
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method private synthetic lambda$bindData$0(Landroid/view/View;)V
    .registers 3

    .line 219
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$700(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;I)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/SoundVO;I)V
    .registers 7

    .line 212
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->setData(Lcom/codemao/creativestore/bean/SoundVO;)V

    .line 213
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$300(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 215
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$500(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)Lcom/codemao/creativecenter/utils/Mp3PlayController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->listenPlayMusic(Lcom/codemao/creativecenter/utils/Mp3PlayController;)V

    .line 216
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->cpm:Lcom/codemao/creativecenter/customview/CmPlayMusic;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/CmPlayMusic;->setMusicUrl(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;->this$0:Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->access$400(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;)I

    move-result v1

    if-ne p2, v1, :cond_65

    goto :goto_66

    :cond_65
    const/4 v2, 0x0

    :goto_66
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 223
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    move-object v0, p2

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->getSelected()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "mid"

    const/16 v2, 0x8

    if-eqz p2, :cond_8c

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8c

    const/4 p2, 0x0

    goto :goto_8e

    :cond_8c
    const/16 p2, 0x8

    :goto_8e
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    move-object v0, p2

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    invoke-virtual {p2}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->getSelected()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_af

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_af

    goto :goto_b1

    :cond_af
    const/16 v3, 0x8

    :goto_b1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivEdit:Landroid/widget/ImageView;

    new-instance v0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;Lcom/codemao/creativestore/bean/SoundVO;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivDel:Landroid/widget/ImageView;

    new-instance p2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$2;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;->ivCopy:Landroid/widget/ImageView;

    new-instance p2, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder$3;-><init>(Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$SoundHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialSoundPopBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
