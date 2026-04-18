.class public Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ThemeMaterialDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private isPad:Z

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialDetail;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 61
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->isPad:Z

    .line 36
    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->mDatas:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 37
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->isPad:Z

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 27
    check-cast p1, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;I)V
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/ThemeMaterialDetail;

    invoke-virtual {p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/ThemeMaterialDetail;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;
    .registers 6

    .line 43
    new-instance p2, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_adapter_theme_detail:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter$ViewHolder;-><init>(Lcom/codemao/creativecenter/theme/ThemeMaterialDetailAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemAdapterThemeDetailBinding;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
