.class public Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;
.super Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;
.source "CreateRoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackGroundHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private actor:Lcom/codemao/creativestore/bean/ActorVO;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V
    .registers 4

    .line 690
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    .line 691
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 693
    iget-object p2, p2, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 696
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 686
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method


# virtual methods
.method public bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V
    .registers 6

    .line 738
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_9

    .line 739
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 742
    :cond_9
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 744
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 745
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1000(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativecenter/callback/ObserverAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    .line 746
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->isLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->setIsLogin(Ljava/lang/Boolean;)V

    .line 747
    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v0, :cond_52

    .line 748
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_6b

    .line 750
    :cond_52
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 753
    :goto_6b
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz p1, :cond_74

    .line 754
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$902(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I

    .line 757
    :cond_74
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 759
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$2;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder$3;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 789
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
