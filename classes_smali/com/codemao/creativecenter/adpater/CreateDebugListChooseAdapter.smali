.class public Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateDebugListChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;,
        Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;,
        Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;"
        }
    .end annotation
.end field

.field private idOterSelect:Ljava/lang/String;

.field private idSelect:Ljava/lang/String;

.field private listIndex:I

.field private onItemClickListener:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;

.field private viewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$x4TJjqhbX_bYZI7DOUPy-vnybyE(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->lambda$onBindViewHolder$0(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;",
            "Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->listIndex:I

    .line 29
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->datas:Ljava/util/List;

    .line 31
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->onItemClickListener:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;Landroid/view/View;)V
    .registers 4

    .line 109
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->onItemClickListener:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;

    if-eqz p2, :cond_17

    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->id:Ljava/lang/String;

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->idOterSelect:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    .line 110
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->onItemClickListener:Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->id:Ljava/lang/String;

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->listIndex:I

    invoke-interface {p2, p1, v0}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->viewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 19
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;I)V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->viewModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;

    .line 89
    iget-object v0, p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->idOterSelect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 90
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3e

    .line 92
    :cond_1e
    iget-object v0, p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->idSelect:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 93
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 94
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_3e

    .line 96
    :cond_34
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 97
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    :goto_3e
    iget-boolean v0, p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->isTitle:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_56

    .line 100
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_67

    .line 104
    :cond_56
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_67
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;
    .registers 5

    .line 81
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_debug_list_choose:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setIdOterSelect(Ljava/lang/String;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->idOterSelect:Ljava/lang/String;

    return-void
.end method

.method public setIdSelect(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->idSelect:Ljava/lang/String;

    return-void
.end method

.method public setListIndex(I)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->listIndex:I

    return-void
.end method

.method public transformData()V
    .registers 11

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/VariableVO;

    .line 38
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    .line 39
    new-instance v4, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, p0, v5, v6, v3}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 41
    :cond_34
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_5b

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v6, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;

    const/4 v7, 0x1

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-1"

    invoke-direct {v6, p0, v7, v8, v9}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_5b
    new-instance v6, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, p0, v5, v7, v3}, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter$ViewModel;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 50
    :cond_6c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->viewModelList:Ljava/util/List;

    .line 51
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 54
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListChooseAdapter;->viewModelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7e

    :cond_9c
    return-void
.end method
