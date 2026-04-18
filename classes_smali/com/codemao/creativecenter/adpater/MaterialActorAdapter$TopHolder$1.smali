.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;)V
    .registers 2

    .line 764
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 4

    .line 767
    sget v0, Lcom/codemao/creativecenter/BR;->showThemeNewVersion:I

    if-ne p2, v0, :cond_2a

    .line 768
    check-cast p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 769
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isShowThemeNewVersion()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 770
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    .line 772
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$TopHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialTopBinding;->include:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_2a
    return-void
.end method
