.class public Lcom/codemao/nemo/fragment/ThemeFragment;
.super Lcom/codemao/nemo/fragment/BaseDiscoverFragment;
.source "ThemeFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/fragment/BaseDiscoverFragment<",
        "Lcom/codemao/nemo/bean/SubjectInfo;",
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

.field private detailHorDelegate:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

.field private header:Landroid/view/View;

.field private isPad:Z

.field llNonet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IRRs2QBvCLuTL6mA_yREL41yeRc(Lcom/codemao/nemo/fragment/ThemeFragment;Ljava/util/List;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/nemo/fragment/ThemeFragment;->lambda$setNBannerData$0(Ljava/util/List;Ljava/lang/Object;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/fragment/ThemeFragment;Lcom/codemao/nemo/bean/SubjectInfos;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment;->setListData(Lcom/codemao/nemo/bean/SubjectInfos;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/fragment/ThemeFragment;Ljava/util/List;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment;->setNBannerData(Ljava/util/List;)V

    return-void
.end method

.method private getBanner()V
    .registers 4

    .line 261
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 264
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    const/4 v1, 0x2

    new-instance v2, Lcom/codemao/nemo/fragment/ThemeFragment$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/ThemeFragment$2;-><init>(Lcom/codemao/nemo/fragment/ThemeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getRecommendBanner(ILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private getHeadCount()I
    .registers 3

    .line 285
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 287
    :cond_6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    return v1
.end method

.method public static getInstance()Lcom/codemao/nemo/fragment/ThemeFragment;
    .registers 1

    .line 75
    new-instance v0, Lcom/codemao/nemo/fragment/ThemeFragment;

    invoke-direct {v0}, Lcom/codemao/nemo/fragment/ThemeFragment;-><init>()V

    return-object v0
.end method

.method private getThemeData()V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->discoveryFragmentNetUtil:Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;

    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    new-instance v2, Lcom/codemao/nemo/fragment/ThemeFragment$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/fragment/ThemeFragment$1;-><init>(Lcom/codemao/nemo/fragment/ThemeFragment;)V

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v3, v2}, Lcom/codemao/nemo/http/DiscoveryFragmentNetUtil;->getSubjectList(IILcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private hideErrorToast()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method private synthetic lambda$setNBannerData$0(Ljava/util/List;Ljava/lang/Object;I)V
    .registers 8

    .line 243
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BannerData;->getTarget_url()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 244
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

    const-string v1, "主题页-点击banner"

    invoke-static {v1, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 245
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

    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 247
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

    .line 248
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 249
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "nemo://com.codemao.nemo/openwith?type=5&url="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 251
    :cond_7f
    :goto_7f
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 252
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2, v0, v0}, Lcom/codemao/nemo/activity/LocalJumpHelper;->jump(Landroid/net/Uri;Landroid/content/Context;ZZ)V

    return-void
.end method

.method private setListData(Lcom/codemao/nemo/bean/SubjectInfos;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_78

    .line 170
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_15

    goto :goto_78

    .line 180
    :cond_15
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    .line 183
    iget v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v3, :cond_28

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 186
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    const/4 v2, 0x0

    .line 188
    :cond_28
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 190
    iget-boolean v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoadMore:Z

    if-eqz v3, :cond_4d

    .line 191
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getHeadCount()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    goto :goto_52

    .line 193
    :cond_4d
    iget-object v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 195
    :goto_52
    iget v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    .line 196
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SubjectInfos;->getTotal()I

    move-result p1

    if-ge v2, p1, :cond_67

    const/4 p1, 0x1

    goto :goto_68

    :cond_67
    const/4 p1, 0x0

    :goto_68
    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    if-nez p1, :cond_72

    .line 198
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    goto :goto_77

    .line 200
    :cond_72
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_77
    return-void

    .line 171
    :cond_78
    :goto_78
    iput-boolean v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->hasMore:Z

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 173
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1

    if-nez p1, :cond_8d

    .line 174
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showEmpty()V

    goto :goto_92

    .line 176
    :cond_8d
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    :goto_92
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

    if-eqz p1, :cond_ec

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    goto/16 :goto_ec

    .line 214
    :cond_b
    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 215
    iget-object v1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 217
    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 218
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/nemo/bean/BannerData;

    invoke-virtual {v4}, Lcom/codemao/nemo/bean/BannerData;->getPreview_url()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 220
    :cond_32
    iget-object v3, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->header:Landroid/view/View;

    if-nez v3, :cond_59

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0180

    invoke-virtual {v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->header:Landroid/view/View;

    const v3, 0x7f0a0091

    .line 222
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    .line 224
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iget-object v3, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->header:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->addHeadView(Landroid/view/View;)V

    .line 227
    :cond_59
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->isPad:Z

    if-eqz v0, :cond_61

    const v0, 0x3f19999a  # 0.6f

    goto :goto_64

    :cond_61
    const v0, 0x3f666666  # 0.9f

    :goto_64
    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v0, v3, v0

    .line 228
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->isPad:Z

    if-eqz v0, :cond_76

    const/high16 v0, 0x41700000  # 15.0f

    goto :goto_78

    :cond_76
    const/high16 v0, 0x41200000  # 10.0f

    :goto_78
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v4, v0

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L  # 0.5

    mul-double v4, v4, v6

    double-to-int v0, v4

    .line 229
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->px2dp(F)I

    move-result v0

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0xf

    const/4 v6, 0x1

    if-gt v4, v6, :cond_9e

    .line 231
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->isPad:Z

    if-eqz v4, :cond_9e

    const/16 v0, 0xf

    .line 233
    :cond_9e
    iget-boolean v4, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->isPad:Z

    if-eqz v4, :cond_a3

    goto :goto_a5

    :cond_a3
    const/16 v5, 0xa

    :goto_a5
    if-eqz v4, :cond_ae

    .line 234
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v6, :cond_ae

    const/4 v5, 0x0

    .line 237
    :cond_ae
    iget-object v4, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v4, v0, v5, v3}, Lcom/youth/banner/Banner;->setBannerGalleryEffect(IIF)Lcom/youth/banner/Banner;

    .line 239
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v3, Lcom/codemao/nemo/adapter/CustomBannerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/codemao/nemo/adapter/CustomBannerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/youth/banner/Banner;->setAdapter(Lcom/youth/banner/adapter/BannerAdapter;)Lcom/youth/banner/Banner;

    .line 240
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_cb

    const/16 v2, 0x8

    :cond_cb
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/codemao/nemo/fragment/ThemeFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/fragment/ThemeFragment$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/ThemeFragment;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 256
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 257
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 206
    :cond_ec
    :goto_ec
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->header:Landroid/view/View;

    if-eqz p1, :cond_fe

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 208
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->cleanHeadView()V

    .line 209
    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->header:Landroid/view/View;

    .line 210
    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banner:Lcom/youth/banner/Banner;

    :cond_fe
    return-void
.end method

.method private showErrorToast()V
    .registers 3

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->llNonet:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private updateIds()V
    .registers 8

    .line 405
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getHeadCount()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_7
    iget v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getHeadCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_9e

    if-ltz v0, :cond_9a

    .line 406
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1e

    goto/16 :goto_9a

    .line 411
    :cond_1e
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getHeadCount()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_46

    const v3, 0x7f0a0128

    .line 413
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 414
    instance-of v3, v1, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;

    if-eqz v3, :cond_46

    .line 415
    check-cast v1, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;

    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getScrollStart()I

    move-result v2

    .line 416
    invoke-virtual {v1}, Lcom/codemao/nemo/view/CmHorLayoutWithFooter;->getScrollEnd()I

    move-result v1

    goto :goto_47

    :cond_46
    const/4 v1, -0x1

    .line 419
    :goto_47
    iget-object v3, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->detailHorDelegate:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-virtual {v3}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->getScrolledIds()Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/ScrollPositionInfo;

    if-eqz v3, :cond_69

    .line 421
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getStart()I

    move-result v4

    .line 422
    invoke-virtual {v3}, Lcom/codemao/nemo/bean/ScrollPositionInfo;->getEnd()I

    move-result v3

    if-ltz v2, :cond_65

    if-le v2, v4, :cond_66

    :cond_65
    move v2, v4

    :cond_66
    if-ge v1, v3, :cond_69

    move v1, v3

    :cond_69
    :goto_69
    if-gt v2, v1, :cond_9a

    .line 432
    :try_start_6b
    iget-object v3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {v5}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_97} :catch_97

    :catch_97
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_9a
    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_9e
    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d016a

    return v0
.end method

.method protected getData()V
    .registers 2

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->isLoading:Z

    .line 116
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->hideErrorToast()V

    .line 117
    iget v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->offset:I

    if-nez v0, :cond_d

    .line 118
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getBanner()V

    .line 120
    :cond_d
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getThemeData()V

    return-void
.end method

.method public getViewName()Ljava/lang/String;
    .registers 2

    const-string v0, "主题页"

    return-object v0
.end method

.method protected initDelegate()V
    .registers 3

    .line 109
    new-instance v0, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->detailHorDelegate:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    .line 110
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->adapter:Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    invoke-virtual {v1, v0}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-void
.end method

.method protected initLayoutManager()V
    .registers 4

    .line 126
    invoke-super {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initLayoutManager()V

    .line 127
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 128
    iget-object v1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 85
    invoke-super {p0, p1}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->banners:Ljava/util/List;

    .line 87
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->isPad:Z

    return-void
.end method

.method public onFragmentVisible()V
    .registers 1

    return-void
.end method

.method public onUpdateWorkInfoEvent(Lcom/codemao/nemo/event/UpdateWorkInfoEvents;)V
    .registers 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 336
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkId()J

    move-result-wide v0

    .line 337
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 339
    :goto_10
    iget-object v6, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_57

    .line 340
    iget-object v6, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/nemo/bean/SubjectInfo;

    .line 341
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_54

    const/4 v7, 0x0

    .line 342
    :goto_27
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_54

    .line 343
    invoke-virtual {v6}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    invoke-virtual {v8}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getId()J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-nez v10, :cond_51

    .line 344
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 350
    :cond_57
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_5e

    return-void

    .line 353
    :cond_5e
    :goto_5e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_f5

    .line 354
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/SubjectInfo;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectInfo;->getSubject_works()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/SubjectWorkInfo;

    if-nez v0, :cond_8d

    goto :goto_f1

    .line 358
    :cond_8d
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getType()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_c0

    const/4 v5, 0x5

    if-eq v1, v5, :cond_ad

    const/4 v5, 0x7

    if-eq v1, v5, :cond_9b

    goto :goto_c7

    .line 368
    :cond_9b
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->isPraise()Z

    move-result v1

    .line 369
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->getN_likes()I

    move-result v5

    if-eqz v1, :cond_a7

    const/4 v1, 0x1

    goto :goto_a8

    :cond_a7
    const/4 v1, -0x1

    :goto_a8
    add-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setN_likes(I)V

    goto :goto_c7

    .line 363
    :cond_ad
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getWorkDetailInfo()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    move-result-object v1

    .line 364
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setWork_name(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setPreview(Ljava/lang/String;)V

    goto :goto_c7

    .line 360
    :cond_c0
    invoke-virtual {p1}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->getViewTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/SubjectWorkInfo;->setN_views(I)V

    .line 373
    :goto_c7
    :try_start_c7
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->getHeadCount()I

    move-result v5

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 374
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_f1} :catch_f1

    :catch_f1
    :goto_f1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5e

    :cond_f5
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->commonHeader:Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b8

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/coordinaterecylerView/CommonHeaderV2;->setLineViewBgColor(I)V

    return-void
.end method

.method public scroll(II)V
    .registers 3

    .line 443
    :try_start_0
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->updateIds()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

.method public scrollToTop()V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_8
    return-void
.end method

.method public setViewWorkIds(II)Ljava/lang/String;
    .registers 3

    .line 399
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->updateIds()V

    .line 400
    iget-object p1, p0, Lcom/codemao/nemo/fragment/ThemeFragment;->detailHorDelegate:Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;

    invoke-virtual {p1}, Lcom/codemao/nemo/adapter/ThemeDetailHorDelegate;->cleanScrolledIds()V

    .line 401
    iget-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->reportViewIds:Ljava/util/Set;

    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getReportStr(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected showError()V
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    if-nez v0, :cond_5

    return-void

    .line 312
    :cond_5
    invoke-virtual {p0}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->afterLoading()V

    .line 313
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->datas:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 314
    iget-object v0, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->loadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    .line 316
    :cond_15
    invoke-direct {p0}, Lcom/codemao/nemo/fragment/ThemeFragment;->showErrorToast()V

    return-void
.end method
