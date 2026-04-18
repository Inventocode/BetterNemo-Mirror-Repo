.class public Lcom/codemao/nemo/activity/CourseActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "CourseActivity.java"


# instance fields
.field private coursePackageData:Lcom/codemao/nemo/bean/CoursePackageData;

.field private courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

.field private courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

.field private isLargePad:Z

.field ivBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private localcourseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

.field private mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCourses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLoadView:Lcom/codemao/nemo/view/LoadView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mRecycler:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private packageId:J

.field private responseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 75
    iput-wide v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->coursePackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/activity/CourseActivity;Lcom/codemao/nemo/bean/CoursePackageData;)Lcom/codemao/nemo/bean/CoursePackageData;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity;->coursePackageData:Lcom/codemao/nemo/bean/CoursePackageData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/CourseActivity;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/CourseActivity;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/CourseActivity;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->initData()V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseItem;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    return-object p0
.end method

.method static synthetic access$602(Lcom/codemao/nemo/activity/CourseActivity;J)J
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->localcourseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/activity/CourseActivity;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object p0
.end method

.method private doNetCourses()V
    .registers 9

    .line 387
    const-class v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    if-eqz v1, :cond_21

    .line 388
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getCourse_page()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 395
    :cond_21
    iget-wide v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    const-wide/16 v3, 0x0

    const/16 v5, 0x32

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_4b

    .line 396
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-interface {v0, v6, v5}, Lcom/codemao/nemo/retrofit/api/CourseService;->getPublicCourses(II)Lio/reactivex/Observable;

    move-result-object v0

    .line 397
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 398
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_6b

    .line 400
    :cond_4b
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    invoke-interface {v0, v1, v2, v6, v5}, Lcom/codemao/nemo/retrofit/api/CourseService;->getCourseDetail(JII)Lio/reactivex/Observable;

    move-result-object v0

    .line 401
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 404
    :goto_6b
    new-instance v1, Lcom/codemao/nemo/activity/CourseActivity$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/CourseActivity$10;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private init()V
    .registers 13

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "model"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_e3

    .line 151
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    if-eqz v0, :cond_e3

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e3

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e3

    const/4 v0, 0x0

    .line 152
    :goto_3a
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 153
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_5d

    goto :goto_61

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_60
    const/4 v0, -0x1

    :goto_61
    if-ltz v0, :cond_e3

    .line 159
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v1, -0x1

    if-le v3, v4, :cond_74

    sub-int/2addr v3, v1

    :cond_74
    add-int/lit8 v5, v0, 0x2

    if-le v5, v4, :cond_79

    sub-int/2addr v5, v1

    .line 162
    :cond_79
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-le v3, v4, :cond_81

    move v3, v4

    :cond_81
    if-le v5, v4, :cond_84

    goto :goto_85

    :cond_84
    move v4, v5

    .line 169
    :goto_85
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    iget-object v3, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getCounted()Z

    move-result v7

    iget-object v3, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getLimit()I

    move-result v9

    iget-object v3, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getOffset()I

    move-result v10

    iget-object v3, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getTotal()I

    move-result v11

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;-><init>(ZLjava/util/List;III)V

    iput-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->localcourseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    .line 172
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    iput-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->responseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 173
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    if-eqz v1, :cond_da

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPad_banner_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_de

    :cond_da
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getBanner_url()Ljava/lang/String;

    move-result-object v0

    :goto_de
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->ivBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 176
    :cond_e3
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 177
    new-instance v1, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

    new-instance v3, Lcom/codemao/nemo/activity/CourseActivity$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/CourseActivity$1;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-direct {v1, p0, v3}, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/listener/OnItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 187
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;

    new-instance v3, Lcom/codemao/nemo/activity/CourseActivity$2;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/CourseActivity$2;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-direct {v1, p0, v3}, Lcom/codemao/nemo/delegates/CourseListBottomDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 211
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10f

    const/4 v0, 0x2

    goto :goto_110

    :cond_10f
    const/4 v0, 0x1

    .line 212
    :goto_110
    new-instance v3, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-direct {v3, p0, v0}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 213
    new-instance v4, Lcom/codemao/nemo/activity/CourseActivity$3;

    invoke-direct {v4, p0, v0}, Lcom/codemao/nemo/activity/CourseActivity$3;-><init>(Lcom/codemao/nemo/activity/CourseActivity;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 230
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/codemao/nemo/activity/CourseActivity$4;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/CourseActivity$4;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 273
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v3, Lcom/codemao/nemo/activity/CourseActivity$5;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/CourseActivity$5;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    new-array v1, v1, [I

    const v4, 0x7f0a0222

    aput v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method private initData()V
    .registers 2

    .line 377
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showLoading()V

    .line 379
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->doNetCourses()V

    goto :goto_14

    .line 381
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :goto_14
    return-void
.end method

.method private initTemp()V
    .registers 6

    .line 283
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPad_banner_url()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getBanner_url()Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->ivBg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 284
    new-instance v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    iget-object v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->mCourses:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 285
    new-instance v1, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;

    new-instance v2, Lcom/codemao/nemo/activity/CourseActivity$6;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CourseActivity$6;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/codemao/nemo/delegates/CourseItemDelegateV2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/listener/OnItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 305
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    const/4 v0, 0x2

    goto :goto_34

    :cond_33
    const/4 v0, 0x1

    .line 306
    :goto_34
    new-instance v2, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 307
    new-instance v3, Lcom/codemao/nemo/activity/CourseActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/codemao/nemo/activity/CourseActivity$7;-><init>(Lcom/codemao/nemo/activity/CourseActivity;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/codemao/nemo/activity/CourseActivity$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CourseActivity$8;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 365
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mRecycler:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/codemao/nemo/activity/CourseActivity;->mAdapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 367
    iget-object v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    new-instance v2, Lcom/codemao/nemo/activity/CourseActivity$9;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/CourseActivity$9;-><init>(Lcom/codemao/nemo/activity/CourseActivity;)V

    new-array v1, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f0a0222

    aput v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/codemao/nemo/view/LoadView;->setOnClickListener(Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method private offsetBackImage()V
    .registers 5

    const v0, 0x7f0a048c

    .line 141
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/giu/xzz/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;J)V
    .registers 5

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "packageId"

    .line 108
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseModel;J)V
    .registers 6

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "packageId"

    .line 90
    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "model"

    .line 91
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startActivityNewUserTeach(Landroid/content/Context;Lcom/codemao/nemo/bean/CourseV2ResponseItem;)V
    .registers 4

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "item"

    .line 97
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPublishActivity(Landroid/content/Context;)V
    .registers 3

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/CourseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 114
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0040

    goto :goto_f

    :cond_c
    const v0, 0x7f0d003d

    :goto_f
    return v0
.end method

.method public getViewExtraInfo()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 472
    iget-wide v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1b

    .line 473
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-wide v1, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "课程页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    .line 447
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a048c

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 465
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/CourseActivity;->onBackPressed()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 126
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->offsetBackImage()V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    iput-object p1, p0, Lcom/codemao/nemo/activity/CourseActivity;->courseV2ResponseItem:Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    if-eqz p1, :cond_20

    .line 130
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/activity/CourseActivity;->packageId:J

    .line 131
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->initTemp()V

    goto :goto_23

    .line 133
    :cond_20
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->init()V

    .line 136
    :goto_23
    invoke-direct {p0}, Lcom/codemao/nemo/activity/CourseActivity;->initData()V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 452
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
