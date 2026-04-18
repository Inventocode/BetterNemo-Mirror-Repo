.class public Lcom/codemao/nemo/activity/ReworkHistoryActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "ReworkHistoryActivity.java"


# instance fields
.field private adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

.field barLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field clHistory:Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private count:I

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

.field ivFirst:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mAllDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;"
        }
    .end annotation
.end field

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/ReworkHistoryVO;",
            ">;"
        }
    .end annotation
.end field

.field private reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

.field rvRework:Lcom/codemao/nemo/view/ReworkRecycleView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFirstName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvFirstTime:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvStar:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewClose:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field viewOpen:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    return-void
.end method

.method static synthetic access$008(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)I
    .registers 3

    .line 36
    iget v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    return v0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->handData()V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)Ljava/util/List;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/codemao/nemo/activity/ReworkHistoryActivity;Lcom/codemao/nemo/bean/ReworkHistoryVO;)Lcom/codemao/nemo/bean/ReworkHistoryVO;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    return-object p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->setFirst()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->initList()V

    return-void
.end method

.method private handData()V
    .registers 10

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    const/16 v3, 0xa

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v0, v2, :cond_5b

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x4

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 195
    :goto_27
    iget-object v6, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_49

    if-le v2, v5, :cond_46

    if-lez v0, :cond_46

    .line 197
    iget-object v6, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    add-int/lit8 v7, v3, 0x2

    iget-object v8, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v3, 0x1

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 202
    :cond_49
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->setMoreCount(I)V

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    goto :goto_be

    :cond_5b
    const/4 v0, 0x0

    .line 206
    :goto_5c
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_97

    .line 207
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    iget v6, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    mul-int/lit8 v6, v6, 0xa

    sub-int/2addr v2, v6

    if-le v4, v2, :cond_94

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v6, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->count:I

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x5

    sub-int/2addr v2, v6

    if-ge v4, v2, :cond_94

    .line 208
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    add-int/lit8 v6, v0, 0x2

    iget-object v7, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :cond_94
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 212
    :cond_97
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->setMoreCount(I)V

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    new-instance v2, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-direct {v2}, Lcom/codemao/nemo/bean/ReworkHistoryVO;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_be
    return-void
.end method

.method private init()V
    .registers 6

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "work_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_13

    .line 93
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    .line 96
    :cond_13
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->barLayout:Lcom/google/android/material/appbar/AppBarLayout;

    new-instance v3, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity$1;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    .line 122
    new-instance v3, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {v3, p0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 123
    new-instance v2, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    new-instance v3, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity$2;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;-><init>(Landroid/app/Activity;Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate$ReworkCallBack;)V

    iput-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    .line 137
    iget-object v3, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v3, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 139
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->rvRework:Lcom/codemao/nemo/view/ReworkRecycleView;

    new-instance v3, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/view/WrapLinearLayoutmanager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 140
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->rvRework:Lcom/codemao/nemo/view/ReworkRecycleView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 141
    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v3, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity$3;-><init>(Lcom/codemao/nemo/activity/ReworkHistoryActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->getReworkHistory(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private initList()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ge v0, v2, :cond_21

    .line 171
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->setMoreCount(I)V

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_67

    .line 177
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v1, v0, :cond_46

    if-lt v1, v2, :cond_36

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    if-le v1, v0, :cond_43

    .line 179
    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 182
    :cond_46
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->reworkHistoryItemDelegate:Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;

    iget-object v1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mAllDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/delegates/ReworkHistoryItemDelegate;->setMoreCount(I)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->mDatas:Ljava/util/List;

    new-instance v1, Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;-><init>()V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_67
    return-void
.end method

.method private setFirst()V
    .registers 8

    .line 163
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvFirstName:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getWork_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvFirstTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getCreated_time()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-static {v3, v4}, Lcom/giu/xzz/utils/DateFormats;->formatYmd(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->tvStar:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getFork_times()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v2, 0x7f0e0062

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    const v2, 0x7f0e0061

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->ivFirst:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0057

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "再创作历史页"

    return-object v0
.end method

.method onClickClose(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 246
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method onClickCover(Landroid/view/View;)V
    .registers 9
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    if-eqz p1, :cond_2e

    .line 230
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getUser_id()J

    move-result-wide v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getId()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "再创作历史"

    const-string v6, ""

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method onClickDetail(Landroid/view/View;)V
    .registers 8
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 238
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->firstReworkHistoryVO:Lcom/codemao/nemo/bean/ReworkHistoryVO;

    if-eqz p1, :cond_13

    .line 239
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/ReworkHistoryVO;->getId()J

    move-result-wide v1

    const-string v3, ""

    const-string/jumbo v4, "再创作历史"

    const-string v5, ""

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method onClickOpen(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 80
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object p1, p0, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->clHistory:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getStatusHeight()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 82
    invoke-direct {p0}, Lcom/codemao/nemo/activity/ReworkHistoryActivity;->init()V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
