.class public Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateDebugSceneAdapter.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/EmptyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;,
        Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$RoleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;",
        ">;",
        "Lcom/codemao/creativecenter/callback/EmptyInterface;"
    }
.end annotation


# instance fields
.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentScene:Lcom/codemao/creativestore/bean/SceneVO;

.field private debugView:Lcom/codemao/creativecenter/customview/CreateDebugView;

.field private localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/customview/CreateDebugView;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;",
            "Lcom/codemao/creativestore/presenter/CreateUtils;",
            "Lcom/codemao/creativecenter/view/LocalBcmView;",
            "Lcom/codemao/creativecenter/customview/CreateDebugView;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    const-string v0, "layout_inflater"

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 44
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 45
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 46
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mdatas:Ljava/util/List;

    .line 47
    iput-object p5, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->debugView:Lcom/codemao/creativecenter/customview/CreateDebugView;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativestore/bean/SceneVO;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;Lcom/codemao/creativestore/bean/SceneVO;)Lcom/codemao/creativestore/bean/SceneVO;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Ljava/util/List;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mdatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;)Lcom/codemao/creativecenter/customview/CreateDebugView;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->debugView:Lcom/codemao/creativecenter/customview/CreateDebugView;

    return-object p0
.end method


# virtual methods
.method public getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 143
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 32
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;I)V
    .registers 6

    .line 60
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;

    .line 61
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 62
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;->index:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 64
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;->vBg:Landroid/view/View;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    if-ne v1, v2, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 65
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;->index:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    if-ne v1, v2, :cond_4f

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_52

    :cond_4f
    const v1, 0x3e99999a  # 0.3f

    :goto_52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 66
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;->rlRoot:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$BaseHolder;
    .registers 5

    .line 53
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_scene_edit_debug:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditDebugBinding;

    .line 54
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$RoleHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter$RoleHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public quite()V
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method

.method public setCurrentScene(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugSceneAdapter;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    return-void
.end method
