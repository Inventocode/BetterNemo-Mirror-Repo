.class public Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;
.source "MaterialDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActorHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;


# direct methods
.method public static synthetic $r8$lambda$IgM0fisqMO9Ymg3Q5jUxDIXhLtw(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_5Qf9imdk0DR3MaO0hT_5ViH3Y(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 127
    iget-object p1, p2, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->tvName:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$bindData$0(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 137
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method

.method private static synthetic lambda$bindData$1(Lcom/codemao/creativestore/bean/MaterialActorBean;Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x0

    .line 140
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 132
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;

    iget-object v0, v0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 134
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivAnim:Lcom/codemao/creativecenter/customview/AnimImageView;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/customview/AnimImageView;->setData(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    .line 135
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->clBg:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    iget-object v0, v0, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;->ivChoose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$ActorHolder$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialDrawerAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialActorBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
