.class public Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;
.super Ljava/lang/Object;
.source "WorkPlayPresentImpl.java"

# interfaces
.implements Lcom/giu/xzz/mvp/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;
    }
.end annotation


# instance fields
.field private accelerometer:Lcom/codemao/nemo/util/Accelerometer;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;

.field private jsCallNativeInterface:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

.field private mic:Lcom/codemao/nemo/util/MicUtils;

.field private nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private workId:J

.field private workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;JLjava/lang/String;)V
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/codemao/nemo/util/MicUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/MicUtils;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    .line 69
    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    .line 70
    iput-wide p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workId:J

    .line 71
    iput-object p4, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workType:Ljava/lang/String;

    .line 72
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 73
    new-instance p1, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-direct {p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    .line 74
    new-instance p1, Lcom/codemao/nemo/util/Accelerometer;

    iget-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/nemo/util/Accelerometer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    .line 75
    invoke-direct {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->initJsCallNative()V

    .line 76
    new-instance p1, Lcom/giu/xzz/utils/HandlerUtil;

    iget-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$1;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$1;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-direct {p1, p2, p3}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    return-object p0
.end method

.method private getTokenBaseKey()Ljava/lang/String;
    .registers 3

    .line 294
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dev-authorization"

    return-object v0

    .line 296
    :cond_11
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "test-authorization"

    return-object v0

    .line 298
    :cond_22
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "staging"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "staging-authorization"

    return-object v0

    :cond_33
    const-string v0, "authorization"

    return-object v0
.end method

.method private initJsCallNative()V
    .registers 3

    .line 334
    new-instance v0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$6;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;-><init>(Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->jsCallNativeInterface:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

    return-void
.end method


# virtual methods
.method public changeCollectStatus(JZ)V
    .registers 5

    if-eqz p3, :cond_16

    .line 425
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击取消收藏"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 426
    iget-object p3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$7;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_29

    .line 445
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击收藏"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 446
    iget-object p3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$8;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->collectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_29
    return-void
.end method

.method public changePraiseStatus(JZ)V
    .registers 5

    if-eqz p3, :cond_16

    .line 469
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击取消点赞"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 470
    iget-object p3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$9;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelPraiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_29

    .line 490
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击点赞"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 491
    iget-object p3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$10;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->praiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_29
    return-void
.end method

.method public clearWebCookie()V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 316
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 317
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 318
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 319
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 320
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public clearWebCookieX5()V
    .registers 4

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    .line 326
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 327
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptCookie(Z)V

    .line 328
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeSessionCookie()V

    .line 329
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieManager;->removeAllCookie()V

    .line 330
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    return-void
.end method

.method public getReportParams()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShootFromWeb()V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$12;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->getScreenShot(Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public init(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->init(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    return-void
.end method

.method public initShareModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 559
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 560
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 562
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 564
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120335

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 567
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 570
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 571
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 572
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$11;

    const/16 p3, 0x78

    invoke-direct {p2, p0, p3, p3}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$11;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;II)V

    .line 573
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public initWebview(Lcom/codemao/creativestore/dsbridge/DWebView;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->clearWebCookie()V

    .line 197
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app/codemao;version="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " CODEMAO_WEBVIEW"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 200
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-le v1, v2, :cond_38

    .line 201
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 203
    :cond_38
    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->jsCallNativeInterface:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/codemao/creativestore/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 205
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 212
    iget-object v2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "database"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 219
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 221
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 222
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 227
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 229
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 230
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 232
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_a9

    .line 234
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_d6

    :cond_a9
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_b3

    .line 236
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_d6

    :cond_b3
    const/16 v2, 0x78

    if-ne v1, v2, :cond_bd

    .line 238
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->CLOSE:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_d6

    :cond_bd
    const/16 v2, 0x140

    if-ne v1, v2, :cond_c7

    .line 240
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_d6

    :cond_c7
    const/16 v2, 0xd5

    if-ne v1, v2, :cond_d1

    .line 242
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    goto :goto_d6

    .line 244
    :cond_d1
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 247
    :goto_d6
    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$4;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/dsbridge/DWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 263
    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$5;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;Lcom/codemao/creativestore/dsbridge/DWebView;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public initWebviewX5(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 7

    .line 98
    invoke-virtual {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->clearWebCookieX5()V

    .line 99
    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app/codemao;version="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " CODEMAO_WEBVIEW"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-le v1, v3, :cond_35

    .line 103
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setMixedContentMode(I)V

    .line 105
    :cond_35
    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->jsCallNativeInterface:Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Lcom/codemao/nemo/view/X5DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 107
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSavePassword(Z)V

    .line 109
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 111
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 113
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 114
    iget-object v3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v3}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "database"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 118
    iget-object v3, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v3}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cache"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 121
    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 123
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 124
    sget-object v2, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 127
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 129
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 130
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 131
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 133
    iget-object v1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 134
    iget v1, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_c0

    .line 136
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_ed

    :cond_c0
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_ca

    .line 138
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_ed

    :cond_ca
    const/16 v2, 0x78

    if-ne v1, v2, :cond_d4

    .line 140
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->CLOSE:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_ed

    :cond_d4
    const/16 v2, 0x140

    if-ne v1, v2, :cond_de

    .line 142
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_ed

    :cond_de
    const/16 v2, 0xd5

    if-ne v1, v2, :cond_e8

    .line 144
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->FAR:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    goto :goto_ed

    .line 146
    :cond_e8
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;->MEDIUM:Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultZoom(Lcom/tencent/smtt/sdk/WebSettings$ZoomDensity;)V

    .line 149
    :goto_ed
    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$2;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/X5DWebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 166
    new-instance v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$3;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;Lcom/codemao/nemo/view/X5DWebView;)V

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    return-void
.end method

.method public initX5(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->initX5(Lcom/codemao/nemo/view/X5DWebView;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    if-eqz v0, :cond_7

    .line 528
    invoke-virtual {v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->destroy()V

    .line 530
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    if-eqz v0, :cond_13

    .line 531
    invoke-virtual {v0}, Lcom/codemao/nemo/util/MicUtils;->onDestroy()V

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    .line 534
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    if-eqz v0, :cond_1a

    .line 535
    invoke-virtual {v0}, Lcom/codemao/nemo/util/Accelerometer;->stopUpdates()V

    .line 537
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_21

    .line 538
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    .line 540
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 541
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public onPermissonCheckResult(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 583
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->setRecordPermission(Z)V

    goto :goto_17

    .line 585
    :cond_a
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->prepareRecording()V

    .line 586
    iget-object p1, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    const v0, 0x3e99999a  # 0.3f

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/util/MicUtils;->startRecording(F)V

    :goto_17
    return-void
.end method

.method public onResume()V
    .registers 1

    return-void
.end method

.method public pausePlayer()V
    .registers 2

    .line 546
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->pausePalyer()V

    return-void
.end method

.method public reloadUrl()V
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->resetPlayer()V

    return-void
.end method

.method public reportShareWork(J)V
    .registers 5

    .line 612
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$13;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl$13;-><init>(Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public resumePlayer()V
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->resumePalyer()V

    return-void
.end method

.method public setAskDialogPosition(Z)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->setAskDialogPosition(Z)V

    return-void
.end method

.method public setupUserInfo()V
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->setupUserInfo()V

    return-void
.end method

.method public showVKeyboard(Z)V
    .registers 3

    .line 513
    iget-object v0, p0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/util/PlayerNativeCallJsHelper;->toggleKeyboard(Z)V

    return-void
.end method

.method public synCookies(Ljava/lang/String;)V
    .registers 5

    .line 306
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 307
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getTokenBaseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Domain=.codemao.cn;Path = /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_32
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public synCookiesX5(Ljava/lang/String;)V
    .registers 5

    .line 285
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    .line 286
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->getTokenBaseKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";Domain=.codemao.cn;Path = /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_32
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    return-void
.end method
