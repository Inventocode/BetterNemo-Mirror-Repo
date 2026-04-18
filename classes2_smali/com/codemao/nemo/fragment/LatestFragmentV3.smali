.class public Lcom/codemao/nemo/fragment/LatestFragmentV3;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "LatestFragmentV3.java"

# interfaces
.implements Lcom/codemao/nemo/view/divider/LatestItemListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Lcom/codemao/nemo/bean/LatestWorkInfo;",
        ">;",
        "Lcom/codemao/nemo/view/divider/LatestItemListener;"
    }
.end annotation


# instance fields
.field private clickTime:J

.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private latestOtherWorkDelegate:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

.field private lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSpanNum:I

.field private moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

.field private needToScrollToTop:Z

.field private reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->clickTime:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->needToScrollToTop:Z

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->mSpanNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/LatestFragmentV3;)I
    .registers 1

    .line 42
    iget p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->mSpanNum:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Z
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->isTooShortToClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->setListData(Lcom/codemao/nemo/bean/LatestWorks;)V

    return-void
.end method

.method static synthetic access$302(Lcom/codemao/nemo/fragment/LatestFragmentV3;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->needToScrollToTop:Z

    return p1
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p0
.end method

.method static synthetic access$402(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorkInfo;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/LatestFragmentV3;ZIII)V
    .registers 5

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->optionData(ZIII)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p0
.end method

.method static synthetic access$602(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorkInfo;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p1
.end method

.method static synthetic access$700(Lcom/codemao/nemo/fragment/LatestFragmentV3;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p0
.end method

.method static synthetic access$702(Lcom/codemao/nemo/fragment/LatestFragmentV3;Lcom/codemao/nemo/bean/LatestWorkInfo;)Lcom/codemao/nemo/bean/LatestWorkInfo;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/LatestFragmentV3;
    .registers 1

    .line 66
    new-instance v0, Lcom/codemao/nemo/fragment/LatestFragmentV3;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;-><init>()V

    return-object v0
.end method

.method private getLessonList()V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/LatestFragmentV3$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$7;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getModuleList()V
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$6;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getReworkList()V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    new-instance v1, Lcom/codemao/nemo/fragment/LatestFragmentV3$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$5;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v2, v3, v1}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private hideErrorToast()V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 532
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private isTooShortToClick()Z
    .registers 7

    .line 491
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->clickTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_10

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->clickTime:J

    return v2

    .line 495
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->clickTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-ltz v5, :cond_24

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->clickTime:J

    return v2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private declared-synchronized optionData(ZIII)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p4

    monitor-enter p0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 245
    :goto_d
    :try_start_d
    iget-object v9, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v5, v9, :cond_4a

    .line 246
    iget-object v9, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v9}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherType()I

    move-result v9

    if-nez v9, :cond_27

    move v2, v5

    const/4 v6, 0x1

    .line 251
    :cond_27
    iget-object v9, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v9}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherType()I

    move-result v9

    if-ne v9, v11, :cond_37

    move v3, v5

    const/4 v7, 0x1

    .line 255
    :cond_37
    iget-object v9, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v9}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherType()I

    move-result v9

    if-ne v9, v10, :cond_47

    move v4, v5

    const/4 v8, 0x1

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_4a
    const/16 v5, 0x19

    const/16 v9, 0x18

    const/16 v12, 0x11

    const/16 v13, 0x10

    const/16 v14, 0x8

    if-eqz p1, :cond_bd

    .line 261
    iget-boolean v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    if-eqz v0, :cond_a3

    .line 263
    iget-object v0, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v0, :cond_78

    if-nez v7, :cond_78

    if-eqz v6, :cond_63

    goto :goto_65

    :cond_63
    const/16 v12, 0x10

    .line 268
    :goto_65
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v12, :cond_78

    add-int/lit8 v0, p3, 0x1

    .line 271
    iget-object v2, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v3, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v2, v12, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    const/4 v7, 0x1

    goto :goto_7a

    :cond_78
    move/from16 v0, p3

    .line 274
    :goto_7a
    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v2, :cond_9a

    if-nez v8, :cond_9a

    if-eqz v6, :cond_83

    goto :goto_85

    :cond_83
    const/16 v5, 0x18

    :goto_85
    if-eqz v7, :cond_89

    add-int/lit8 v5, v5, 0x1

    .line 282
    :cond_89
    iget-object v2, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v2, v5, :cond_9a

    add-int/lit8 v0, v0, 0x1

    .line 284
    iget-object v2, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v3, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v2, v5, v3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 287
    :cond_9a
    iget-object v2, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move/from16 v3, p2

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto/16 :goto_147

    .line 289
    :cond_a3
    iget-object v0, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v0, :cond_b6

    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v14, :cond_b6

    .line 290
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v14, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 292
    :cond_b6
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_147

    .line 295
    :cond_bd
    iget-object v15, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15
    :try_end_c3
    .catchall {:try_start_d .. :try_end_c3} :catchall_149

    if-gtz v15, :cond_c7

    .line 296
    monitor-exit p0

    return-void

    :cond_c7
    if-nez v0, :cond_ee

    if-eqz v6, :cond_d9

    .line 301
    :try_start_cb
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v3, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_147

    .line 303
    :cond_d9
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v14, :cond_147

    .line 304
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v14, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 305
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_147

    :cond_ee
    if-ne v0, v11, :cond_119

    if-eqz v7, :cond_ff

    .line 309
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v3, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_147

    :cond_ff
    if-eqz v6, :cond_102

    goto :goto_104

    :cond_102
    const/16 v12, 0x10

    .line 316
    :goto_104
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v12, :cond_147

    .line 317
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v12, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 318
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v12}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_147

    :cond_119
    if-ne v0, v10, :cond_147

    if-eqz v8, :cond_12a

    .line 323
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v4, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_147

    :cond_12a
    if-eqz v6, :cond_12d

    goto :goto_12f

    :cond_12d
    const/16 v5, 0x18

    :goto_12f
    if-eqz v7, :cond_133

    add-int/lit8 v5, v5, 0x1

    .line 333
    :cond_133
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v0, v5, :cond_147

    .line 334
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0, v5, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 335
    iget-object v0, v1, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_147
    .catchall {:try_start_cb .. :try_end_147} :catchall_149

    .line 342
    :cond_147
    :goto_147
    monitor-exit p0

    return-void

    :catchall_149
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setListData(Lcom/codemao/nemo/bean/LatestWorks;)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_1c

    .line 191
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 192
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_16

    .line 193
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_1b

    .line 195
    :cond_16
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_1b
    return-void

    .line 199
    :cond_1c
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_91

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2e

    goto :goto_91

    .line 209
    :cond_2e
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    .line 212
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v3, :cond_41

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 215
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    const/4 v1, 0x0

    .line 217
    :cond_41
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 218
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 219
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->optionData(ZIII)V

    .line 220
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 221
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LatestWorks;->getTotal()I

    move-result p1

    if-ge v1, p1, :cond_70

    const/4 p1, 0x1

    goto :goto_71

    :cond_70
    const/4 p1, 0x0

    :goto_71
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    if-nez p1, :cond_7b

    .line 223
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_80

    .line 225
    :cond_7b
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 227
    :goto_80
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->needToScrollToTop:Z

    if-eqz p1, :cond_90

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/LatestFragmentV3$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$4;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_90
    return-void

    .line 200
    :cond_91
    :goto_91
    iput-boolean v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    .line 201
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 202
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_a6

    .line 203
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_ab

    .line 205
    :cond_a6
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_ab
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d014f

    return v0
