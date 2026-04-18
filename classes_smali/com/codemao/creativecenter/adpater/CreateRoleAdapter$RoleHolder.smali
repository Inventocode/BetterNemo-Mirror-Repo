.class public Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;
.super Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;
.source "CreateRoleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoleHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder<",
        "Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;",
        ">;"
    }
.end annotation


# instance fields
.field private actor:Lcom/codemao/creativestore/bean/ActorVO;

.field private onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V
    .registers 3

    .line 577
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    .line 578
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 579
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)V

    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 572
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method


# virtual methods
.method public bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V
    .registers 5

    .line 630
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    if-eqz v0, :cond_9

    .line 631
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {v0, v1}, Landroidx/databinding/BaseObservable;->removeOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 634
    :cond_9
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 637
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->setActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 638
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1000(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativecenter/callback/ObserverAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->setObserver(Lcom/codemao/creativecenter/callback/ObserverAction;)V

    .line 639
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$1100(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->setLandscapeStage(Ljava/lang/Boolean;)V

    .line 640
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->isLogin()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->setIsLogin(Ljava/lang/Boolean;)V

    .line 642
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 643
    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz p1, :cond_65

    .line 644
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->this$0:Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->access$902(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I

    .line 648
    :cond_65
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->actor:Lcom/codemao/creativestore/bean/ActorVO;

    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->onPropertyChangedCallback:Landroidx/databinding/Observable$OnPropertyChangedCallback;

    invoke-virtual {p1, p2}, Landroidx/databinding/BaseObservable;->addOnPropertyChangedCallback(Landroidx/databinding/Observable$OnPropertyChangedCallback;)V

    .line 650
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$2;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 665
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder$3;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 680
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
