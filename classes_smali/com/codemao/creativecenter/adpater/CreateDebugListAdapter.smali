.class public Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateDebugListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCenter:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->isCenter:Z

    .line 28
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->datas:Ljava/util/List;

    return-void
.end method

.method private initSize(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;)V
    .registers 4

    .line 64
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_18

    .line 65
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->root:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->context:Landroid/content/Context;

    const/high16 v1, 0x42000000  # 32.0f

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_18
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 21
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;I)V
    .registers 6

    .line 46
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->initSize(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;)V

    .line 47
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_38

    .line 50
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->root:Landroid/widget/FrameLayout;

    const-string v0, "#39126B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_43

    .line 52
    :cond_38
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->root:Landroid/widget/FrameLayout;

    const-string v0, "#4B1B88"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 54
    :goto_43
    iget-boolean p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->isCenter:Z

    const/high16 v0, 0x42100000  # 36.0f

    const/4 v1, 0x0

    if-eqz p2, :cond_6b

    .line 55
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v2, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_8e

    .line 58
    :cond_6b
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x40e00000  # 7.0f

    invoke-static {p1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    invoke-virtual {p2, v0, v1, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_8e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;
    .registers 5

    .line 35
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_debug_list:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCenter(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;->isCenter:Z

    return-void
.end method
