.class public Lcom/codemao/nemo/fragment/RecommendFragmentV2;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "RecommendFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
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

.field private boxData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendBoxData;",
            ">;"
        }
    .end annotation
.end field

.field private clickTime:J

.field commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public courseItems:Lcom/codemao/nemo/bean/RecommendPageCourse;

.field private eventPop:Lcom/codemao/nemo/dialog/pop/RecommendEventPop;

.field private header:Landroid/view/View;

.field private isFirstOpenRecommend:Z

.field private isLargePad:Z

.field private lastRefreshTime:J

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mSpanNum:I

.field recommendWorkCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;


# direct methods
.method public static synthetic $r8$lambda$3CmH7CSmZopsvPkWVr6laeRwdNg(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lretrofit2/Response;Lretrofit2/Response;)Lretrofit2/Response;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lambda$getRecommendListData$0(Lretrofit2/Response;Lretrofit2/Response;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LxX_GQGkmGi0SDEuIxITC2q24eM(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V
    .registers 1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->startPullDownRefreshTipsAnimation()V

    return-void
.end method

.method public static synthetic $r8$lambda$UmrlRavFuJNhVkAUaXf5naKvmmI(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lambda$setNBannerData$3(Ljava/util/List;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjEo24aUcexZxcrRyjM3WX-_VYk(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lretrofit2/Response;)Lretrofit2/Response;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lambda$getRecommendListData$2(Lretrofit2/Response;)Lretrofit2/Response;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 153
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    const-wide/16 v0, -0x1

    .line 119
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lastRefreshTime:J

    .line 123
    iput-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->clickTime:J

    const/4 v0, 0x2

    .line 137
    iput v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->mSpanNum:I

    .line 300
    new-instance v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$3;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->recommendWorkCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)I
    .registers 1

    .line 118
    iget p0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->mSpanNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Landroid/widget/ImageView;Ljava/lang/String;J)V
    .registers 5

    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->toWorkDetailAct(Landroid/widget/ImageView;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->setListData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->setNBannerData(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V
    .registers 4

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->showHongbao(Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Lcom/codemao/nemo/bean/EventInfo;Z)V
    .registers 3

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->downLoadEventImage(Lcom/codemao/nemo/bean/EventInfo;Z)V

    return-void
.end method

.method private addWorkListViewModels(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;",
            ">;)V"
        }
    .end annotation

    .line 661
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_5c

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 663
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_1b

    .line 664
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_1b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_2a

    .line 667
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_2a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    if-lt v1, v3, :cond_3a

    .line 670
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_3a
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4a

    .line 673
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c4

    .line 676
    new-instance v1, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;-><init>(Ljava/util/List;)V

    .line 677
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_c4

    .line 682
    :cond_5c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_70

    .line 684
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_70
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v2, :cond_7f

    .line 687
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_7f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_90

    .line 690
    new-instance v4, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    invoke-direct {v4, v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;-><init>(Ljava/util/List;)V

    .line 691
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 696
    :cond_90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v3, :cond_a4

    .line 698
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_a4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v2, :cond_b3

    .line 701
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_b3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c4

    .line 704
    new-instance v1, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    invoke-direct {v1, v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;-><init>(Ljava/util/List;)V

    .line 705
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_c4
    :goto_c4
    return-void
.end method

.method private checkBackgroundColor(Ljava/lang/String;)I
    .registers 2

    .line 713
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    :catch_5
    const-string p1, "#00ffffff"

    .line 715
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private downLoadEventImage(Lcom/codemao/nemo/bean/EventInfo;Z)V
    .registers 10

    .line 1004
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1007
    :cond_7
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/EventInfo;->getPreview_url()Ljava/lang/String;

    move-result-object v3

    const-string v0, "."

    .line 1008
    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/giu/xzz/utils/MD5Util;->md5ForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/eventimage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1011
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_76

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/FileUtil;->deleteDirectory(Ljava/lang/String;)V

    .line 1014
    new-instance v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$10;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/nemo/bean/EventInfo;Z)V

    invoke-static {v0}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    goto :goto_79

    .line 1046
    :cond_76
    invoke-direct {p0, p1, v0, p2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->showHongbao(Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V

    :goto_79
    return-void
.end method

.method private getBanner()V
    .registers 4

    .line 840
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 843
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    const/4 v1, 0x1

    new-instance v2, Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$8;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getRecommendBanner(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getHeadCount()I
    .registers 3

    .line 871
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 873
    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/RecommendFragmentV2;
    .registers 1

    .line 157
    new-instance v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;-><init>()V

    return-object v0
.end method

.method private getLabelColor(Ljava/lang/String;Z)I
    .registers 4

    if-eqz p1, :cond_2a

    const-string v0, "精品"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_13

    const-string p1, "#F76B40"

    .line 723
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_19

    :cond_13
    const-string p1, "#33E03D0B"

    .line 724
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_19
    return p1

    :cond_1a
    if-eqz p2, :cond_23

    const-string p1, "#E0BC56"

    .line 727
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_29

    :cond_23
    const-string p1, "#E0BB56"

    .line 728
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_29
    return p1

    .line 731
    :cond_2a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060193

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private getRecommendListData()V
    .registers 4

    .line 363
    const-class v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    iget-boolean v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->courseItems:Lcom/codemao/nemo/bean/RecommendPageCourse;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->size()I

    move-result v1

    if-nez v1, :cond_56

    .line 365
    :cond_10
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v1}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getRecommendPageData()Lio/reactivex/Observable;

    move-result-object v1

    .line 366
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 367
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 368
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getRecommendPageCourse()Lio/reactivex/Observable;

    move-result-object v0

    .line 369
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 370
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    .line 364
    invoke-static {v1, v0, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_85

    .line 428
    :cond_56
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    .line 429
    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->getRecommendPageData()Lio/reactivex/Observable;

    move-result-object v0

    .line 430
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 432
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    .line 433
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 439
    :goto_85
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 440
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$6;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    .line 441
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->safeSubscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getRecommendViewModelList(Lretrofit2/Response;Lcom/codemao/nemo/bean/RecommendPageCourse;)Lretrofit2/Response;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/bean/RecommendPageResponse;",
            ">;",
            "Lcom/codemao/nemo/bean/RecommendPageCourse;",
            ")",
            "Lretrofit2/Response<",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 477
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 478
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->code()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-static {v1, v2}, Lretrofit2/Response;->error(ILokhttp3/ResponseBody;)Lretrofit2/Response;

    move-result-object v1

    return-object v1

    :cond_1b
    if-nez p2, :cond_23

    .line 481
    new-instance v1, Lcom/codemao/nemo/bean/RecommendPageCourse;

    invoke-direct {v1}, Lcom/codemao/nemo/bean/RecommendPageCourse;-><init>()V

    goto :goto_25

    :cond_23
    move-object/from16 v1, p2

    .line 483
    :goto_25
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/RecommendPageResponse;

    .line 485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_b4

    .line 488
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getRecommend_work_list()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_b4

    .line 490
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getRecommend_work_list()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_47
    :goto_47
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/nemo/bean/WorkInfo;

    .line 491
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_base()Lcom/codemao/nemo/bean/WorkBase;

    move-result-object v9

    .line 492
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getAuthor_info()Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    move-result-object v10

    .line 493
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_mix()Lcom/codemao/nemo/bean/WorkMix;

    move-result-object v11

    .line 494
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_label()Lcom/codemao/nemo/bean/WorkLabel;

    move-result-object v8

    if-eqz v9, :cond_47

    if-eqz v10, :cond_47

    if-eqz v11, :cond_47

    if-eqz v8, :cond_47

    .line 501
    new-instance v15, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    .line 502
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getPreview_url()Ljava/lang/String;

    move-result-object v13

    .line 503
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getName()Ljava/lang/String;

    move-result-object v14

    .line 504
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->getNickname()Ljava/lang/String;

    move-result-object v16

    .line 505
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->getAvatar()Ljava/lang/String;

    move-result-object v17

    .line 506
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkMix;->getView_times()J

    move-result-wide v18

    .line 507
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkMix;->getLike_times()J

    move-result-wide v20

    .line 508
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkLabel;->getLabel_name()Ljava/lang/String;

    move-result-object v11

    .line 509
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkLabel;->getLabel_name()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12, v6}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getLabelColor(Ljava/lang/String;Z)I

    move-result v22

    .line 510
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkLabel;->getLabel_name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v5}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getLabelColor(Ljava/lang/String;Z)I

    move-result v23

    .line 511
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getId()J

    move-result-wide v24

    .line 512
    invoke-virtual {v10}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->getUser_id()J

    move-result-wide v26

    move-object v12, v15

    move-object v8, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-object/from16 v21, v11

    invoke-direct/range {v12 .. v27}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJJ)V

    .line 514
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_b4
    const/4 v7, 0x2

    if-eqz v3, :cond_15d

    .line 521
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getBig_card_work()Lcom/codemao/nemo/bean/WorkInfo;

    move-result-object v8

    if-eqz v8, :cond_15d

    .line 522
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getBig_card_work()Lcom/codemao/nemo/bean/WorkInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_base()Lcom/codemao/nemo/bean/WorkBase;

    move-result-object v8

    if-eqz v8, :cond_15d

    .line 523
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getBig_card_work()Lcom/codemao/nemo/bean/WorkInfo;

    move-result-object v8

    .line 524
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_base()Lcom/codemao/nemo/bean/WorkBase;

    move-result-object v9

    .line 525
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_recommend_info()Lcom/codemao/nemo/bean/WorkRecommendInfo;

    move-result-object v8

    .line 527
    iget-boolean v10, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v10, :cond_141

    .line 529
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 530
    :goto_dc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xa

    if-le v10, v11, :cond_e8

    .line 531
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_dc

    .line 533
    :cond_e8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v10, v7, :cond_106

    .line 534
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 537
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 539
    :cond_106
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/RecommendPageCourse;->getCourseItem()Lcom/codemao/nemo/bean/RecommendPageCourseItem;

    move-result-object v1

    .line 541
    new-instance v10, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    .line 542
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getPreview_url()Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_117

    .line 544
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkRecommendInfo;->getRecommend_word()Ljava/lang/String;

    move-result-object v8

    goto :goto_11b

    .line 545
    :cond_117
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getName()Ljava/lang/String;

    move-result-object v8

    :goto_11b
    move-object v13, v8

    const/4 v8, 0x0

    if-eqz v1, :cond_129

    .line 548
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->getCourse_package_id()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object v15, v11

    goto :goto_12a

    :cond_129
    move-object v15, v8

    :goto_12a
    if-eqz v1, :cond_133

    .line 551
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/RecommendPageCourseItem;->getCourse_package_preview_url()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_135

    :cond_133
    move-object/from16 v16, v8

    .line 553
    :goto_135
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getId()J

    move-result-wide v17

    move-object v11, v10

    invoke-direct/range {v11 .. v18}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;J)V

    .line 555
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_164

    .line 558
    :cond_141
    new-instance v1, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    .line 559
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getPreview_url()Ljava/lang/String;

    move-result-object v10

    if-eqz v8, :cond_14e

    .line 561
    invoke-virtual {v8}, Lcom/codemao/nemo/bean/WorkRecommendInfo;->getRecommend_word()Ljava/lang/String;

    move-result-object v8

    goto :goto_152

    .line 562
    :cond_14e
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getName()Ljava/lang/String;

    move-result-object v8

    .line 563
    :goto_152
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkBase;->getId()J

    move-result-wide v11

    invoke-direct {v1, v10, v8, v11, v12}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 565
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_164

    .line 569
    :cond_15d
    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v1, :cond_164

    .line 570
    invoke-direct {v0, v2, v4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->addWorkListViewModels(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 574
    :cond_164
    :goto_164
    iget-object v1, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->boxData:Ljava/util/List;

    if-eqz v1, :cond_174

    iget-boolean v8, v0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    if-nez v8, :cond_174

    .line 575
    new-instance v8, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;

    invoke-direct {v8, v1}, Lcom/codemao/nemo/bean/viewmodel/BoxViewModel;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 579
    :cond_174
    invoke-direct {v0, v2, v4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->addWorkListViewModels(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz v3, :cond_230

    .line 582
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getWork_set()Lcom/codemao/nemo/bean/WorkSet;

    move-result-object v1

    if-eqz v1, :cond_230

    .line 583
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getWork_set()Lcom/codemao/nemo/bean/WorkSet;

    move-result-object v1

    .line 584
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getRecommend_work_list()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_193

    .line 586
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getRecommend_work_list()Ljava/util/List;

    move-result-object v8

    goto :goto_198

    .line 587
    :cond_193
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    :goto_198
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_208

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/nemo/bean/WorkInfo;

    .line 589
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_base()Lcom/codemao/nemo/bean/WorkBase;

    move-result-object v11

    .line 590
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkInfo;->getAuthor_info()Lcom/codemao/nemo/bean/RecommendAuthorInfo;

    move-result-object v12

    .line 591
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_recommend_info()Lcom/codemao/nemo/bean/WorkRecommendInfo;

    move-result-object v13

    .line 592
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkInfo;->getWork_mix()Lcom/codemao/nemo/bean/WorkMix;

    move-result-object v9

    if-eqz v11, :cond_205

    if-eqz v12, :cond_205

    if-eqz v13, :cond_205

    if-eqz v9, :cond_205

    .line 599
    new-instance v15, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    .line 600
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkBase;->getName()Ljava/lang/String;

    move-result-object v16

    .line 601
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkBase;->getPreview_url()Ljava/lang/String;

    move-result-object v17

    .line 602
    invoke-virtual {v12}, Lcom/codemao/nemo/bean/RecommendAuthorInfo;->getNickname()Ljava/lang/String;

    move-result-object v12

    .line 603
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkBase;->getPublish_time()J

    move-result-wide v6

    sget v14, Lcom/codemao/nemo/util/TimeUtil;->TIME_SECOND:I

    invoke-static {v6, v7, v14}, Lcom/codemao/nemo/util/TimeUtil;->getReplyTime3(JI)Ljava/lang/String;

    move-result-object v18

    .line 604
    invoke-virtual {v13}, Lcom/codemao/nemo/bean/WorkRecommendInfo;->getRecommend_word()Ljava/lang/String;

    move-result-object v19

    .line 605
    invoke-virtual {v13}, Lcom/codemao/nemo/bean/WorkRecommendInfo;->getBackground_color()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->checkBackgroundColor(Ljava/lang/String;)I

    move-result v20

    .line 606
    invoke-virtual {v9}, Lcom/codemao/nemo/bean/WorkMix;->getParent_id()J

    move-result-wide v6

    const-wide/16 v13, 0x0

    cmp-long v9, v6, v13

    if-lez v9, :cond_1f1

    const/16 v21, 0x1

    goto :goto_1f3

    :cond_1f1
    const/16 v21, 0x0

    .line 607
    :goto_1f3
    invoke-virtual {v11}, Lcom/codemao/nemo/bean/WorkBase;->getId()J

    move-result-wide v22

    move-object v14, v15

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v12

    invoke-direct/range {v14 .. v23}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V

    .line 609
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_205
    const/4 v6, 0x0

    const/4 v7, 0x2

    goto :goto_19c

    .line 613
    :cond_208
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getType()I

    move-result v6

    if-ne v6, v5, :cond_21b

    .line 615
    new-instance v5, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    .line 616
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 618
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_230

    .line 620
    :cond_21b
    new-instance v5, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    .line 621
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getName()Ljava/lang/String;

    move-result-object v9

    .line 623
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getActivity_target_url()Ljava/lang/String;

    move-result-object v11

    .line 624
    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkSet;->getActivity_id()J

    move-result-wide v12

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V

    .line 625
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_230
    :goto_230
    invoke-direct {v0, v2, v4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->addWorkListViewModels(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 633
    invoke-direct {v0, v2, v4}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->addWorkListViewModels(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz v3, :cond_283

    .line 636
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getSubject_banner()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_283

    .line 637
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/RecommendPageResponse;->getSubject_banner()Ljava/util/List;

    move-result-object v1

    .line 638
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_26e

    .line 640
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/SubjectBanner;

    .line 641
    new-instance v5, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    .line 642
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/SubjectBanner;->getPreview_url()Ljava/lang/String;

    move-result-object v6

    .line 643
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/SubjectBanner;->getSubject_id()J

    move-result-wide v7

    .line 644
    invoke-virtual {v4}, Lcom/codemao/nemo/bean/SubjectBanner;->getSubject_name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v7, v8, v4}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 645
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24d

    .line 649
    :cond_26e
    iget-boolean v1, v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-nez v1, :cond_280

    .line 650
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 651
    rem-int/2addr v1, v4

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 654
    :cond_280
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_283
    invoke-static {v2}, Lretrofit2/Response;->success(Ljava/lang/Object;)Lretrofit2/Response;

    move-result-object v1

    return-object v1
.end method

.method private hideErrorToast()V
    .registers 3

    .line 907
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private isTooShortToClick()Z
    .registers 7

    .line 337
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->clickTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-gez v5, :cond_10

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->clickTime:J

    return v2

    .line 341
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->clickTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v0, v3

    if-ltz v5, :cond_24

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->clickTime:J

    return v2

    :cond_24
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic lambda$getRecommendListData$0(Lretrofit2/Response;Lretrofit2/Response;)Lretrofit2/Response;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 373
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/RecommendPageCourse;

    goto :goto_12

    .line 374
    :cond_d
    new-instance p2, Lcom/codemao/nemo/bean/RecommendPageCourse;

    invoke-direct {p2}, Lcom/codemao/nemo/bean/RecommendPageCourse;-><init>()V

    :goto_12
    iput-object p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->courseItems:Lcom/codemao/nemo/bean/RecommendPageCourse;

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getRecommendViewModelList(Lretrofit2/Response;Lcom/codemao/nemo/bean/RecommendPageCourse;)Lretrofit2/Response;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$getRecommendListData$2(Lretrofit2/Response;)Lretrofit2/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->courseItems:Lcom/codemao/nemo/bean/RecommendPageCourse;

    invoke-direct {p0, p1, v0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getRecommendViewModelList(Lretrofit2/Response;Lcom/codemao/nemo/bean/RecommendPageCourse;)Lretrofit2/Response;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setNBannerData$3(Ljava/util/List;Ljava/lang/Object;I)V
    .registers 5

    .line 823
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BannerData;->getTarget_url()Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setBannerUrl(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setBannerRank(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    const-string p3, "推荐页-点击banner"

    invoke-static {p3, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    const-string p2, "www"

    .line 825
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 826
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nemo://com.codemao.nemo/openwith?type=5&url=http://"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_65

    :cond_4c
    const-string p2, "http"

    .line 827
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nemo://com.codemao.nemo/openwith?type=5&url="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 830
    :cond_65
    :goto_65
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 831
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    return-void
.end method

.method private declared-synchronized setListData(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 735
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lastRefreshTime:J

    .line 737
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_10

    .line 738
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    :cond_10
    const/4 v0, 0x1

    .line 740
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    .line 741
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 742
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 743
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 744
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 745
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 747
    iget-boolean p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isFirstOpenRecommend:Z

    if-eqz p1, :cond_44

    .line 749
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->putIsFirstOpenRecommend()V

    .line 750
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isFirstOpenRecommend:Z

    .line 751
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 753
    :cond_44
    monitor-exit p0

    return-void

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
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

    if-eqz p1, :cond_f0

    .line 784
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_f0

    .line 793
    :cond_b
    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 794
    iget-object v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 796
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 797
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/BannerData;->getPreview_url()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 799
    :cond_32
    iget-object v3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->header:Landroid/view/View;

    if-nez v3, :cond_5d

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v4, :cond_42

    const v4, 0x7f0d0181

    goto :goto_45

    :cond_42
    const v4, 0x7f0d0180

    :goto_45
    invoke-static {v3, v4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->header:Landroid/view/View;

    const v3, 0x7f0a0091

    .line 801
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    .line 803
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->header:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    .line 806
    :cond_5d
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v0, :cond_65

    const v0, 0x3f19999a  # 0.6f

    goto :goto_68

    :cond_65
    const v0, 0x3f666666  # 0.9f

    :goto_68
    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v0, v3, v0

    .line 807
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v0, :cond_7a

    const/high16 v0, 0x41700000  # 15.0f

    goto :goto_7c

    :cond_7a
    const/high16 v0, 0x41200000  # 10.0f

    :goto_7c
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v4, v0

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    mul-double v4, v4, v6

    double-to-int v0, v4

    .line 808
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->px2dp(F)I

    move-result v0

    .line 809
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x1

    if-gt v4, v6, :cond_a2

    .line 810
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v4, :cond_a2

    const/16 v0, 0xf

    .line 812
    :cond_a2
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v4, :cond_a7

    goto :goto_a9

    :cond_a7
    const/16 v5, 0xa

    :goto_a9
    if-eqz v4, :cond_b2

    .line 813
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_b2

    const/4 v5, 0x0

    .line 816
    :cond_b2
    iget-object v4, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v4, v0, v5, v3}, Lcom/youth/banner/Banner;->setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;

    .line 819
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    new-instance v3, Lcom/codemao/nemo/adapter/CustomBannerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/codemao/nemo/adapter/CustomBannerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 820
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cf

    const/16 v2, 0x8

    :cond_cf
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 821
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 822
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 835
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 836
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 785
    :cond_f0
    :goto_f0
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->header:Landroid/view/View;

    if-eqz p1, :cond_102

    .line 786
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 787
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    .line 788
    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->header:Landroid/view/View;

    .line 789
    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banner:Lcom/youth/banner/Banner;

    :cond_102
    return-void
.end method

.method private showHongbao(Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;Z)V
    .registers 6

    .line 974
    invoke-static {}, Lcom/codemao/nemo/sdk/stat/StatHelper;->getCurViewName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "推荐页"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 977
    :cond_d
    iget-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->eventPop:Lcom/codemao/nemo/dialog/pop/RecommendEventPop;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_18

    return-void

    .line 980
    :cond_18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 983
    :cond_1f
    new-instance v0, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/codemao/nemo/dialog/pop/RecommendEventPop;-><init>(Landroid/content/Context;Lcom/codemao/nemo/bean/EventInfo;Ljava/io/File;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->eventPop:Lcom/codemao/nemo/dialog/pop/RecommendEventPop;

    const/4 p1, 0x0

    const-string p2, "活动弹窗"

    .line 984
    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewCommonViewEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 985
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendMatomoViewEvent(Ljava/lang/String;Landroid/app/Activity;)V

    .line 986
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    sget-object p2, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 987
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 988
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;

    invoke-direct {v0, p0, p3}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$9;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Z)V

    .line 989
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->setPopupCallback(Lcom/nemo/commonui/xpopup/interfaces/XPopupCallback;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 998
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->eventPop:Lcom/codemao/nemo/dialog/pop/RecommendEventPop;

    .line 999
    invoke-virtual {p1, p2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 1000
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method

.method private startPullDownRefreshTipsAnimation()V
    .registers 5

    .line 756
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 760
    :cond_7
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x42c80000  # 100.0f

    goto :goto_10

    :cond_e
    const/high16 v0, 0x428c0000  # 70.0f

    :goto_10
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v0, v1, v3

    const/4 v0, 0x2

    aput v2, v1, v0

    .line 761
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 762
    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$7;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x7d0

    .line 779
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 780
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private toWorkDetailAct(Landroid/widget/ImageView;Ljava/lang/String;J)V
    .registers 14

    .line 317
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isTooShortToClick()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 321
    :cond_10
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    const-string v1, "推荐页-点击推荐作品卡片"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v7, "推荐页"

    const-string v8, ""

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-static/range {v2 .. v8}, Lcom/codemao/nemo/activity/WorkDetailActivity;->goDetailWithAnim(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d0168

    return v0
.end method

.method protected getData()V
    .registers 2

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 354
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->hideErrorToast()V

    .line 355
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_d

    .line 356
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getBanner()V

    .line 358
    :cond_d
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getRecommendListData()V

    return-void
.end method

.method public getEventInfo(Z)V
    .registers 4

    .line 1052
    sget-boolean v0, Lcom/codemao/nemo/MainActivityV2;->isCheckPricayFinish:Z

    if-nez v0, :cond_5

    return-void

    .line 1055
    :cond_5
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 1060
    :cond_c
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-virtual {v0, v1}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/retrofit/api/UserService;

    invoke-interface {v0}, Lcom/codemao/nemo/retrofit/api/UserService;->getEventInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 1061
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    .line 1062
    invoke-virtual {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$11;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;Z)V

    .line 1063
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "推荐页"

    return-object v0
.end method

.method public hasHead()Z
    .registers 2

    .line 932
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getHeadCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected initDelegate()V
    .registers 4

    .line 283
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isLargePad:Z

    if-eqz v0, :cond_b

    const/4 v1, 0x4

    .line 286
    iput v1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->mSpanNum:I

    :cond_b
    if-eqz v0, :cond_1a

    .line 289
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->recommendWorkCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;-><init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    goto :goto_26

    .line 291
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->recommendWorkCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;-><init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 293
    :goto_26
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->recommendWorkCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendWorkBodyDelegate;-><init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 294
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendThemeDelegate;

    invoke-direct {v1}, Lcom/codemao/nemo/adapter/RecommendThemeDelegate;-><init>()V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 295
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendNewWorkDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 296
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendNewActiveDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/adapter/RecommendBoxWorkDelegate;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initLayoutManager()V
    .registers 11

    const/high16 v0, 0x40a00000  # 5.0f

    .line 174
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v5

    const/high16 v0, 0x40e00000  # 7.0f

    .line 175
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v6

    const/high16 v0, 0x41400000  # 12.0f

    .line 176
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v7

    const/high16 v0, 0x41700000  # 15.0f

    .line 177
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v4

    const/high16 v0, 0x41c80000  # 25.0f

    .line 178
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    .line 180
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->mSpanNum:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 181
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    iget-object v8, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v9, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$1;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;IIIII)V

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 236
    new-instance v1, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2$2;-><init>(Lcom/codemao/nemo/fragment/RecommendFragmentV2;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 167
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->onCreate(Landroid/os/Bundle;)V

    .line 168
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->banners:Ljava/util/List;

    .line 169
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsFirstOpenRecommend()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->isFirstOpenRecommend:Z

    return-void
.end method

.method public onFragmentVisible()V
    .registers 7

    .line 913
    iget-wide v0, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lastRefreshTime:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->lastRefreshTime:J

    sub-long/2addr v0, v3

    const-wide/32 v3, 0xdbba00

    cmp-long v5, v0, v3

    if-lez v5, :cond_2a

    .line 914
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 915
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->showError()V

    return-void

    .line 918
    :cond_25
    iput v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 919
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getData()V

    :cond_2a
    const-string v0, "推荐页"

    .line 921
    invoke-static {v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->setCurViewName(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0, v2}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getEventInfo(Z)V

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 276
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 277
    iget-object p1, p0, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

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

    .line 881
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 882
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 10

    .line 937
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getHeadCount()I

    move-result v0

    sub-int/2addr p1, v0

    :goto_5
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/RecommendFragmentV2;->getHeadCount()I

    move-result v0

    sub-int v0, p2, v0

    if-gt p1, v0, :cond_16a

    if-ltz p1, :cond_166

    .line 938
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1b

    goto/16 :goto_166

    .line 941
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewWork:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    const/4 v2, 0x0

    const-string v3, ""

    if-ne v0, v1, :cond_6b

    .line 942
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;

    .line 943
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 944
    :goto_3c
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_166

    .line 945
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewWorkViewModel;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getWorkId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 948
    :cond_6b
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->NewActive:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne v0, v1, :cond_b8

    .line 949
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;

    .line 950
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 951
    :goto_89
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_166

    .line 952
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/NewActiveViewModel;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/viewmodel/NewWorkItem;->getWorkId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    .line 955
    :cond_b8
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Work:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne v0, v1, :cond_105

    .line 956
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;

    if-eqz v0, :cond_166

    .line 957
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_166

    .line 958
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/WorkListViewModel;->getWorkList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_166

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    .line 959
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getWorkId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    .line 962
    :cond_105
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne v0, v1, :cond_136

    .line 963
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    .line 964
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->getWorkId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_166

    .line 965
    :cond_136
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object v0

    sget-object v1, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCardPad:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne v0, v1, :cond_166

    .line 966
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    .line 967
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getWorkId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_166
    :goto_166
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    .line 970
    :cond_16a
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 889
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 892
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 893
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 894
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    :cond_15
    return-void
.end method
