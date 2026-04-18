.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;)V
    .registers 4

    .line 734
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    .line 735
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 720
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 736
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 737
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 742
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 743
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isShowThemeNewVersion()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_1f

    .line 744
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    .line 746
    :cond_1f
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 748
    :goto_2a
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$900(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_36

    sget p1, Lcom/codemao/creativecenter/R$string;->creative_library_no_materials_background:I

    goto :goto_38

    :cond_36
    sget p1, Lcom/codemao/creativecenter/R$string;->creative_library_no_materials:I

    .line 749
    :goto_38
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->emptyTips:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 750
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 751
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_56
    return-void
.end method

.method public unbind()V
    .registers 2

    .line 757
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
