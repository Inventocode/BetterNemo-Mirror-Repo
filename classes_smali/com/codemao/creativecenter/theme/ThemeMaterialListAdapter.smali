.class public Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ThemeMaterialListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;,
        Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isPad:Z

.field private itemHeight:I

.field private listener:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ThemeMaterialListItem;",
            ">;",
            "Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/high16 v0, 0x41000000  # 8.0f

    .line 42
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->itemHeight:I

    .line 44
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    iput-boolean v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->isPad:Z

    .line 48
    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->mDatas:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 49
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 50
    iput-object p3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->listener:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    .line 51
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p2

    iget-boolean p3, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->isPad:Z

    if-eqz p3, :cond_2c

    const/high16 p3, 0x437a0000  # 250.0f

    goto :goto_2e

    :cond_2c
    const/high16 p3, 0x42960000  # 75.0f

    :goto_2e
    invoke-static {p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->itemHeight:I

    .line 52
    iput-object p1, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->isPad:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->itemHeight:I

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Landroid/content/Context;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->listener:Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$OnClickItemListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 35
    check-cast p1, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;I)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ThemeMaterialListItem;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;->bindData(Lcom/codemao/creativestore/bean/ThemeMaterialListItem;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;
    .registers 6

    .line 61
    new-instance p2, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;

    iget-object v0, p0, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_layout_item_theme_list:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter$ViewHolder;-><init>(Lcom/codemao/creativecenter/theme/ThemeMaterialListAdapter;Lcom/codemao/creativecenter/databinding/CreativeLayoutItemThemeListBinding;)V

    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 76
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
