.class public abstract Lcom/youth/banner/adapter/BannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BannerAdapter.java"

# interfaces
.implements Lcom/youth/banner/holder/IViewHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;",
        "Lcom/youth/banner/holder/IViewHolder<",
        "TT;TVH;>;"
    }
.end annotation


# instance fields
.field private increaseCount:I

.field protected mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mOnBannerListener:Lcom/youth/banner/listener/OnBannerListener;

.field private mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VoIxykV5fG69Ff1vwQXS08emVbk(Lcom/youth/banner/adapter/BannerAdapter;ILandroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/youth/banner/adapter/BannerAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    const/4 v0, 0x2

    .line 20
    iput v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->increaseCount:I

    .line 23
    invoke-virtual {p0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->setDatas(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .registers 4

    .line 43
    iget-object p2, p0, Lcom/youth/banner/adapter/BannerAdapter;->mOnBannerListener:Lcom/youth/banner/listener/OnBannerListener;

    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/youth/banner/listener/OnBannerListener;->OnBannerClick(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public getData(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 3

    .line 54
    invoke-virtual {p0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v0

    iget v1, p0, Lcom/youth/banner/adapter/BannerAdapter;->increaseCount:I

    add-int/2addr v0, v1

    goto :goto_13

    :cond_f
    invoke-virtual {p0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v0

    :goto_13
    return v0
.end method

.method public getRealCount()I
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getRealPosition(I)I
    .registers 4

    .line 62
    iget v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->increaseCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/youth/banner/util/BannerUtils;->getRealPosition(ZII)I

    move-result p1

    return p1
.end method

.method public getViewHolder()Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVH;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/youth/banner/adapter/BannerAdapter;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 40
    invoke-virtual {p0, p2}, Lcom/youth/banner/adapter/BannerAdapter;->getRealPosition(I)I

    move-result p2

    .line 41
    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/youth/banner/adapter/BannerAdapter;->getRealCount()I

    move-result v1

    invoke-interface {p0, p1, v0, p2, v1}, Lcom/youth/banner/holder/IViewHolder;->onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 42
    iget-object v0, p0, Lcom/youth/banner/adapter/BannerAdapter;->mOnBannerListener:Lcom/youth/banner/listener/OnBannerListener;

    if-eqz v0, :cond_21

    .line 43
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/youth/banner/adapter/BannerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 49
    invoke-interface {p0, p1, p2}, Lcom/youth/banner/holder/IViewHolder;->onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public setDatas(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    :cond_7
    iput-object p1, p0, Lcom/youth/banner/adapter/BannerAdapter;->mDatas:Ljava/util/List;

    return-void
.end method

.method public setIncreaseCount(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/youth/banner/adapter/BannerAdapter;->increaseCount:I

    return-void
.end method

.method public setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/youth/banner/adapter/BannerAdapter;->mOnBannerListener:Lcom/youth/banner/listener/OnBannerListener;

    return-void
.end method
