.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;)V
    .registers 2

    .line 720
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .registers 4

    .line 723
    sget v0, Lcom/codemao/creativecenter/BR;->showThemeNewVersion:I

    if-ne p2, v0, :cond_2a

    .line 724
    check-cast p1, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;

    .line 725
    invoke-virtual {p1}, Lcom/codemao/creativecenter/bean/MaterialHeaderInfo;->isShowThemeNewVersion()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 726
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    .line 728
    :cond_1b
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder$1;->this$1:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BottomHolder;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$BaseViewHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialBottomBinding;->clude:Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutMaterialItemBinding;->vThemeNeedUpdate:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_2a
    return-void
.end method
