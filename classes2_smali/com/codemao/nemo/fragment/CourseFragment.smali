.class public Lcom/codemao/nemo/fragment/CourseFragment;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "CourseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private banner:Lcom/youth/banner/Banner;

.field private banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BannerData;",
            ">;"
        }
    .end annotation
.end field

.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

.field private header:Landroid/view/View;

.field private isLargePad:Z

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2EJoRbfoewLiv-uancUCcLdpUQM(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/CourseFragment;->lambda$setNBannerData$2(Ljava/util/List;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CI5n8WoXQmZXMVcUTLYi1BOqtPo(Lcom/codemao/nemo/fragment/CourseFragment;)Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->lambda$initFooterView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lGRZ2uv38NQEnSJlAorbDN6QSYo(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseItem;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->lambda$getSubjectViewModels$1(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseItem;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/CourseFragment;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/fragment/CourseFragment;Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Lcom/codemao/nemo/bean/CourseV2ResponseModel;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->courseV2ResponseModel:Lcom/codemao/nemo/bean/CourseV2ResponseModel;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/CourseFragment;)Z
    .registers 1

    .line 70
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->hasHead()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/CourseFragment;)Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    return p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/CourseFragment;Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Ljava/util/List;
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->getSubjectViewModels(Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->setListData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;)V
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment;->setNBannerData(Ljava/util/List;)V

    return-void
.end method

.method private getBanner()V
    .registers 4

    .line 427
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 428
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    const/4 v1, 0x3

    new-instance v2, Lcom/codemao/nemo/fragment/CourseFragment$5;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/CourseFragment$5;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getRecommendBanner(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getCourseData()V
    .registers 5

    .line 278
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/CourseService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/CourseService;

    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    const/16 v2, 0x32

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/codemao/nemo/retrofit/api/CourseService;->getCoursesList(III)Lio/reactivex/Observable;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 280
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 281
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CourseFragment$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CourseFragment$4;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;)V

    .line 282
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getHeadCount()I
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 451
    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/CourseFragment;
    .registers 1

    .line 84
    new-instance v0, Lcom/codemao/nemo/fragment/CourseFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/CourseFragment;-><init>()V

    return-object v0
.end method

.method private getSubjectViewModels(Lcom/codemao/nemo/bean/CourseV2ResponseModel;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/bean/CourseV2ResponseModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 323
    :cond_8
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseModel;->getItems()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_13

    .line 325
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :cond_13
    sget-object v1, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda2;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 335
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseV2ResponseItem;

    .line 336
    sget-object v2, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->Companion:Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;

    invoke-virtual {v2, v1}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel$Companion;->generateSubjectViewModel(Lcom/codemao/nemo/bean/CourseV2ResponseItem;)Ljava/util/List;

    move-result-object v1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    :cond_32
    return-object v0
.end method

.method private hasHead()Z
    .registers 2

    .line 460
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getHeadCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private hideErrorToast()V
    .registers 3

    .line 491
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 492
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$getSubjectViewModels$1(Lcom/codemao/nemo/bean/CourseV2ResponseItem;Lcom/codemao/nemo/bean/CourseV2ResponseItem;)I
    .registers 3

    .line 328
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPackage_type()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    const/4 p0, -0x1

    return p0

    .line 330
    :cond_9
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/CourseV2ResponseItem;->getPackage_type()I

    move-result p0

    if-ne p0, v0, :cond_10

    return v0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initFooterView$0()Lcom/codemao/nemo/view/footer/LoadMoreFooterInterface;
    .registers 4

    .line 115
    new-instance v0, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v2

    if-eqz v2, :cond_17

    const v2, 0x7f070244

    goto :goto_1a

    :cond_17
    const v2, 0x7f07025b

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/footer/LoadMoreFooterV2;->setContentLayoutParams(I)V

    return-object v0
.end method

.method private synthetic lambda$setNBannerData$2(Ljava/util/List;Ljava/lang/Object;I)V
    .registers 8

    .line 410
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BannerData;->getTarget_url()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    add-int/2addr p3, v2

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v2

    const-string v1, "教程页-点击banner"

    invoke-static {v1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setBannerUrl(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setBannerRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "www"

    .line 413
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 414
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nemo://com.codemao.nemo/openwith?type=5&url=http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_7f

    :cond_66
    const-string p2, "http"

    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 416
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nemo://com.codemao.nemo/openwith?type=5&url="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 418
    :cond_7f
    :goto_7f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 419
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2, v0, v0}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    return-void
.end method

.method private setListData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;",
            ">;)V"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 345
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 346
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 347
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private setNBannerData(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/BannerData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_e8

    .line 371
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_e8

    .line 380
    :cond_b
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 381
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 383
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 384
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/BannerData;->getPreview_url()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 386
    :cond_32
    iget-object v3, p0, Lcom/codemao/nemo/fragment/CourseFragment;->header:Landroid/view/View;

    if-nez v3, :cond_55

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0180

    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->header:Landroid/view/View;

    const v3, 0x7f0a0091

    .line 389
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    .line 391
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CourseFragment;->header:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    .line 394
    :cond_55
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    if-eqz v0, :cond_5d

    const v0, 0x3f19999a  # 0.6f

    goto :goto_60

    :cond_5d
    const v0, 0x3f666666  # 0.9f

    :goto_60
    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v0, v3, v0

    .line 395
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    if-eqz v0, :cond_72

    const/high16 v0, 0x41a00000  # 20.0f

    goto :goto_74

    :cond_72
    const/high16 v0, 0x41200000  # 10.0f

    :goto_74
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v4, v0

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    mul-double v4, v4, v6

    double-to-int v0, v4

    .line 396
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->px2dp(F)I

    move-result v0

    .line 397
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x14

    const/4 v6, 0x1

    if-gt v4, v6, :cond_9a

    .line 398
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    if-eqz v4, :cond_9a

    const/16 v0, 0x14

    .line 400
    :cond_9a
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    if-eqz v4, :cond_9f

    goto :goto_a1

    :cond_9f
    const/16 v5, 0xa

    :goto_a1
    if-eqz v4, :cond_aa

    .line 401
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_aa

    const/4 v5, 0x0

    .line 404
    :cond_aa
    iget-object v4, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v4, v0, v5, v3}, Lcom/youth/banner/Banner;->setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;

    .line 406
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v3, Lcom/codemao/nemo/adapter/CustomBannerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/codemao/nemo/adapter/CustomBannerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 407
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c7

    const/16 v2, 0x8

    :cond_c7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 409
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 422
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 423
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 372
    :cond_e8
    :goto_e8
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->header:Landroid/view/View;

    if-eqz p1, :cond_fa

    .line 373
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 374
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    .line 375
    iput-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->header:Landroid/view/View;

    .line 376
    iput-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banner:Lcom/youth/banner/Banner;

    :cond_fa
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 96
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/CourseFragment;->isLargePad:Z

    if-eqz v0, :cond_c

    const v0, 0x7f0d0148

    goto :goto_f

    :cond_c
    const v0, 0x7f0d0147

    :goto_f
    return v0
.end method

.method public courseDotChange(Lcom/codemao/nemo/event/CourseDotChangeEvent;)V
    .registers 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 166
    invoke-virtual {p1}, Lcom/codemao/nemo/event/CourseDotChangeEvent;->getPackageId()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-nez v4, :cond_4f

    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 171
    instance-of v6, v4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    if-eqz v6, :cond_3f

    .line 172
    check-cast v4, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;

    .line 173
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/viewmodel/CourseV2ViewModel;->getPackageId()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/codemao/nemo/event/CourseDotChangeEvent;->getPackageId()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-nez v4, :cond_3f

    .line 175
    sget-object p1, Lcom/codemao/nemo/beginner/BeginnerModeManager;->INSTANCE:Lcom/codemao/nemo/beginner/BeginnerModeManager;

    invoke-virtual {p1}, Lcom/codemao/nemo/beginner/BeginnerModeManager;->checkShowPop()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 176
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/codemao/nemo/util/SprefUtil;->putCurUserHasShowDot(Ljava/lang/String;Z)V

    goto :goto_43

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_42
    const/4 v0, -0x1

    :cond_43
    :goto_43
    if-eq v0, v5, :cond_4f

    .line 184
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getHeadCount()I

    move-result p1

    add-int/2addr v0, p1

    .line 185
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_4f
    return-void
.end method

.method protected getData()V
    .registers 2

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 193
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->hideErrorToast()V

    .line 194
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getBanner()V

    .line 195
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getCourseData()V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "教程页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 5

    .line 126
    new-instance v0, Lcom/codemao/nemo/fragment/CourseFragment$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/CourseFragment$1;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;)V

    .line 159
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/delegates/CourseV2TopDelegate;-><init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 160
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;

    invoke-direct {v2, v0}, Lcom/codemao/nemo/delegates/CourseV2SmallDelegate;-><init>(Lcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 161
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v2, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/codemao/nemo/delegates/CourseV2ListDelegate;-><init>(ZLcom/codemao/nemo/delegates/OnSubjectModelClickListener;)V

    invoke-virtual {v1, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initFooterView()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CourseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setFootView(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$FooterViewBuilder;)V

    return-void
.end method

.method protected initLayoutManager()V
    .registers 10

    .line 202
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initLayoutManager()V

    .line 207
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 208
    new-instance v1, Lcom/codemao/nemo/fragment/CourseFragment$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CourseFragment$2;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 214
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_21

    return-void

    .line 219
    :cond_21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41000000  # 8.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v4

    .line 220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000  # 10.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v6

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41600000  # 14.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v8

    .line 222
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000  # 20.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v5

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000  # 30.0f

    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v7

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v1, Lcom/codemao/nemo/fragment/CourseFragment$3;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/codemao/nemo/fragment/CourseFragment$3;-><init>(Lcom/codemao/nemo/fragment/CourseFragment;IIIII)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 102
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->banners:Ljava/util/List;

    return-void
.end method

.method public onEvent(Lcom/codemao/nemo/event/UpdatePublicCoursesProgressEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 497
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-lez p1, :cond_1e

    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/nemo/adapter/CourseGuideTypeModel;

    if-nez p1, :cond_14

    goto :goto_1e

    .line 498
    :cond_14
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/adapter/CourseGuideTypeModel;

    const/4 p1, 0x0

    .line 499
    throw p1

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onFragmentVisible()V
    .registers 1

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 507
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 511
    :goto_6
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_50

    .line 512
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/codemao/nemo/bean/HorCommonInfo;

    if-nez v4, :cond_1a

    goto :goto_4d

    .line 515
    :cond_1a
    iget-object v4, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/HorCommonInfo;

    .line 516
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    .line 517
    :goto_29
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4d

    .line 518
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/CourseWorkInfo;

    invoke-virtual {v6}, Lcom/codemao/nemo/bean/CourseWorkInfo;->getWork_id()J

    move-result-wide v6

    cmp-long v8, v0, v6

    if-nez v8, :cond_4a

    goto :goto_51

    :cond_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_50
    const/4 v3, -0x1

    :goto_51
    if-gez v3, :cond_54

    return-void

    .line 529
    :cond_54
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    if-nez v0, :cond_5f

    return-void

    .line 532
    :cond_5f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/CourseWorkInfo;

    if-nez v0, :cond_76

    return-void

    .line 536
    :cond_76
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a0

    .line 537
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/CourseWorkInfo;->setName(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/CourseWorkInfo;->setPreview(Ljava/lang/String;)V

    .line 541
    :try_start_8f
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 542
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a0} :catch_a0

    :catch_a0
    :cond_a0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 108
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CourseFragment;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setLineViewBgColor(I)V

    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 465
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 466
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 9

    .line 557
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getHeadCount()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_5
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->getHeadCount()I

    move-result v0

    sub-int v0, p2, v0

    if-gt p1, v0, :cond_60

    if-ltz p1, :cond_5d

    .line 558
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1a

    goto :goto_5d

    .line 561
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    if-eqz v0, :cond_5d

    .line 562
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/HorCommonInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/HorCommonInfo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 563
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/CourseWorkInfo;

    .line 564
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/CourseWorkInfo;->getWork_id()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_5d
    :goto_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 568
    :cond_60
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 476
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 477
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 478
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 480
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/CourseFragment;->showErrorToast()V

    return-void
.end method
