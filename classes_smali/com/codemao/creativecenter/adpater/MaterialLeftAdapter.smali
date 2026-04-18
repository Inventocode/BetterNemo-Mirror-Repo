.class public Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MaterialLeftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;,
        Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field lastSelection:I

.field private left:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialLeftBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;


# direct methods
.method public static synthetic $r8$lambda$o03xyNnCsyN7Ws92WpoV4F1-B0c(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/bean/MaterialLeftBean;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 116
    iput v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lastSelection:I

    .line 37
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 3

    .line 88
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;

    if-eqz p2, :cond_7

    .line 89
    invoke-interface {p2, p1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;->onChoose(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;I)V
    .registers 8

    .line 72
    invoke-virtual {p1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 74
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->setData(Lcom/codemao/creativecenter/bean/MaterialLeftBean;)V

    .line 75
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->setIsPadMode(Ljava/lang/Boolean;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_24

    const/4 v3, 0x1

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    .line 76
    :goto_25
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->setIsFirst(Ljava/lang/Boolean;)V

    .line 77
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    .line 79
    iget-object v3, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->tvName:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 80
    iget-object v3, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->ivIcon:Landroid/widget/ImageView;

    iget-boolean v0, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne v0, p2, :cond_4e

    .line 83
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setVisibility(I)V

    goto :goto_55

    .line 85
    :cond_4e
    iget-object v0, p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;->spBottom:Landroid/widget/Space;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setVisibility(I)V

    .line 87
    :goto_55
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;
    .registers 5

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_material_left:I

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterMaterialLeftBinding;

    .line 67
    new-instance p2, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$ViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;Landroidx/databinding/ViewDataBinding;)V

    return-object p2
.end method

.method public resetSelection()V
    .registers 3

    const/4 v0, -0x1

    .line 119
    iput v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lastSelection:I

    const/4 v0, 0x0

    .line 120
    :goto_4
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 121
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    iget-boolean v1, v1, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    if-eqz v1, :cond_1a

    .line 122
    iput v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lastSelection:I

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1d
    return-void
.end method

.method public setOnItemClickListener(Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->listener:Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter$OnItemChoose;

    return-void
.end method

.method public setSelection(I)V
    .registers 5

    .line 128
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    return-void

    .line 134
    :cond_e
    iget v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lastSelection:I

    if-ne v0, p1, :cond_13

    return-void

    :cond_13
    const/4 v2, -0x1

    if-eq v0, v2, :cond_21

    .line 137
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    .line 139
    :cond_21
    iput p1, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->lastSelection:I

    .line 142
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialLeftAdapter;->left:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/bean/MaterialLeftBean;

    .line 143
    iput-boolean v1, p1, Lcom/codemao/creativecenter/bean/MaterialLeftBean;->isSelect:Z

    .line 144
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
