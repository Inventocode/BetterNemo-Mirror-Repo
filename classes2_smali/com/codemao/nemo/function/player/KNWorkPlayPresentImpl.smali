.class public Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;
.super Ljava/lang/Object;
.source "KNWorkPlayPresentImpl.java"

# interfaces
.implements Lcom/giu/xzz/mvp/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;
    }
.end annotation


# instance fields
.field private accelerometer:Lcom/codemao/nemo/util/Accelerometer;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;

.field private mic:Lcom/codemao/nemo/util/MicUtils;

.field private nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

.field private shareModel:Lcom/codemao/nemo/bean/ShareModel;

.field private workId:J

.field private workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

.field private workType:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$5QjU9wKZbc-V5dgi7iKXRnaFCqo(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->lambda$getScreenShootFromWeb$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;JLjava/lang/String;)V
    .registers 6

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/codemao/nemo/util/MicUtils;

    invoke-direct {v0}, Lcom/codemao/nemo/util/MicUtils;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    .line 67
    iput-wide p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workId:J

    .line 68
    iput-object p4, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workType:Ljava/lang/String;

    .line 69
    new-instance p2, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 70
    new-instance p1, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-direct {p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    .line 71
    new-instance p1, Lcom/codemao/nemo/util/Accelerometer;

    iget-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/nemo/util/Accelerometer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    .line 72
    invoke-direct {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->initJsCallNative()V

    .line 73
    new-instance p1, Lcom/giu/xzz/utils/HandlerUtil;

    iget-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    new-instance p3, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;

    invoke-direct {p3, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$1;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-direct {p1, p2, p3}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/bean/ShareModel;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/Accelerometer;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)Lcom/codemao/nemo/util/MicUtils;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    return-object p0
.end method

.method private getTokenBaseKey()Ljava/lang/String;
    .registers 3

    .line 187
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "dev-authorization"

    return-object v0

    .line 189
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

    .line 191
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

    .line 227
    new-instance v0, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$4;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-direct {v0, v1}, Lcom/codemao/nemo/util/PlayerJsCallNativeInterface;-><init>(Lcom/codemao/nemo/util/PlayerJsCallNativeInterface$JsCallNativeCallBack;)V

    return-void
.end method

.method private synthetic lambda$getScreenShootFromWeb$0(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 493
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {v0, p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->createScreenShot(Ljava/lang/String;)V

    goto :goto_1e

    .line 495
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->hideLoadingDialog()V

    .line 496
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    const-string v0, "截图失败，请重试！"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showCenterShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public changeCollectStatus(JZ)V
    .registers 5

    if-eqz p3, :cond_16

    .line 321
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击取消收藏"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 322
    iget-object p3, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$5;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelCollectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_29

    .line 341
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击收藏"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 342
    iget-object p3, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$6;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$6;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->collectWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_29
    return-void
.end method

.method public changePraiseStatus(JZ)V
    .registers 5

    if-eqz p3, :cond_16

    .line 365
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击取消点赞"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 366
    iget-object p3, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$7;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->cancelPraiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    goto :goto_29

    .line 386
    :cond_16
    invoke-virtual {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getReportParams()Ljava/util/Map;

    move-result-object p3

    const-string v0, "Player页-点击点赞"

    invoke-static {v0, p3}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 387
    iget-object p3, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$8;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$8;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->praiseWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :goto_29
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

    .line 521
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workType:Ljava/lang/String;

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

.method public getScreenShootFromWeb(Lcom/codemao/toolssdk/cpp/view/WoodWebView;)V
    .registers 4

    .line 491
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->getScreenShot(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public init(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->init(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    return-void
.end method

.method public initShareModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    if-nez v0, :cond_c

    .line 460
    new-instance v0, Lcom/codemao/nemo/bean/ShareModel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/codemao/nemo/bean/ShareModel;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    .line 462
    :cond_c
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/bean/ShareModel;->setCopyLink(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p1, p3}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrl(Ljava/lang/String;)V

    .line 465
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    iget-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p2}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120335

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/bean/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 467
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object p2, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->shareModel:Lcom/codemao/nemo/bean/ShareModel;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/bean/ShareModel;->setImgUrls(Ljava/util/ArrayList;)V

    .line 470
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->workPlayView:Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;

    invoke-interface {p1}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$WorkPlayView;->getActivity()Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 472
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;

    const/16 p3, 0x78

    invoke-direct {p2, p0, p3, p3}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$9;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;II)V

    .line 473
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    if-eqz v0, :cond_7

    .line 424
    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->destroy()V

    .line 426
    :cond_7
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    if-eqz v0, :cond_13

    .line 427
    invoke-virtual {v0}, Lcom/codemao/nemo/util/MicUtils;->onDestroy()V

    .line 428
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    invoke-virtual {v0}, Lcom/codemao/nemo/util/MicUtils;->stopRecording()V

    .line 430
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->accelerometer:Lcom/codemao/nemo/util/Accelerometer;

    if-eqz v0, :cond_1a

    .line 431
    invoke-virtual {v0}, Lcom/codemao/nemo/util/Accelerometer;->stopUpdates()V

    .line 433
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-eqz v0, :cond_21

    .line 434
    invoke-virtual {v0}, Lcom/codemao/nemo/http/NetUtils;->dispose()V

    .line 436
    :cond_21
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 437
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public onPermissonCheckResult(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    .line 483
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setRecordPermission(Z)V

    goto :goto_17

    .line 485
    :cond_a
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

    invoke-virtual {p1}, Lcom/codemao/nemo/util/MicUtils;->prepareRecording()V

    .line 486
    iget-object p1, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->mic:Lcom/codemao/nemo/util/MicUtils;

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

    .line 446
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->pausePalyer()V

    return-void
.end method

.method public reportShareWork(J)V
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v1, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$10;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl$10;-><init>(Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public resumePlayer()V
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->resumePalyer()V

    return-void
.end method

.method public setAskDialogPosition(Z)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setAskDialogPosition(Z)V

    return-void
.end method

.method public setupUserInfo()V
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->nativeCallJsHelper:Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;

    invoke-virtual {v0}, Lcom/codemao/nemo/function/player/KNPlayerNativeCallJsHelper;->setupUserInfo()V

    return-void
.end method

.method public synCookies(Ljava/lang/String;)V
    .registers 5

    .line 199
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 200
    invoke-static {}, Lcn/codemao/android/account/CodeMaoAccount;->getAccountToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/function/player/KNWorkPlayPresentImpl;->getTokenBaseKey()Ljava/lang/String;

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

    .line 203
    :cond_32
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method
