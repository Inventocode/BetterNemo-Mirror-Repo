.class public Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "ShareProductKnActivity.java"


# instance fields
.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private data:Lcom/codemao/nemo/bean/WorkShareCompatData;

.field private discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field private handler:Lcom/giu/xzz/utils/HandlerUtil;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/giu/xzz/utils/HandlerUtil<",
            "Lcom/giu/xzz/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;

.field ivBg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivClouds:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivLoading:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivStarsLeft:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivStarsRight:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llUploading:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llUploadingError:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field llUploadingNetError:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

.field mIvTry:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mProgress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field public permissions:[Ljava/lang/String;

.field private screenBitmap:Landroid/graphics/Bitmap;

.field private shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

.field private workId:Ljava/lang/String;

.field private workName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 126
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->permissions:[Ljava/lang/String;

    .line 444
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->share()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->screenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 1

    .line 84
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->onIlleagalCover()V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showGenerateMiaoDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Ljava/lang/String;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/http/DiscoveryNetUtil;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V
    .registers 2

    .line 84
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showByType(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    return-object p0
.end method

.method private bcmUploadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iput-object p1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 343
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workId:Ljava/lang/String;

    .line 344
    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workName:Ljava/lang/String;

    const/4 p1, 0x3

    .line 346
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->sendMessageByType(I)V

    return-void
.end method

.method private generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 545
    invoke-static {p0}, Lcom/codemao/nemo/util/BcmHelper;->getConfigVO(Landroid/content/Context;)Lcom/codemao/nemo/bean/ConfigVO;

    .line 546
    new-instance v0, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;-><init>()V

    .line 547
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_19
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setBcm_version(Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setApp_version(Ljava/lang/String;)V

    .line 549
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setName(Ljava/lang/String;)V

    const-string v1, "android"

    .line 550
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setOs(Ljava/lang/String;)V

    .line 551
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_id(Ljava/lang/String;)V

    .line 552
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setEquipment(Ljava/lang/String;)V

    .line 553
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setWork_url(Ljava/lang/String;)V

    .line 554
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/GetMiaoCodeRequest;->setPreview(Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-nez v1, :cond_4e

    .line 556
    new-instance v1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 558
    :cond_4e
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    invoke-direct {v1, p0, v0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {v1}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initHttpImage(Ljava/lang/String;)V
    .registers 4

    .line 501
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    const v1, 0x7f0e0095

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$7;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$7;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 513
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->submit()Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method

.method private onIlleagalCover()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->reportIllegal(J)V

    .line 215
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_37

    .line 216
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "作品违规，无法被分享"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "知道了"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 217
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$2;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 224
    :cond_37
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->customDialogTypeOne:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private sendMessageByType(I)V
    .registers 3

    .line 351
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 352
    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x1

    .line 353
    iput p1, v0, Landroid/os/Message;->what:I

    .line 354
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private share()V
    .registers 12

    .line 359
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    if-nez v0, :cond_22

    .line 360
    new-instance v0, Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workId:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workName:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->screenBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->imagePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/WorkShareCompatData;->getShareUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v10, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;

    invoke-direct {v10, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;ZZLcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    .line 432
    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 433
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->setWorkName(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->setCoverUrl(Ljava/lang/String;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->show()V

    .line 435
    :cond_3f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$5;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showByType(I)V
    .registers 4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1d

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    if-nez p1, :cond_e

    .line 230
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 232
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$3;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->checkImage(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void

    .line 270
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_4c

    const/4 v1, 0x1

    if-eq p1, v1, :cond_46

    const/4 v1, 0x2

    if-eq p1, v1, :cond_38

    goto :goto_51

    :cond_38
    const-string/jumbo p1, "分享"

    const-string v1, "上传错误2"

    .line 281
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_51

    .line 278
    :cond_46
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploading:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_51

    .line 275
    :cond_4c
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->llUploadingNetError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_51
    return-void
.end method

.method private showGenerateMiaoDialog(I)V
    .registers 4

    .line 517
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    if-nez v0, :cond_28

    .line 518
    new-instance v0, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 519
    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;)V

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeErrorCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;)V

    .line 537
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->mGenerateMiaoCodeDialog:Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_2f

    .line 539
    :cond_28
    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_2f
    return-void
.end method

.method private upload()V
    .registers 3

    .line 290
    invoke-static {p0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 291
    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showByType(I)V

    return-void

    .line 295
    :cond_b
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iget-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->bcmUploadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d005b

    return v0
.end method

.method public finish()V
    .registers 3

    .line 658
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    const v0, 0x7f01000c

    const v1, 0x7f01000d

    .line 659
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "卡片分享页面"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 669
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    const/16 v0, 0x2766

    if-ne p1, v0, :cond_18

    .line 671
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/event/InstallPermissionResult;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Lcom/codemao/nemo/event/InstallPermissionResult;-><init>(I)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    .line 674
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    if-eqz v0, :cond_1f

    .line 675
    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->onActivityResult(IILandroid/content/Intent;)V

    :cond_1f
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_1c

    :pswitch_7  #0x7f0a02f8, 0x7f0a02f9, 0x7f0a02fa, 0x7f0a02fb
    goto :goto_1a

    :pswitch_8  #0x7f0a02fc, 0x7f0a02fd
    const/4 p1, 0x1

    .line 494
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showByType(I)V

    .line 495
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->upload()V

    goto :goto_1a

    .line 489
    :pswitch_10  #0x7f0a02f5, 0x7f0a02f6, 0x7f0a02f7
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    :goto_1a
    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x7f0a02f5
        :pswitch_10  #7f0a02f5
        :pswitch_10  #7f0a02f6
        :pswitch_10  #7f0a02f7
        :pswitch_7  #7f0a02f8
        :pswitch_7  #7f0a02f9
        :pswitch_7  #7f0a02fa
        :pswitch_7  #7f0a02fb
        :pswitch_8  #7f0a02fc
        :pswitch_8  #7f0a02fd
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 153
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-static {}, Lcom/codemao/nemo/util/PermissionUtils;->getImagesStoragePermissions()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->permissions:[Ljava/lang/String;

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/WorkShareCompatData;

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "share_work_no_upload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 162
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    if-eqz p1, :cond_78

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "接收的数据:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "分享"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->data:Lcom/codemao/nemo/bean/WorkShareCompatData;

    iget-object v0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->imagePath:Ljava/lang/String;

    .line 165
    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->workId:Ljava/lang/String;

    .line 167
    :cond_78
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->imagePath:Ljava/lang/String;

    if-eqz p1, :cond_89

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 168
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->imagePath:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->initHttpImage(Ljava/lang/String;)V

    :cond_89
    const/4 p1, 0x1

    .line 170
    invoke-direct {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showByType(I)V

    .line 171
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivLoading:Landroid/widget/ImageView;

    const v0, 0x7f08082b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 173
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const/high16 p1, 0x7f020000

    .line 174
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivClouds:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const v0, 0x7f02001b

    .line 176
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivStarsRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const v1, 0x7f02001c

    .line 178
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivStarsRight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 180
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->ivStarsLeft:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 182
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 183
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    .line 184
    invoke-direct {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->upload()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 593
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->handler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    .line 595
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 597
    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    if-eqz v0, :cond_16

    .line 598
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 600
    :cond_16
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    if-eqz v0, :cond_1d

    .line 601
    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->onDestroy()V

    .line 603
    :cond_1d
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->screenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 604
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->screenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 606
    :cond_2c
    invoke-super {p0}, Lcom/giu/xzz/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 638
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 639
    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/EasyPermissions;->onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    .line 640
    array-length p1, p3

    if-lez p1, :cond_1b

    aget p1, p3, v1

    if-nez p1, :cond_1b

    .line 641
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    if-eqz p1, :cond_47

    .line 642
    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->continueShare()V

    goto :goto_47

    .line 644
    :cond_1b
    array-length p1, p3

    const-string/jumbo p2, "无访问权限，图片保存失败"

    if-lez p1, :cond_44

    aget p1, p3, v1

    const/4 p3, -0x1

    if-ne p1, p3, :cond_44

    .line 645
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->getCurType()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3d

    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->shareCardDialog:Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->getCurType()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_39

    goto :goto_3d

    .line 648
    :cond_39
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_47

    :cond_3d
    :goto_3d
    const-string/jumbo p1, "无访问权限，图片分享失败"

    .line 646
    invoke-static {p0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_47

    .line 651
    :cond_44
    invoke-static {p0, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_47
    :goto_47
    return-void
.end method

.method public onUploadPorgressEvent(Lcom/codemao/nemo/event/UploadPorgressEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 p1, 0x0

    .line 615
    throw p1
.end method

.method public reportIllegal(J)V
    .registers 4

    .line 188
    invoke-static {}, Lcom/codemao/nemo/bean/ChainParam;->create()Lcom/codemao/nemo/bean/ChainParam;

    move-result-object v0

    .line 189
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "work_id"

    invoke-virtual {v0, p2, p1}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string p1, "report_reason"

    const-string/jumbo p2, "封面违规"

    .line 190
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    const-string p1, "report_describe"

    const-string/jumbo p2, "分享本地作品时发现封面违规"

    .line 191
    invoke-virtual {v0, p1, p2}, Lcom/codemao/nemo/bean/ChainParam;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/codemao/nemo/bean/ChainParam;

    .line 192
    invoke-static {}, Lcom/giu/xzz/http/RetrofitManager;->get()Lcom/giu/xzz/http/RetrofitManager;

    move-result-object p1

    const-class p2, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {p1, p2}, Lcom/giu/xzz/http/RetrofitManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/retrofit/api/DiscoveryService;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ChainParam;->map()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codemao/nemo/retrofit/api/DiscoveryService;->tipOffWork(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    .line 193
    invoke-static {}, Lcom/giu/xzz/http/transform/ThreadTransformer;->create()Lcom/giu/xzz/http/transform/ThreadTransformer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$1;

    invoke-direct {p2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V

    .line 194
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected screenFull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected statusFontMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
