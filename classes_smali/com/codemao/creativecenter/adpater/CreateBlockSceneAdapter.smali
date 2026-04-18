.class public Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateBlockSceneAdapter.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/EmptyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;,
        Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$RoleHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;",
        ">;",
        "Lcom/codemao/creativecenter/callback/EmptyInterface;"
    }
.end annotation


# instance fields
.field private currentPosition:I

.field localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

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

.field private onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/callback/OnItemClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;",
            "Lcom/codemao/creativestore/presenter/CreateUtils;",
            "Lcom/codemao/creativecenter/view/LocalBcmView;",
            "Lcom/codemao/creativecenter/callback/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 p3, 0x0

    .line 39
    iput p3, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    const-string p3, "layout_inflater"

    .line 47
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p5, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;

    .line 50
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 51
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->mdatas:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;)I
    .registers 1

    .line 34
    iget p0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;I)I
    .registers 2

    .line 34
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getCurrentPosition()I
    .registers 2

    .line 134
    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 139
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 34
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;I)V
    .registers 6

    .line 68
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;

    .line 69
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->setIsPad(Ljava/lang/Boolean;)V

    .line 70
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 72
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->vBg:Landroid/view/View;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    if-ne p2, v1, :cond_36

    const/4 v1, 0x1

    goto :goto_37

    :cond_36
    const/4 v1, 0x0

    :goto_37
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 73
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->index:Landroid/widget/TextView;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    if-ne p2, v1, :cond_43

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_46

    :cond_43
    const v1, 0x3e99999a  # 0.3f

    :goto_46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 74
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;->rlRoot:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$BaseHolder;
    .registers 5

    .line 61
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_scene_edit:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemSceneEditBinding;

    .line 62
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$RoleHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter$RoleHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public quite()V
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->currentPosition:I

    return-void
.end method
