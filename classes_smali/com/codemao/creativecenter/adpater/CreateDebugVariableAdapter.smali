.class public Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateDebugVariableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;,
        Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;",
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

.field private viewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/VariableVO;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method private getVariableValue(Lcom/codemao/creativestore/bean/VariableVO;)Ljava/lang/String;
    .registers 4

    .line 85
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 86
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;)V

    .line 89
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 86
    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_36

    const/4 v0, 0x0

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4c

    .line 93
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    .line 95
    :cond_3b
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 96
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/VariableVO;->getValueForDebug()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4c

    :cond_4a
    const-string p1, "0"

    :goto_4c
    return-object p1
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;

    iget-boolean p1, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->hasTitle:Z

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public notifyViewModelList()V
    .registers 8

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->datas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/VariableVO;

    .line 39
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "any"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 40
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/VariableVO;->isIs_global()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 43
    :cond_37
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 48
    :cond_3b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/VariableVO;

    .line 49
    new-instance v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;

    invoke-direct {v5, v4}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$1;)V

    .line 50
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->variableName:Ljava/lang/String;

    .line 51
    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->getVariableValue(Lcom/codemao/creativestore/bean/VariableVO;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->value:Ljava/lang/String;

    .line 52
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 54
    :cond_61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/VariableVO;

    .line 57
    new-instance v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;

    invoke-direct {v5, v4}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$1;)V

    .line 58
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->variableName:Ljava/lang/String;

    .line 59
    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->getVariableValue(Lcom/codemao/creativestore/bean/VariableVO;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->value:Ljava/lang/String;

    .line 60
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/VariableVO;->getEntity_name()Ljava/lang/String;

    move-result-object v3

    .line 61
    iput-object v3, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->roleName:Ljava/lang/String;

    .line 62
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9b

    .line 63
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_9b
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 67
    :cond_a5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_ad

    const/4 v4, 0x0

    .line 70
    :goto_c2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_ad

    .line 71
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;

    if-nez v4, :cond_d3

    const/4 v6, 0x1

    .line 73
    iput-boolean v6, v5, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->hasTitle:Z

    .line 75
    :cond_d3
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    .line 79
    :cond_d9
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 23
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;I)V
    .registers 6

    .line 116
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->viewModels:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;

    .line 117
    iget-boolean v0, p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->hasTitle:Z

    if-eqz v0, :cond_1a

    .line 118
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 121
    :cond_1a
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;->tvRoleName:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    :goto_21
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->variableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$ViewModel;->value:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;
    .registers 5

    .line 110
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_debug_variable:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 111
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/adpater/CreateDebugVariableAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
