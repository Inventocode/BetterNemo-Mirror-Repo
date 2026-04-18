.class public Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;
.super Lcom/codemao/nemo/activity/BaseWorkPlayActivity;
.source "NewBeeWorkPlayActivity.java"


# instance fields
.field private downloadImageCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private downloadVideoCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation
.end field

.field private goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

.field private imagePath:Ljava/lang/String;

.field private isCancelDownload:Z

.field private newbeeCachePath:Ljava/lang/String;

.field vToCreate:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private videoPath:Ljava/lang/String;

.field private workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->isCancelDownload:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->showGoCreatePop()V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadBcm()V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->onDownloadError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->enterCreate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->isCancelDownload:Z

    return p0
.end method

.method static synthetic access$202(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->isCancelDownload:Z

    return p1
.end method

.method static synthetic access$300(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadVideoCall:Lretrofit2/Call;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lretrofit2/Call;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadImageCall:Lretrofit2/Call;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/giu/xzz/mvp/MvpActivity;->presenter:Lcom/giu/xzz/mvp/BasePresenter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadGuideImage()V

    return-void
.end method

.method static synthetic access$802(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->videoPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->imagePath:Ljava/lang/String;

    return-object p1
.end method

.method private downloadBcm()V
    .registers 5

    .line 321
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 322
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 323
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsNewbeeGuideShowed()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_26

    .line 325
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 326
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    goto :goto_36

    .line 328
    :cond_26
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getDemo_bcm_version()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getDemoWorkUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 331
    :goto_36
    iput v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 332
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 333
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkPreviewUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    const/4 v1, 0x0

    .line 334
    new-instance v2, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$6;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    const/4 v3, 0x0

    invoke-static {v3, v3, v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method private downloadGuideImage()V
    .registers 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->newbeeCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getCreationToastUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/giu/xzz/utils/MD5Util;->md5ForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 267
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-virtual {v1, v2}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/BcmService;

    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getCreationToastUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/nemo/retrofit/api/BcmService;->downloadFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadImageCall:Lretrofit2/Call;

    .line 268
    new-instance v2, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$4;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_51

    .line 300
    :cond_4c
    iput-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->imagePath:Ljava/lang/String;

    .line 301
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadBcm()V

    :goto_51
    return-void
.end method

.method private downloadVideo()V
    .registers 4

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->newbeeCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/giu/xzz/utils/MD5Util;->md5ForString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 229
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/retrofit/api/BcmService;

    invoke-virtual {v1, v2}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/retrofit/api/BcmService;

    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/codemao/nemo/retrofit/api/BcmService;->downloadFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadVideoCall:Lretrofit2/Call;

    .line 230
    new-instance v2, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$3;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_4e

    .line 259
    :cond_4c
    iput-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->videoPath:Ljava/lang/String;

    :goto_4e
    return-void
.end method

.method private enterCreate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 358
    invoke-static {}, Lcom/codemao/nemo/util/SprefUtil;->getIsNewbeeGuideShowed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 359
    new-instance v1, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v2, 0x2

    .line 360
    iput v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 361
    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/codemao/nemo/util/BcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 362
    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 364
    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getCourseVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/WorksEvent;->setVideo(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getCourseVideoPreviewUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/WorksEvent;->setKeyFrameUrl(Ljava/lang/String;)V

    .line 366
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    if-eqz v0, :cond_6c

    .line 368
    new-instance p1, Lcom/codemao/creativestore/bean/InitNewbeeMsg;

    new-instance v0, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;

    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getInsetJson()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/codemao/creativestore/bean/NewbeeGuideInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/codemao/creativestore/bean/InitNewbeeMsg;-><init>(Lcom/codemao/creativestore/bean/NewbeeGuideInfo;)V

    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkId()J

    move-result-wide v2

    invoke-static {p0, v1, p1, v2, v3}, Lcom/codemao/nemo/util/BcmHelper;->enterNewBee(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/creativestore/bean/InitNewbeeMsg;J)V

    goto :goto_75

    .line 370
    :cond_6c
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkId()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/codemao/nemo/util/BcmHelper;->enterNeebeeWithOutGuide(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;J)V

    .line 372
    :goto_75
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$7;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static gotoPlay(Landroid/app/Activity;Lcom/codemao/nemo/bean/BeginnerRecommendBean;)V
    .registers 6

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    sget v1, Lcom/codemao/nemo/MainApplication;->chromeVersion:I

    const/16 v2, 0x31

    if-ge v1, v2, :cond_13

    const/4 v1, 0x1

    const-string v2, "isX5"

    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    :cond_13
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getPlayerUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkPreviewUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imageUrl"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "shareUrl"

    const-string v2, ""

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkId()J

    move-result-wide v1

    const-string v3, "workId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "workType"

    const-string v2, "NEMO"

    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "workInfo"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onDownloadError()V
    .registers 2

    .line 308
    new-instance v0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$5;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showGoCreatePop()V
    .registers 4

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->isCancelDownload:Z

    .line 196
    invoke-virtual {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->pauseWebview()V

    .line 197
    new-instance v0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    new-instance v1, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$2;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    iget-object v2, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->videoPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;-><init>(Landroid/content/Context;Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    .line 217
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    invoke-direct {v0, p0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    .line 220
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    .line 221
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    .line 84
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0d0178

    goto :goto_d

    :cond_a
    const v0, 0x7f0d0175

    :goto_d
    return v0
.end method

.method public getViewExtraInfo()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 396
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public initSize()V
    .registers 5

    .line 140
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-eqz v0, :cond_5a

    const/high16 v0, 0x42ba0000  # 93.0f

    .line 141
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    mul-int/lit8 v0, v0, 0x7d

    .line 142
    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    .line 143
    iget-boolean v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->isLargePad:Z

    if-nez v0, :cond_45

    .line 146
    iget v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenWitdh:I

    mul-int/lit16 v0, v0, 0x177

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->screenHeight:I

    div-int/2addr v0, v1

    const/16 v2, 0x2df

    if-le v0, v2, :cond_45

    mul-int/lit16 v0, v1, 0x2df

    .line 148
    div-int/lit16 v0, v0, 0x177

    mul-int/lit8 v1, v1, 0x10

    .line 149
    div-int/lit8 v1, v1, 0x9

    sub-int v2, v0, v1

    .line 151
    iget-object v3, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlContent:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->flWeb:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 156
    :cond_45
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrWitdh:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->rlQrcode:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->qrHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_5d

    .line 159
    :cond_5a
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->initSize()V

    :goto_5d
    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "新人player页"

    return-object v0
.end method

.method protected notifyUserInfoChange()V
    .registers 5

    .line 106
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->isLogin()Z

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-nez v0, :cond_36

    .line 108
    :try_start_9
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-nez v0, :cond_30

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xd

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v3, 0x7f0a087e

    .line 111
    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v1, 0x41400000  # 12.0f

    .line 112
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 113
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_30} :catch_30

    .line 119
    :catch_30
    :cond_30
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63

    .line 122
    :cond_36
    :try_start_36
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xf

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 129
    iget-object v1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_5c} :catch_5c

    .line 134
    :catch_5c
    :cond_5c
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->tvLogin:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 89
    invoke-super {p0, p1}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/newbee/video/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->newbeeCachePath:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "workInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->workInfo:Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    .line 93
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkVideoUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->videoPath:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadVideo()V

    .line 95
    iget-object p1, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->vToCreate:Landroid/view/View;

    new-instance v0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity$1;-><init>(Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 165
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onDestroy()V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    if-eqz v0, :cond_11

    .line 168
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->dismiss()V

    .line 170
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadVideoCall:Lretrofit2/Call;

    if-eqz v0, :cond_18

    .line 171
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 173
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->downloadImageCall:Lretrofit2/Call;

    if-eqz v0, :cond_1f

    .line 174
    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    :cond_1f
    return-void
.end method

.method public onDownloadPorgressEvent(Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    iget v1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadSuccessCount:I

    mul-int/lit8 v1, v1, 0x64

    iget p1, p1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;->downloadCount:I

    div-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->setProgress(I)V

    :cond_1c
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 180
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onPause()V

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->onPause()V

    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 188
    invoke-super {p0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    iget-object v0, p0, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->goCreatePop:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->onResume()V

    :cond_12
    return-void
.end method