.end method

.method protected getData()V
    .registers 6

    .line 139
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_d

    .line 140
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->getReworkList()V

    .line 141
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->getLessonList()V

    .line 142
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->getModuleList()V

    :cond_d
    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 145
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->hideErrorToast()V

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    const/4 v1, -0x1

    iget v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    const/16 v3, 0xf

    new-instance v4, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$3;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getLatestWorks(IIILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "最新页"

    return-object v0
.end method

.method public hasModuleInfo()Z
    .registers 2

    .line 567
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasOtherNum()I
    .registers 3

    .line 548
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 551
    :goto_7
    iget-object v1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->moduleInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 554
    :cond_d
    iget-object v1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->lessonInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    :cond_13
    return v0
.end method

.method public hasReworkInfo()Z
    .registers 2

    .line 562
    iget-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->reworkInfo:Lcom/codemao/nemo/bean/LatestWorkInfo;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method protected initDelegate()V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/LatestWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$2;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/adapter/LatestWorkDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/LatestWorkDelegate$RecommendWorkCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 133
    new-instance v0, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->latestOtherWorkDelegate:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    .line 134
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initRecyclerView()V
    .registers 6

    .line 89
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initRecyclerView()V

    .line 90
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 91
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v2, Lcom/codemao/nemo/view/divider/LatestItemDivider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-direct {v2, v3, v4, p0}, Lcom/codemao/nemo/view/divider/LatestItemDivider;-><init>(Landroid/content/Context;Ljava/util/Vector;Lcom/codemao/nemo/view/divider/LatestItemListener;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 95
    new-instance v1, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3$1;-><init>(Lcom/codemao/nemo/fragment/LatestFragmentV3;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 72
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    iput v0, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->mSpanNum:I

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/giu/xzz/LazyLoadFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onFragmentVisible()V
    .registers 1

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 427
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 431
    :goto_6
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_4a

    .line 432
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 433
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-nez v8, :cond_20

    goto :goto_4b

    .line 437
    :cond_20
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_47

    const/4 v6, 0x0

    .line 438
    :goto_27
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_47

    .line 439
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/nemo/bean/LatestWorkInfo;

    .line 440
    invoke-virtual {v7}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v7

    cmp-long v9, v7, v0

    if-nez v9, :cond_44

    goto :goto_4c

    :cond_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_4a
    const/4 v3, -0x1

    :goto_4b
    const/4 v6, -0x1

    :goto_4c
    if-gez v3, :cond_4f

    return-void

    :cond_4f
    if-gez v6, :cond_5a

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    goto :goto_6c

    .line 457
    :cond_5a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    :goto_6c
    if-nez v0, :cond_6f

    return-void

    .line 462
    :cond_6f
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_a0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8d

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7d

    goto :goto_a7

    .line 472
    :cond_7d
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result p1

    .line 473
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getLike_count()I

    move-result v1

    if-eqz p1, :cond_88

    const/4 v5, 0x1

    :cond_88
    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setLike_count(I)V

    goto :goto_a7

    .line 467
    :cond_8d
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 468
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setPreview(Ljava/lang/String;)V

    goto :goto_a7

    .line 464
    :cond_a0
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/LatestWorkInfo;->setView_count(I)V

    :goto_a7
    if-lez v6, :cond_bb

    .line 478
    :try_start_a9
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 479
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ba} :catch_c0

    goto :goto_c0

    .line 485
    :cond_bb
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :catch_c0
    :goto_c0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 78
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setLineViewBgColor(I)V

    return-void
.end method

.method public scroll(II)V
    .registers 9

    :goto_0
    if-gt p1, p2, :cond_ae

    if-ltz p1, :cond_aa

    .line 625
    :try_start_4
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_10

    goto/16 :goto_aa

    .line 628
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 631
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_56

    const v2, 0x7f0a0128

    .line 633
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 634
    instance-of v2, v0, Lcom/codemao/nemo/view/CmHorLayout;

    if-eqz v2, :cond_44

    .line 635
    move-object v1, v0

    check-cast v1, Lcom/codemao/nemo/view/CmHorLayout;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayout;->getScrollStart()I

    move-result v1

    .line 636
    check-cast v0, Lcom/codemao/nemo/view/CmHorLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getScrollEnd()I

    move-result v0

    goto :goto_57

    .line 637
    :cond_44
    instance-of v2, v0, Lcom/codemao/nemo/view/LatestCmHorLayout;

    if-eqz v2, :cond_56

    .line 638
    move-object v1, v0

    check-cast v1, Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getScrollStart()I

    move-result v1

    .line 639
    check-cast v0, Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getScrollEnd()I

    move-result v0

    goto :goto_57

    :cond_56
    const/4 v0, -0x1

    .line 643
    :goto_57
    iget-object v2, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->latestOtherWorkDelegate:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-virtual {v2}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->getScrolledIds()Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    if-eqz v2, :cond_79

    .line 645
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getStart()I

    move-result v3

    .line 646
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getEnd()I

    move-result v2
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_71} :catch_ae

    if-ltz v1, :cond_75

    if-le v1, v3, :cond_76

    :cond_75
    move v1, v3

    :cond_76
    if-ge v0, v2, :cond_79

    move v0, v2

    :cond_79
    :goto_79
    if-gt v1, v0, :cond_aa

    .line 656
    :try_start_7b
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_a7} :catch_a7

    :catch_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_79

    :cond_aa
    :goto_aa
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :catch_ae
    :cond_ae
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 506
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 507
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 10

    :goto_0
    if-gt p1, p2, :cond_c8

    if-ltz p1, :cond_c4

    .line 578
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_10

    goto/16 :goto_c4

    .line 581
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_a4

    .line 584
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_52

    const v3, 0x7f0a0128

    .line 586
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 587
    instance-of v3, v0, Lcom/codemao/nemo/view/CmHorLayout;

    if-eqz v3, :cond_43

    .line 588
    check-cast v0, Lcom/codemao/nemo/view/CmHorLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getScrollStart()I

    move-result v2

    .line 589
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CmHorLayout;->getScrollEnd()I

    move-result v0

    goto :goto_53

    .line 590
    :cond_43
    instance-of v3, v0, Lcom/codemao/nemo/view/LatestCmHorLayout;

    if-eqz v3, :cond_52

    .line 591
    check-cast v0, Lcom/codemao/nemo/view/LatestCmHorLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getScrollStart()I

    move-result v2

    .line 592
    invoke-virtual {v0}, Lcom/codemao/nemo/view/LatestCmHorLayout;->getScrollEnd()I

    move-result v0

    goto :goto_53

    :cond_52
    const/4 v0, -0x1

    .line 595
    :goto_53
    iget-object v3, p0, Lcom/codemao/nemo/fragment/LatestFragmentV3;->latestOtherWorkDelegate:Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;

    invoke-virtual {v3}, Lcom/codemao/nemo/adapter/LatestOtherWorkDelegate;->getScrolledIds()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    if-eqz v3, :cond_75

    .line 597
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getStart()I

    move-result v4

    .line 598
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getEnd()I

    move-result v3

    if-ltz v2, :cond_71

    if-le v2, v4, :cond_72

    :cond_71
    move v2, v4

    :cond_72
    if-ge v0, v3, :cond_75

    move v0, v3

    :cond_75
    :goto_75
    if-gt v2, v0, :cond_c4

    .line 608
    :try_start_77
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getOtherWorkInfos()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_a1} :catch_a1

    :catch_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 614
    :cond_a4
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LatestWorkInfo;->getWork_id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c4
    :goto_c4
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 617
    :cond_c8
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 516
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 517
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 518
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 520
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/LatestFragmentV3;->showErrorToast()V

    return-void
.end method
