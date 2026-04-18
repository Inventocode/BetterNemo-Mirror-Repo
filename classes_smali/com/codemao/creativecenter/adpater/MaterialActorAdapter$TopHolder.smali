.class public Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;
.super Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;)V
    .registers 4

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 764
    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    .line 780
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$400(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 781
    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$600(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->setListener(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$OnOtherListener;)V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->setBean(Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;)V

    .line 786
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 787
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, v0}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 788
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isShowThemeNewVersion()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_26

    .line 789
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_31

    .line 791
    :cond_26
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 793
    :goto_31
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 794
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->themeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_46
    return-void
.end method

.method public unbind()V
    .registers 2

    .line 800
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    return-void
.end method
