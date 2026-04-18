.class public Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;
.super Ljava/lang/Object;
.source "CreativeBcmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;
    }
.end annotation


# static fields
.field public static BASE_PATH:Ljava/lang/String; = ""

.field public static DOWNLOADING_BCM_ID:Ljava/lang/String; = null

.field public static DOWNLOAD_DATAS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field public static FIRST_ENTER:Z = false

.field public static HAS_BCM_DOWNLOAD:Z = false

.field public static UPLOAD_DATAS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation
.end field

.field public static USER_DIR:Ljava/lang/String; = ""

.field public static USER_IMAGE_PATH:Ljava/lang/String; = ""

.field public static USER_WORKS_PATH:Ljava/lang/String; = ""

.field private static bucket_url:Ljava/lang/String;

.field private static downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static downloadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static localBcmNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static localBcmUUID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static totalIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static uploadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static uploadUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8ZaFRptPO2MIHNmxjtesmFSFEzo(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$onDownloadSuccess$2(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AMbZrXT0Flnyw6E6EUqu1F7fJ1M(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$onDownloadError$0(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDXEt59lsbYiNFvMDGdsLngxgtY()V
    .registers 0

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$deleteUnLoginDirectory$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$NUufgpKPRb0D7zXM8ga92hzYW0k(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$uploadBcm$3(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y6COCc27XbhaOwc61npJ-gxJamc(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$onDownloadBcmError$1(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ds8z13CZLGiWGd0sU0C7e5MTwTw(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$uploadCoverSuccess$4(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s8MbyQSP_nx-dDGDKmiEJeEqfl4(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->lambda$uploadCoverSuccess$5(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->totalIds:Ljava/util/Set;

    const/4 v0, 0x1

    .line 132
    sput-boolean v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->FIRST_ENTER:Z

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->UPLOAD_DATAS:Ljava/util/List;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadUrls:Ljava/util/List;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadBcmImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V
    .registers 3

    .line 103
    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onDownloadError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    .registers 11

    .line 103
    invoke-static/range {p0 .. p10}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->doUploadSound(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/lang/Runnable;)V
    .registers 1

    .line 103
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 8

    .line 103
    invoke-static/range {p0 .. p7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmAndCover(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->bucket_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 103
    sput-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->bucket_url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(ZZIZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 10

    .line 103
    invoke-static/range {p0 .. p9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCoverSuccess(ZZIZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 4

    .line 103
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    return-void
.end method

.method static synthetic access$1800()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/List;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadUrls:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 5

    .line 103
    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    return-void
.end method

.method static synthetic access$2000(Ljava/lang/String;ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onSuccessSaveWork(Ljava/lang/String;ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 4

    .line 103
    invoke-static {p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 103
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static/range {p0 .. p8}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadImgs(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .registers 1

    .line 103
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-static/range {p0 .. p7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onDownloadSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V
    .registers 3

    .line 103
    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onDownloadBcmError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V

    return-void
.end method

.method private static addLocalBcmNames(Ljava/lang/String;)V
    .registers 2

    .line 269
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 270
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-void
.end method

.method public static bindUrlWorkId(Ljava/lang/String;)V
    .registers 3

    .line 1746
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadUrls:Ljava/util/List;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_b

    goto :goto_2a

    .line 1749
    :cond_b
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadUrls:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 1751
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p0

    const-class v1, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-interface {p0, v0}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->bindURlWorkId(Lcom/codemao/creativecenter/utils/bcm/bean/BindUrlWorkIdInfo;)Lretrofit2/Call;

    move-result-object p0

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$12;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$12;-><init>()V

    invoke-interface {p0, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static cancelDownloadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 1422
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->cancelDownloadById(Ljava/lang/String;)V

    .line 1423
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static cancelUploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 1427
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 1428
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public static continueDownload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 8

    .line 866
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 867
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 868
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 869
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const/4 p1, 0x0

    .line 870
    invoke-static {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void

    .line 874
    :cond_2a
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".cover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    const/4 v1, 0x2

    .line 876
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$4;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    invoke-static {v1, p0, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    return-void

    .line 889
    :cond_61
    invoke-static {p0, v0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method private static continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 927
    iput-boolean v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/codemao/creativestore/bean/BcmVO;

    .line 930
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    .line 931
    invoke-virtual/range {p5 .. p5}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v14

    .line 932
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 933
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/record/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 937
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 938
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v0

    const-string v9, "."

    const-string v8, "http"

    if-eqz v0, :cond_f4

    .line 940
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 942
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_81
    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 943
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/SoundVO;

    if-eqz v3, :cond_81

    .line 944
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 946
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 947
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_ea

    .line 949
    :cond_cc
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v6

    iget-object v6, v6, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 951
    :goto_ea
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_81

    .line 952
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 959
    :cond_f4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 960
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_101
    :goto_101
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_173

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 961
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz v3, :cond_131

    .line 962
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_131

    .line 963
    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v2, :cond_12d

    .line 964
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_101

    .line 965
    :cond_12d
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_101

    :cond_131
    if-eqz v3, :cond_101

    .line 967
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_101

    .line 968
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->isLocalBaseMaterial(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_101

    .line 969
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    iget-object v5, v5, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_101

    .line 971
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_101

    .line 977
    :cond_173
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 978
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 980
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadProgressEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 981
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_1bd

    const/4 v0, 0x2

    .line 982
    iput v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 983
    invoke-static/range {p1 .. p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 984
    iget-object v1, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onDownloadSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void

    :cond_1bd
    const/4 v0, 0x1

    .line 987
    iput v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 989
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_284

    .line 990
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1ca
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SoundVO;

    const/4 v1, 0x4

    .line 992
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e6

    const/4 v1, 0x5

    const/4 v6, 0x5

    goto :goto_1e7

    :cond_1e6
    const/4 v6, 0x4

    .line 998
    :goto_1e7
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_213

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_245

    .line 1002
    :cond_213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_245
    move-object v5, v0

    move-object v4, v1

    .line 1006
    new-instance v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;

    move-object v0, v3

    move-object v1, v10

    move-object/from16 v2, p0

    move-object v12, v3

    move-object/from16 v3, p1

    move-object/from16 v17, v15

    move-object v15, v4

    move-object/from16 v4, p2

    move-object v11, v5

    move-object/from16 v5, p3

    move-object/from16 v18, v11

    move v11, v6

    move-object/from16 v6, p4

    move-object/from16 v19, v7

    move-object/from16 v7, p5

    move-object/from16 v20, v8

    move-object v8, v13

    move-object/from16 v21, v9

    move-object v9, v14

    move-object/from16 v22, v10

    move-object/from16 v10, v19

    invoke-direct/range {v0 .. v10}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$5;-><init>(Ljava/util/ArrayList;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V

    move-object/from16 v1, p1

    move-object/from16 v0, v18

    invoke-static {v11, v1, v0, v15, v12}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    move-object/from16 v12, p2

    move-object v11, v1

    move-object/from16 v15, v17

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    goto/16 :goto_1ca

    :cond_284
    move-object/from16 v19, v7

    move-object v1, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v13

    move-object v7, v14

    move-object/from16 v8, v19

    .line 1029
    invoke-static/range {v0 .. v8}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadImgs(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V

    :cond_29a
    return-void
.end method

.method private static continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 4

    .line 894
    :try_start_0
    invoke-static {p0, p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadBcmImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception p0

    .line 896
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;->onError(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public static copyBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 2

    const-string v0, ""

    .line 1295
    invoke-static {p0, v0, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p0

    return-object p0
.end method

.method public static copyBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1311
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1312
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUUID(Ljava/util/List;)I

    move-result v2

    goto :goto_1c

    .line 1315
    :cond_11
    :try_start_11
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1c

    .line 1317
    :catch_16
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUUID(Ljava/util/List;)I

    move-result v2

    .line 1321
    :goto_1c
    iget-object v3, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "user_works"

    if-eqz v5, :cond_32

    sget-object v5, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    goto :goto_38

    :cond_32
    sget-object v5, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    :goto_38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1324
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_55

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    goto :goto_5b

    :cond_55
    sget-object v8, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-virtual {v8, v6, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :goto_5b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1326
    :try_start_6e
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7c

    iget-object v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7e

    :cond_7c
    iget-object v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1328
    :goto_7e
    new-instance v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v7}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 1329
    iget-boolean v8, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_85} :catch_2a7

    const/4 v9, 0x2

    const-string v10, ".meta"

    const-string v11, ".bcm"

    const-string v13, ".cover"

    if-eqz v8, :cond_11a

    .line 1330
    :try_start_8e
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 1331
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v15, v12}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFilesAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1332
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v14, v15}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFilesAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1333
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v5, v8, v10}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->parseMeta(ZLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v8

    .line 1334
    iget-wide v14, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    iput-wide v14, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 1335
    iput v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    goto/16 :goto_1e0

    .line 1337
    :cond_11a
    iget v8, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    if-ne v8, v9, :cond_122

    const/4 v8, 0x3

    .line 1338
    iput v8, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    goto :goto_124

    .line 1340
    :cond_122
    iput v8, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 1342
    :goto_124
    iget-wide v14, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    iput-wide v14, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 1343
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v8, v12, v14}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1344
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-class v12, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v8, v12}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/BcmVO;

    .line 1345
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/BcmVO;->getVariable()Lcom/codemao/creativestore/bean/VariablesVO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/codemao/creativestore/bean/VariablesVO;->getVariable_dict()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_171
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1346
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/codemao/creativestore/bean/VariableVO;

    .line 1347
    invoke-virtual {v14}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v15

    const-string v9, "public"

    invoke-static {v15, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_19b

    invoke-virtual {v14}, Lcom/codemao/creativestore/bean/VariableVO;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v15, "private"

    invoke-static {v9, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1a3

    :cond_19b
    const/4 v9, 0x0

    .line 1348
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/codemao/creativestore/bean/VariableVO;->setValue(Ljava/lang/Object;)V

    :cond_1a3
    const/4 v9, 0x2

    goto :goto_171

    .line 1351
    :cond_1a5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v8

    .line 1353
    invoke-static {v3, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    :goto_1e0
    iget-object v9, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    iput-object v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 1356
    iput-object v5, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1357
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 1358
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/codemao/creativecenter/utils/DateFormats;->formatYmdHm(J)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    .line 1359
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    .line 1360
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1361
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v9

    const-string v10, "block_cnt"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1362
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v10

    const-string v11, "entity_cnt"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1363
    instance-of v11, v9, Ljava/lang/Double;

    if-eqz v11, :cond_245

    .line 1364
    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    double-to-int v9, v11

    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_255

    .line 1365
    :cond_245
    instance-of v11, v9, Ljava/lang/Integer;

    if-eqz v11, :cond_252

    .line 1366
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_255

    :cond_252
    const/4 v9, 0x0

    .line 1368
    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 1370
    :goto_255
    instance-of v9, v10, Ljava/lang/Double;

    if-eqz v9, :cond_264

    .line 1371
    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    double-to-int v9, v9

    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    :goto_262
    const/4 v9, 0x0

    goto :goto_274

    .line 1372
    :cond_264
    instance-of v9, v10, Ljava/lang/Integer;

    if-eqz v9, :cond_271

    .line 1373
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    goto :goto_262

    :cond_271
    const/4 v9, 0x0

    .line 1375
    iput v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 1377
    :goto_274
    iput v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v6, 0x2

    .line 1378
    iput v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1379
    iput-boolean v9, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 1380
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->getPublish_preview()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 1381
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->getParent_id()Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    .line 1382
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape()Z

    move-result v6

    iput-boolean v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    .line 1383
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit()Z

    move-result v6

    iput-boolean v6, v7, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z

    .line 1384
    sget-object v6, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    .line 1387
    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v0, :cond_2a6

    .line 1388
    invoke-static {v3, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyToUserImg(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_2a6} :catch_2a7

    :cond_2a6
    return-object v7

    :catch_2a7
    move-exception v0

    .line 1391
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1392
    invoke-static {v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteErrorWork(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static copyMeta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2461
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->parseMeta(ZLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object p0

    return-object p0
.end method

.method private static copyRecord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/record/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1404
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1406
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1407
    array-length v1, v1

    if-lez v1, :cond_58

    .line 1408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1409
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    .line 1412
    :try_start_50
    invoke-static {v0, p0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p0

    .line 1414
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_58
    :goto_58
    return-void
.end method

.method public static copyToUserImg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ".webp"

    const-string v1, "/"

    .line 2234
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".userimg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 2236
    new-instance v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    .line 2237
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->parseUserImg(Ljava/lang/String;)Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object p0

    .line 2239
    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object p0

    .line 2241
    :try_start_41
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cf

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2242
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2243
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "user_material"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2244
    new-instance v9, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-direct {v9}, Lcom/codemao/creativestore/bean/ImgDictVO;-><init>()V

    .line 2245
    invoke-virtual {v9, v6}, Lcom/codemao/creativestore/bean/ImgDictVO;->setId(Ljava/lang/String;)V

    .line 2246
    invoke-virtual {v9, v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    .line 2247
    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-static {v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFiles(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto/16 :goto_49

    .line 2250
    :cond_cf
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_d2} :catch_ee

    .line 2261
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13b

    :catch_ee
    move-exception p0

    .line 2252
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f7
    :goto_f7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2254
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 2256
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_f7

    .line 2259
    :cond_13a
    throw p0

    :cond_13b
    :goto_13b
    const/4 p0, 0x1

    return p0
.end method

.method public static createNewPath()Ljava/lang/String;
    .registers 3

    .line 2107
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUUID(Ljava/util/List;)I

    move-result v0

    .line 2108
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2109
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->initPath()V

    .line 2111
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createNewPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2088
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUUID(Ljava/util/List;)I

    move-result v0

    .line 2089
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2090
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->initPath()V

    .line 2092
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    const-string v3, "user_works"

    invoke-virtual {v2, v3, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1244
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    return-object v0
.end method

.method public static deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z
    .registers 6

    .line 1440
    iget v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    .line 1441
    :cond_8
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->cancelDownloadById(Ljava/lang/String;)V

    .line 1442
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 1445
    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1447
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1448
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1449
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 1451
    :try_start_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bcm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_4b

    goto :goto_4c

    :catch_4b
    const/4 v1, 0x0

    .line 1457
    :goto_4c
    :try_start_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".cover"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    const/4 v1, 0x0

    .line 1462
    :goto_62
    :try_start_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".meta"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_76} :catch_77

    goto :goto_78

    :catch_77
    const/4 v1, 0x0

    .line 1467
    :goto_78
    :try_start_78
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteUserImage(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_7d

    :catch_7c
    const/4 v1, 0x0

    .line 1473
    :goto_7d
    :try_start_7d
    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    move v2, v1

    :catch_81
    return v2
.end method

.method public static deleteCustomBcms(Ljava/lang/String;)V
    .registers 2

    .line 2100
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getCustomWorks(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2101
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 2102
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    goto :goto_8

    :cond_18
    return-void
.end method

.method private static deleteErrorWork(Ljava/lang/String;)V
    .registers 5

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 454
    :try_start_29
    const-class v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v1, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 455
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_80

    .line 456
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 457
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_7b} :catch_7c

    goto :goto_47

    :catch_7c
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    :cond_80
    invoke-static {p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteDirectory(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteUnLoginDirectory()V
    .registers 1

    .line 2303
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda7;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda7;

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteUserImage(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2269
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".userimg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2270
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->parseUserImg(Ljava/lang/String;)Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object p0

    .line 2272
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2274
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2276
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_3b

    .line 2279
    :cond_80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_83
    return-void
.end method

.method private static doUploadSound(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "ZI",
            "Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/BcmVO;",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;",
            "Lcom/codemao/creativestore/bean/UserImgDictVO;",
            ")V"
        }
    .end annotation

    .line 1582
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    .line 1584
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object/from16 v5, p7

    move v6, p4

    move v7, p3

    move-object/from16 v8, p6

    move-object v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$9;-><init>(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p8

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSounds(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    goto :goto_32

    :cond_25
    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move v4, p4

    move v5, p3

    move-object/from16 v6, p6

    move-object v7, p5

    .line 1596
    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcmAndCover(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    :goto_32
    return-void
.end method

.method public static download(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v3, ""

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .line 668
    invoke-static/range {v0 .. v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public static download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 12

    const/4 v0, 0x0

    const-string v3, ""

    move v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 673
    invoke-static/range {v0 .. v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public static download(ZZZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 15

    const-string v4, ""

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 683
    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method

.method public static download(ZZZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 14

    .line 699
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 700
    iget-object v0, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    if-eqz p2, :cond_18

    .line 703
    iget-object p2, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 704
    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    goto :goto_21

    .line 706
    :cond_18
    iget-object p2, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object p2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 707
    iget-object p2, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    .line 710
    :goto_21
    iget-object p2, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 711
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".cover"

    if-eqz v0, :cond_54

    if-nez p1, :cond_45

    .line 713
    iget-object p1, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 714
    iget-object p1, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    aget-object p1, p1, p4

    if-eqz p6, :cond_49

    .line 716
    invoke-virtual {p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object p2

    goto :goto_49

    .line 720
    :cond_45
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath()Ljava/lang/String;

    move-result-object p1

    :cond_49
    :goto_49
    move-object p4, p1

    .line 724
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 725
    invoke-static {p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->createNewPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 731
    :cond_54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const/4 p1, 0x1

    .line 732
    iput p1, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 733
    iget-object v0, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 736
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/codemao/creativecenter/utils/DateFormats;->formatYmdHmsS(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    .line 737
    iget-boolean v0, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 739
    iput-object p2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    if-eqz p6, :cond_b3

    .line 741
    invoke-virtual {p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_b7

    .line 744
    :cond_b3
    iget-object v0, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    iput-object v0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    :goto_b7
    if-eqz p0, :cond_bd

    .line 747
    iget-object p0, p5, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object p0, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 749
    :cond_bd
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d5

    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isLogin()Z

    move-result p0

    if-eqz p0, :cond_d5

    .line 750
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p3, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    invoke-direct {p3, v2}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {p0, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 752
    :cond_d5
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".bcm"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;

    move-object v0, p3

    move-object v1, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$3;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    invoke-static {p1, p5, p2, p0, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    return-void
.end method

.method private static downloadBcmImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 901
    new-instance v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    .line 902
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".userimg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    :cond_38
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 905
    invoke-static/range {v1 .. v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->continueDownloadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    return-void
.end method

.method private static downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 8

    .line 1252
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "https:/"

    .line 1253
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "https://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1254
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1a
    const-string v0, "http:/"

    .line 1256
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1257
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1260
    :cond_2e
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-interface {v0, p2}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->downloadFile(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p2

    .line 1261
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$7;-><init>(ILjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-interface {p2, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 1290
    iget-object p0, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->addDownloadCall(Ljava/lang/String;Lretrofit2/Call;)V

    return-void
.end method

.method private static downloadImgs(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/util/ArrayList;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;",
            "Lcom/codemao/creativestore/bean/UserImgDictVO;",
            "Lcom/codemao/creativestore/bean/BcmVO;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ImgDictVO;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v10, p1

    .line 1034
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1035
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/codemao/creativestore/bean/StyleVO;

    .line 1036
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->justDownloadImg(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/lang/String;Lcom/codemao/creativestore/bean/StyleVO;)V

    goto :goto_b

    .line 1039
    :cond_2c
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    const/4 v0, 0x2

    .line 1040
    iput v0, v10, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 1041
    iget-object v0, v10, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    .line 1042
    iget-object v1, v10, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    const/4 v3, 0x1

    goto :goto_46

    :cond_44
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_46
    move-object v0, p0

    move-object v2, p2

    move-object/from16 v4, p6

    move-object v5, p1

    move-object/from16 v6, p4

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onDownloadSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    :cond_51
    return-void
.end method

.method private static extractedFromFile(Ljava/io/File;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 17

    const-string v1, "have_uploaded"

    .line 510
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_366

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_366

    .line 511
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 515
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_16
    const-string v6, ""

    const/4 v7, 0x1

    if-ge v5, v3, :cond_51

    aget-object v8, v0, v5

    const-string v9, "bcmc"

    .line 516
    invoke-static {v8, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_41

    const-string v9, "metac"

    invoke-static {v8, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_41

    const-string v9, "userimgc"

    invoke-static {v8, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_41

    const-string v9, "coverc"

    invoke-static {v8, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    goto :goto_41

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 518
    :cond_41
    :goto_41
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "."

    .line 519
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    goto :goto_53

    :cond_51
    move-object v3, v6

    const/4 v5, 0x0

    :goto_53
    const-string v8, ".cover"

    const-string v9, ".meta"

    if-eqz v5, :cond_e9

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".bcmc"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".bcm"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".metac"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".userimgc"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".userimg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".coverc"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_e9
    array-length v0, v0

    if-gtz v0, :cond_f4

    .line 532
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteErrorWork(Ljava/lang/String;)V

    return-object v2

    .line 535
    :cond_f4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12f

    .line 538
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteErrorWork(Ljava/lang/String;)V

    return-object v2

    .line 542
    :cond_12f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 543
    array-length v5, v3

    const/4 v10, 0x0

    :goto_135
    if-ge v10, v5, :cond_366

    aget-object v0, v3, v10

    .line 544
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_35d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_35d

    const-string v11, "bcm"

    .line 545
    invoke-static {v0, v11}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_35d

    .line 547
    new-instance v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v11}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 548
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 549
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/codemao/creativecenter/utils/DateFormats;->formatYmdHmsS(J)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->modifiedTime:Ljava/lang/String;

    .line 552
    :try_start_175
    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class v14, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v13, v14}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codemao/creativestore/bean/MetaVO;

    .line 553
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_name()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 554
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getType()I

    move-result v14

    iput v14, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 555
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 556
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v14

    iput-object v14, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    .line 563
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v14

    const-string v15, "work_id"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_220

    .line 565
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_1d4

    .line 566
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v14, Ljava/lang/Double;
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_175 .. :try_end_1c0} :catch_356

    move-object/from16 p0, v3

    :try_start_1c2
    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_222

    :cond_1d4
    move-object/from16 p0, v3

    .line 568
    instance-of v2, v14, Ljava/lang/Long;

    if-eqz v2, :cond_1ec

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_222

    .line 570
    :cond_1ec
    instance-of v2, v14, Ljava/lang/Integer;

    if-eqz v2, :cond_202

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_222

    .line 573
    :cond_202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    goto :goto_222

    :cond_220
    move-object/from16 p0, v3

    .line 576
    :goto_222
    iget-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_239

    .line 577
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->totalIds:Ljava/util/Set;

    iget-object v3, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_239
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getParent_id()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-eqz v2, :cond_246

    .line 581
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->totalIds:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_246
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getPublish_status()I

    move-result v2

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 585
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v2

    const-string v3, "block_cnt"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 586
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v3

    const-string v14, "entity_cnt"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 587
    instance-of v14, v2, Ljava/lang/Double;

    if-eqz v14, :cond_26e

    .line 588
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    double-to-int v2, v14

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_27d

    .line 589
    :cond_26e
    instance-of v14, v2, Ljava/lang/Integer;

    if-eqz v14, :cond_27b

    .line 590
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_27d

    .line 592
    :cond_27b
    iput v4, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 594
    :goto_27d
    instance-of v2, v3, Ljava/lang/Double;

    if-eqz v2, :cond_28b

    .line 595
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    goto :goto_29a

    .line 596
    :cond_28b
    instance-of v2, v3, Ljava/lang/Integer;

    if-eqz v2, :cond_298

    .line 597
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    goto :goto_29a

    .line 599
    :cond_298
    iput v4, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 601
    :goto_29a
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->isHave_published_status()Z

    move-result v2

    iput-boolean v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 602
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getParent_id()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    .line 603
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_url()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 605
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getPublish_preview()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 606
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getTemplate_id()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 607
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getDesc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    .line 608
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 609
    instance-of v3, v2, Ljava/lang/Double;

    const/4 v14, 0x2

    if-eqz v3, :cond_2d4

    .line 610
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->intValue()I

    move-result v2

    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    goto :goto_2e5

    .line 611
    :cond_2d4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2e5

    .line 612
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e2

    const/4 v2, 0x2

    goto :goto_2e3

    :cond_2e2
    const/4 v2, 0x1

    :goto_2e3
    iput v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 615
    :cond_2e5
    :goto_2e5
    sget-boolean v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->FIRST_ENTER:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_316

    iget v2, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-ne v2, v3, :cond_316

    .line 616
    iput v7, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 617
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v12, v13}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_316
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->isDownload_fail()Z

    move-result v2

    if-eqz v2, :cond_31d

    const/4 v14, 0x3

    :cond_31d
    iput v14, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 621
    iput-boolean v4, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 624
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V
    :try_end_328
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_328} :catch_354

    .line 626
    :try_start_328
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 627
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_339
    .catch Ljava/lang/Exception; {:try_start_328 .. :try_end_339} :catch_33a

    goto :goto_347

    .line 629
    :catch_33a
    :try_start_33a
    iget-object v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    if-eqz v0, :cond_347

    .line 630
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    :cond_347
    :goto_347
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape()Z

    move-result v0

    iput-boolean v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    .line 634
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit()Z

    move-result v0

    iput-boolean v0, v11, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z
    :try_end_353
    .catch Ljava/lang/Exception; {:try_start_33a .. :try_end_353} :catch_354

    return-object v11

    :catch_354
    move-exception v0

    goto :goto_359

    :catch_356
    move-exception v0

    move-object/from16 p0, v3

    .line 637
    :goto_359
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35f

    :cond_35d
    move-object/from16 p0, v3

    :goto_35f
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, p0

    const/4 v2, 0x0

    goto/16 :goto_135

    :cond_366
    move-object v1, v2

    return-object v1
.end method

.method public static getBasePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 2445
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->BASE_PATH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const-string v0, "nemo_users_db"

    const-string v1, "/"

    if-eqz p0, :cond_27

    .line 2447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->BASE_PATH:Ljava/lang/String;

    goto :goto_47

    .line 2449
    :cond_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/CreativeStoreUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->BASE_PATH:Ljava/lang/String;

    .line 2453
    :cond_47
    :goto_47
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->BASE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static getBcmByUuid(Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 6

    .line 380
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 382
    :try_start_5
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v1

    .line 383
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 384
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    if-eqz v3, :cond_d

    return-object v2

    :catch_2f
    move-exception v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "user_works"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cover"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getBcmCloudHistory(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;)V
    .registers 4

    .line 2595
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v0

    const-class v1, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    .line 2596
    invoke-interface {v0, p0}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->getBcmCloudWorksHistory(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 2597
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$21;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/GetBcmCloudHistoryInterface;)V

    .line 2598
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static getBcms()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 304
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBcms(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    .line 313
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 315
    :try_start_5
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 316
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->totalIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 318
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->initPath()V

    .line 319
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "unlogin"

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 320
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->loadBcmListByPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_32
    const-string v0, "webview/res/template_bcm"

    .line 322
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->loadBcmByAssets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    goto :goto_43

    :catch_3c
    move-exception v0

    const/4 v1, 0x0

    .line 324
    sput-boolean v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->FIRST_ENTER:Z

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_43
    return-object p0
.end method

.method public static getCustomBcmByUuid(Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 7

    .line 362
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 364
    :try_start_5
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getCustomWorks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 365
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 366
    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2f

    if-eqz v3, :cond_d

    return-object v2

    :catch_2f
    move-exception v1

    .line 371
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomBcmByUuid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->e(Ljava/lang/String;)V

    .line 374
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".cover"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomDirPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    const-string v2, "user_works"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomWorks(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    :try_start_5
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->initPath()V

    .line 335
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 336
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    const-string v2, "user_works"

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->loadBcmListByPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-object v0
.end method

.method private static getMaxIndex(Ljava/lang/String;)I
    .registers 7

    .line 2171
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5b

    :cond_c
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2175
    :goto_e
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5a

    .line 2176
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2177
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_57

    .line 2178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2179
    array-length v4, v3

    if-lez v4, :cond_57

    .line 2180
    aget-object v4, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_57

    const/4 v4, 0x1

    .line 2182
    :try_start_4d
    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2183
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_5a
    return v2

    :cond_5b
    :goto_5b
    return v1
.end method

.method public static getMetaFromPath(Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;
    .registers 2

    .line 2470
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".meta"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {p0, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativestore/bean/MetaVO;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 2472
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 2212
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getNewFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_17

    .line 2214
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->hasExistFileName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object p0

    .line 2217
    :cond_12
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getNewFileNameByNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 2220
    :goto_18
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->hasExistFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2221
    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_22
    return-object p0
.end method

.method public static getNewFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "-副本(\\d+)?$"

    .line 2124
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2125
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2126
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const-string v2, "-副本"

    if-eqz v1, :cond_b3

    const-string/jumbo v1, "本"

    .line 2128
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_33

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2132
    :cond_33
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 2133
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2134
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v5, v3, v1

    const/4 v6, 0x4

    const/4 v7, 0x0

    if-le v5, v6, :cond_7f

    .line 2137
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const-string v3, "0"

    .line 2138
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2142
    :cond_63
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v4

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7f
    add-int/lit8 v0, v3, -0x1

    .line 2146
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9b

    .line 2148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2150
    :cond_9b
    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2154
    :cond_b3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNewFileNameByNum(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getMaxIndex(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2164
    :cond_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrefixPart(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    .line 2457
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemplates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "webview/res/template_create"

    .line 353
    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->loadBcmByAssets(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    .line 355
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-object v0
.end method

.method private static getUUID(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 2115
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2116
    :goto_c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_c

    .line 2119
    :cond_23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public static getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;",
            ">;"
        }
    .end annotation

    .line 2576
    const-class v0, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string p2, "0"

    .line 2579
    :cond_a
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->env:Ljava/lang/String;

    .line 2581
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-static {p0, p2, v2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getUploadFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "release"

    .line 2582
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 2583
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByOpenServerHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;->getBucketRelease(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_a5

    :cond_3c
    const-string p2, "staging"

    .line 2584
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    .line 2585
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByOpenServerHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;->getBucketStaging(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_a5

    :cond_62
    const-string p2, "dev"

    .line 2586
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_88

    .line 2587
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByOpenServerHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;->getBucketDev(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_a5

    .line 2589
    :cond_88
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByOpenServerHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/creativecenter/utils/bcm/api/UploadService;->getBucketTest(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    :goto_a5
    return-object p0
.end method

.method public static handleMeta(ZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/MetaVO;)Lcom/codemao/creativestore/bean/MetaVO;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2487
    new-instance v0, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/MetaVO;-><init>()V

    .line 2488
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "have_uploaded"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2490
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v1

    const-string v3, "origin_bcm_id"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 2492
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v3

    const-string v4, "work_id"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    :cond_2e
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_count(Ljava/util/Map;)V

    .line 2496
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    .line 2497
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->isHave_remote_resources()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_remote_resources(Z)V

    .line 2498
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getParent_id()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setParent_id(Ljava/lang/Long;)V

    .line 2500
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2501
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CloudVariable;

    const/4 v4, 0x0

    .line 2502
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/codemao/creativestore/bean/CloudVariable;->value:Ljava/lang/Object;

    const-string v4, "number"

    .line 2503
    iput-object v4, v3, Lcom/codemao/creativestore/bean/CloudVariable;->param_type:Ljava/lang/String;

    goto :goto_5a

    .line 2505
    :cond_72
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setMcloudVariable(Ljava/util/List;)V

    .line 2506
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getPublish_preview()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_preview(Ljava/lang/String;)V

    if-eqz p0, :cond_89

    .line 2508
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getTemplate_id()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setTemplate_id(J)V

    .line 2509
    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setType(I)V

    goto :goto_a3

    .line 2511
    :cond_89
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_95

    const/4 p0, 0x3

    .line 2512
    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setType(I)V

    goto :goto_9c

    .line 2514
    :cond_95
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setType(I)V

    .line 2516
    :goto_9c
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getTemplate_id()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setTemplate_id(J)V

    .line 2518
    :goto_a3
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->isHave_published_status()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_published_status(Z)V

    .line 2519
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->getMaterial_urls()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setMaterial_urls(Ljava/util/List;)V

    .line 2520
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setLandscape(Z)V

    .line 2521
    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setMicroBit(Z)V

    .line 2522
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static hasExistFileName(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2198
    :goto_2
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 2199
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v0
.end method

.method public static hasName(Ljava/lang/String;)Z
    .registers 3

    .line 658
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 659
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static initPath()V
    .registers 3

    .line 2288
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 2289
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2290
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteUnLoginDirectory()V

    const-string v0, "unlogin"

    .line 2291
    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    goto :goto_18

    .line 2293
    :cond_16
    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    .line 2295
    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user_material"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_IMAGE_PATH:Ljava/lang/String;

    .line 2296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "user_works"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_WORKS_PATH:Ljava/lang/String;

    return-void
.end method

.method public static isEndOf(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    .line 648
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEndOf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "."

    .line 653
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isLogin()Z
    .registers 2

    .line 346
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    const-string v1, "unlogin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isWorkUploaded(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z
    .registers 2

    .line 264
    iget p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private static justDownloadImg(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/Map;Ljava/lang/String;Lcom/codemao/creativestore/bean/StyleVO;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;",
            "Lcom/codemao/creativestore/bean/UserImgDictVO;",
            "Lcom/codemao/creativestore/bean/BcmVO;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ImgDictVO;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ")V"
        }
    .end annotation

    .line 1048
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    invoke-virtual/range {p9 .. p9}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_IMAGE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".webp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-virtual/range {p9 .. p9}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_64

    .line 1055
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p9 .. p9}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_64
    move-object v13, v1

    const/4 v14, 0x3

    .line 1058
    new-instance v15, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;

    move-object v1, v15

    move-object/from16 v2, p9

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p1

    move-object/from16 v9, p0

    move-object/from16 v10, p6

    move-object/from16 v11, p4

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$6;-><init>(Lcom/codemao/creativestore/bean/StyleVO;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/codemao/creativestore/bean/UserImgDictVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    move-object/from16 v1, p1

    invoke-static {v14, v1, v13, v0, v15}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->downloadFile(ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    return-void
.end method

.method private static synthetic lambda$deleteUnLoginDirectory$6()V
    .registers 6

    .line 2304
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_43

    .line 2306
    :cond_1e
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_25

    return-void

    .line 2310
    :cond_25
    array-length v1, v0

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v1, :cond_43

    aget-object v3, v0, v2

    .line 2311
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unlogin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2312
    invoke-static {v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/io/File;)V

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_43
    :goto_43
    return-void
.end method

.method private static synthetic lambda$onDownloadBcmError$1(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V
    .registers 2

    .line 823
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onDownloadError$0(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V
    .registers 2

    .line 818
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onDownloadSuccess$2(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 2

    .line 1192
    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;->onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method private static synthetic lambda$uploadBcm$3(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V
    .registers 2

    .line 1574
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$uploadCoverSuccess$4(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V
    .registers 3

    .line 1736
    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getWork_id()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, p1, v0, v0}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$uploadCoverSuccess$5(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V
    .registers 2

    .line 1739
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static loadBcmByAssets(Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 404
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v2, :cond_ee

    aget-object v5, v1, v4

    const-string v6, "bcm"

    .line 405
    invoke-static {v5, v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isEndOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 406
    new-instance v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 407
    invoke-static {v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 409
    iput-object v5, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 410
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".cover"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 411
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".meta"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 412
    const-class v7, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v5, v7}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/MetaVO;

    .line 413
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v7

    const-string v8, "block_cnt"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 414
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v8

    const-string v9, "entity_cnt"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 415
    instance-of v9, v7, Ljava/lang/Double;

    if-eqz v9, :cond_a1

    .line 416
    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    double-to-int v7, v9

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_b0

    .line 417
    :cond_a1
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_ae

    .line 418
    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    goto :goto_b0

    .line 420
    :cond_ae
    iput v3, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 422
    :goto_b0
    instance-of v7, v8, Ljava/lang/Double;

    if-eqz v7, :cond_be

    .line 423
    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    goto :goto_cd

    .line 424
    :cond_be
    instance-of v7, v8, Ljava/lang/Integer;

    if-eqz v7, :cond_cb

    .line 425
    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    goto :goto_cd

    .line 427
    :cond_cb
    iput v3, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    :goto_cd
    const/4 v7, 0x1

    .line 429
    iput v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v8, 0x2

    .line 430
    iput v8, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 431
    iput-boolean v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 432
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 433
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MetaVO;->getTemplate_id()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 434
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/MetaVO;->getDescription()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->description:Ljava/lang/String;

    .line 435
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ea
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_18

    .line 438
    :cond_ee
    new-instance p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$2;

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static loadBcmListByPath(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            ">;"
        }
    .end annotation

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2f

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 482
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 484
    array-length v1, p0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_2f

    aget-object v4, p0, v3

    .line 485
    invoke-static {v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->extractedFromFile(Ljava/io/File;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 487
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 493
    :cond_2f
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    if-eqz p0, :cond_70

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_70

    .line 494
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 495
    sget-object p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_44
    :goto_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 496
    iget-object v3, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-static {v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    .line 497
    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_44

    .line 499
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmUUID:Ljava/util/List;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 503
    :cond_70
    sput-boolean v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->FIRST_ENTER:Z

    .line 505
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static modifyMetaBcmName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "work_id"

    .line 2528
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v1, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/MetaVO;

    .line 2529
    invoke-virtual {p1, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_67

    .line 2531
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_4a

    .line 2532
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 2533
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->convertNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    .line 2535
    :cond_4a
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 2536
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/codemao/creativestore/utils/CreativeCommonUtil;->convertNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2539
    :cond_67
    :goto_67
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_73} :catch_75

    const/4 p0, 0x1

    return p0

    :catch_75
    move-exception p0

    .line 2542
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private static onDownloadBcmError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V
    .registers 3

    .line 822
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 823
    new-instance p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onDownloadError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V
    .registers 3

    .line 816
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 818
    new-instance p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onDownloadSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 1099
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    .line 1100
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, "<block"

    const/4 v11, 0x1

    if-eqz v9, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    .line 1102
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1103
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/ActorVO;->getBlocksXML()Ljava/lang/String;

    move-result-object v9

    .line 1104
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1b

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 1105
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1b

    .line 1107
    array-length v9, v9

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    goto :goto_1b

    .line 1112
    :cond_4c
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v4

    .line 1113
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5c
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    .line 1115
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/SceneVO;

    .line 1116
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/SceneVO;->getBlocksXML()Ljava/lang/String;

    move-result-object v9

    .line 1117
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5c

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5c

    .line 1118
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5c

    .line 1120
    array-length v9, v9

    sub-int/2addr v9, v11

    add-int/2addr v8, v9

    goto :goto_5c

    .line 1125
    :cond_8a
    new-instance v4, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-direct {v4}, Lcom/codemao/creativestore/bean/MetaVO;-><init>()V

    .line 1126
    invoke-virtual {v4, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 1128
    iput v11, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1129
    iget-object v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a9

    .line 1130
    iget-object v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setParent_id(Ljava/lang/Long;)V

    .line 1132
    :cond_a9
    iget-object v5, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v9, "work_id"

    if-nez v5, :cond_bc

    .line 1133
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v5

    iget-object v10, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_bc
    const-string v5, "entity_cnt"

    const-string v10, "block_cnt"

    const-string v12, "have_uploaded"

    const/4 v13, 0x2

    if-nez p6, :cond_d2

    .line 1136
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_159

    .line 1139
    :cond_d2
    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v14

    if-eqz v14, :cond_10b

    sget-object v14, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->USER_DIR:Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getUser_info()Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/codemao/creativecenter/utils/bcm/bean/AuthorInfo;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_10b

    .line 1140
    invoke-virtual {v4, v13}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_status(I)V

    .line 1141
    invoke-virtual {v4, v11}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_published_status(Z)V

    .line 1142
    iput-boolean v11, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 1143
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/codemao/creativestore/bean/MetaVO;->setParent_id(Ljava/lang/Long;)V

    goto :goto_126

    .line 1146
    :cond_10b
    invoke-virtual {v4, v6}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_status(I)V

    .line 1147
    iput v13, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 1148
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getParent_id()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/codemao/creativestore/bean/MetaVO;->setParent_id(Ljava/lang/Long;)V

    .line 1152
    :goto_126
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 1155
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_brick()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_count()Ljava/util/Map;

    move-result-object v9

    invoke-virtual/range {p6 .. p6}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getN_roles()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    :goto_159
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1160
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    iget-object v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v4, v9}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_count(Ljava/util/Map;)V

    .line 1164
    iget-object v5, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_preview(Ljava/lang/String;)V

    move/from16 v5, p3

    .line 1165
    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_remote_resources(Z)V

    .line 1166
    iget v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setType(I)V

    .line 1167
    iget-wide v9, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {v4, v9, v10}, Lcom/codemao/creativestore/bean/MetaVO;->setTemplate_id(J)V

    .line 1168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setMcloudVariable(Ljava/util/List;)V

    .line 1169
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getMcloudVariable()Ljava/util/List;

    move-result-object v5

    iget-object v9, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1170
    iget-object v5, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_url(Ljava/lang/String;)V

    .line 1171
    iget v5, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-ne v5, v13, :cond_1a3

    const/4 v11, 0x0

    :cond_1a3
    invoke-virtual {v4, v11}, Lcom/codemao/creativestore/bean/MetaVO;->setDownload_fail(Z)V

    .line 1172
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->isLandscape()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setLandscape(Z)V

    .line 1173
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->isMicroBit()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/codemao/creativestore/bean/MetaVO;->setMicroBit(Z)V

    .line 1174
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 1175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".meta"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iput v7, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    .line 1178
    iput v8, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    .line 1179
    iget v5, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    iput v5, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    .line 1180
    iget-wide v7, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    iput-wide v7, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    .line 1181
    iput-object v1, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1182
    iput-boolean v6, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    .line 1183
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->isLandscape()Z

    move-result v0

    iput-boolean v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    .line 1184
    invoke-virtual/range {p4 .. p4}, Lcom/codemao/creativestore/bean/BcmVO;->isMicroBit()Z

    move-result v0

    iput-boolean v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z

    .line 1185
    iget-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    if-nez v0, :cond_1f7

    .line 1186
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->getParent_id()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    .line 1188
    :cond_1f7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 1189
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->isLandscape()Z

    move-result v0

    iput-boolean v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    .line 1190
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/MetaVO;->isMicroBit()Z

    move-result v0

    iput-boolean v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMicroBit:Z

    .line 1191
    iget v0, v3, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-ne v0, v13, :cond_224

    .line 1192
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;

    move-object/from16 v1, p7

    invoke-direct {v0, v1, v3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    :cond_224
    return-void
.end method

.method private static onSuccessSaveWork(Ljava/lang/String;ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".meta"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v0, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/MetaVO;

    .line 2073
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "have_uploaded"

    if-nez p1, :cond_2b

    const/4 p1, 0x2

    .line 2075
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_2b
    const/4 p1, 0x1

    .line 2077
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2079
    :goto_33
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getWork_id()Ljava/lang/String;

    move-result-object p1

    const-string v3, "work_id"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2080
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getWork_url()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_url(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getBcm_version()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v0, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setUpload_status(Ljava/util/Map;)V

    .line 2084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseMeta(ZLjava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Lcom/codemao/creativestore/bean/MetaVO;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2465
    const-class v0, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {p2, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {p0, p1, p3, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->handleMeta(ZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/MetaVO;)Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object p0

    return-object p0
.end method

.method public static parseUserImg(Ljava/lang/String;)Lcom/codemao/creativestore/bean/UserImgDictVO;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2483
    const-class v0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {p0, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativestore/bean/UserImgDictVO;

    return-object p0
.end method

.method private static postMain(Ljava/lang/Runnable;)V
    .registers 3

    if-eqz p0, :cond_e

    .line 810
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method

.method public static removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 827
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 828
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 829
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 830
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 831
    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 832
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_29
    return-void
.end method

.method public static removeUploadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 840
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->UPLOAD_DATAS:Ljava/util/List;

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 841
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->UPLOAD_DATAS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 842
    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 843
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 844
    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 845
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    .line 846
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 847
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_39
    return-void
.end method

.method public static rename(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)Z
    .registers 8

    .line 243
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".meta"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_71

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_71

    .line 249
    :cond_40
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->modifyMetaBcmName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 250
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->localBcmNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    invoke-static {p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->addLocalBcmNames(Ljava/lang/String;)V

    .line 252
    iput-object p2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 253
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isWorkUploaded(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 254
    invoke-static {p0, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->updateName(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    :cond_61
    const/4 p0, 0x1

    return p0

    .line 258
    :cond_63
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object p0

    const-string/jumbo p1, "重命名失败"

    invoke-static {p0, p1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_71
    :goto_71
    return v3
.end method

.method public static saveWork(ILjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 8

    .line 2021
    invoke-virtual {p2}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getWork_id()Ljava/lang/String;

    move-result-object v0

    .line 2022
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    int-to-long v2, p0

    .line 2023
    invoke-interface {v1, v2, v3, p2}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->uploadByType(JLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)Lio/reactivex/Observable;

    move-result-object p0

    .line 2024
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;

    invoke-direct {v1, p2, v0, p1, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$18;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    .line 2025
    invoke-virtual {p0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updateCover(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;)Z
    .registers 2

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public static updateDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 855
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 856
    sget-object v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->DOWNLOAD_DATAS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 857
    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_26
    return-void
.end method

.method public static updateName(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 6

    .line 276
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->setIs_check_name(Z)V

    const/16 v1, 0x8

    .line 279
    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;->setWork_type(I)V

    .line 280
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    const-class v2, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->getNemoHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/tiger/work/works/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/rename"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->rename(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/RenameWorkVO;)Lio/reactivex/Observable;

    move-result-object p0

    .line 282
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeThreadTransformer;->create()Lcom/codemao/creativecenter/http/CreativeThreadTransformer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$1;-><init>(Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    .line 283
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static updatePublishStatus(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z
    .registers 8

    const-string v0, ".meta"

    const/4 v1, 0x0

    .line 174
    :try_start_3
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v3, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MetaVO;

    .line 176
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 177
    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_status(I)V

    .line 178
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_preview(Ljava/lang/String;)V

    .line 179
    iget-boolean v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_published_status(Z)V

    .line 180
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setDesc(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v4

    const-string v5, "work_id"

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v4

    const-string v5, "have_uploaded"

    iget v6, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_62

    .line 184
    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setDownload_fail(Z)V

    goto :goto_6a

    .line 186
    :cond_62
    invoke-virtual {v3, v6}, Lcom/codemao/creativestore/bean/MetaVO;->setDownload_fail(Z)V

    .line 187
    iget-object p0, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v3, p0}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_url(Ljava/lang/String;)V

    .line 189
    :goto_6a
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_85} :catch_86

    return v6

    :catch_86
    return v1
.end method

.method public static updatePublishStatusError(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z
    .registers 8

    const-string v0, ".meta"

    const/4 v1, 0x0

    .line 202
    :try_start_3
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v3, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/MetaVO;

    .line 204
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 205
    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_status(I)V

    .line 206
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_preview(Ljava/lang/String;)V

    .line 207
    iget-boolean v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_published_status(Z)V

    .line 208
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setDesc(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v4

    const-string v5, "work_id"

    iget-object v6, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v4

    const-string v5, "have_uploaded"

    iget v6, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_62

    .line 212
    invoke-virtual {v3, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setDownload_fail(Z)V

    goto :goto_6a

    .line 214
    :cond_62
    invoke-virtual {v3, v6}, Lcom/codemao/creativestore/bean/MetaVO;->setDownload_fail(Z)V

    .line 215
    iget-object v4, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_url(Ljava/lang/String;)V

    .line 217
    :goto_6a
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 218
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_url()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8b} :catch_8c

    return v6

    :catch_8c
    return v1
.end method

.method public static uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    .line 1490
    invoke-static/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method public static uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 3

    const/4 v0, 0x0

    .line 1482
    invoke-static {p0, v0, p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZLcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method public static uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZLcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 10

    .line 1486
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->isWorkUploaded(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    const/4 v5, 0x2

    goto :goto_b

    :cond_9
    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_b
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v3, p0

    move v4, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method

.method public static uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 24

    move-object/from16 v0, p2

    const-string v1, ".userimg"

    .line 1504
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadUrls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1505
    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    const/4 v4, 0x0

    if-le v2, v3, :cond_1c

    .line 1506
    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1508
    :cond_1c
    iget-object v8, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 1509
    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1511
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1512
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1513
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->errorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1514
    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->UPLOAD_DATAS:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1516
    iget-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->startUpload(Ljava/lang/String;)V

    .line 1519
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/codemao/creativestore/bean/BcmVO;

    .line 1521
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    invoke-virtual {v14}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v2

    .line 1523
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6d
    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1524
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1525
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1526
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 1530
    :cond_8d
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1531
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1533
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1535
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d0
    :goto_d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1536
    invoke-virtual {v14}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz v3, :cond_d0

    .line 1537
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 1538
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_fa
    move-object/from16 v16, v1

    goto :goto_ff

    :cond_fd
    move-object/from16 v16, v3

    .line 1543
    :goto_ff
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 1544
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    if-eqz p1, :cond_125

    .line 1547
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;

    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1550
    :cond_125
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_151

    .line 1554
    new-instance v17, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;

    move-object/from16 v1, v17

    move/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$8;-><init>(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v13

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v14

    move-object/from16 v7, v17

    invoke-static/range {v1 .. v7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadImageList(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    goto :goto_175

    :cond_151
    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v8

    move-object v8, v13

    move-object v9, v14

    move-object v10, v11

    move-object/from16 v11, v16

    .line 1568
    invoke-static/range {v1 .. v11}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->doUploadSound(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;Ljava/util/ArrayList;Lcom/codemao/creativestore/bean/UserImgDictVO;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_166} :catch_167

    goto :goto_175

    :catch_167
    move-exception v0

    .line 1573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1574
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;

    move-object/from16 v2, p5

    invoke-direct {v1, v2, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V

    invoke-static {v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    :goto_175
    return-void
.end method

.method private static uploadBcmAndCover(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;IZLjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 20

    move-object v10, p2

    .line 1603
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;

    invoke-direct {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;-><init>()V

    .line 1604
    iget-object v0, v10, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->cloudVariables:Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setCloud_variables(Ljava/util/List;)V

    .line 1606
    new-instance v11, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;

    move-object v0, v11

    move v1, p1

    move-object v3, p2

    move v4, p0

    move-object/from16 v5, p7

    move/from16 v6, p4

    move/from16 v7, p5

    move-object v8, p3

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$10;-><init>(ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZLcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;IZLjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    move-object v1, p3

    invoke-static {p2, p3, v0, v11}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    return-void
.end method

.method public static uploadBcmFile(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILjava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 22

    move-object v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/4 v5, 0x2

    if-ne v0, v5, :cond_84

    .line 1908
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15

    goto :goto_1b

    :catch_15
    move-exception v0

    .line 1910
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_1b
    const-string v6, ","

    .line 1912
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1913
    array-length v0, v6

    if-ge v0, v5, :cond_2b

    const-string/jumbo v0, "未知错误:封面文件异常"

    .line 1914
    invoke-interface {v4, v0}, Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;->onError(Ljava/lang/String;)V

    return-void

    :cond_2b
    :try_start_2b
    const-string v0, "UTF-8"

    .line 1918
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/16 v5, 0x8

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_37} :catch_38

    goto :goto_3d

    :catch_38
    move-exception v0

    .line 1920
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v2

    .line 1922
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://upload.qiniup.com/putb64/-1/key/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v2

    const-class v5, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    invoke-virtual {v2, v5}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->createByNemoHost(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UpToken "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "application/octet-stream"

    invoke-interface {v2, v0, v5, v7, v6}, Lcom/codemao/creativecenter/utils/bcm/api/BcmService;->uploadCover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1924
    iget-object v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->addUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1925
    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;

    invoke-direct {v2, p0, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$15;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_ab

    :cond_84
    move-object/from16 v7, p4

    .line 1950
    new-instance v5, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v5}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 1952
    new-instance v6, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;

    invoke-direct {v6, v0, v3, v2, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$16;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    new-instance v14, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;

    invoke-direct {v13, p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$17;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v6

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/qiniu/android/storage/UploadManager;->put(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UpCompletionHandler;Lcom/qiniu/android/storage/UploadOptions;)V

    :goto_ab
    return-void
.end method

.method private static uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 7

    const-string v0, "2002"

    const/4 v1, 0x2

    if-ne p2, v1, :cond_a

    const-string v0, "2001"

    const-string v1, ".cover"

    goto :goto_38

    :cond_a
    const/4 v1, 0x3

    if-ne p2, v1, :cond_24

    const-string v1, "jpeg"

    .line 1845
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "jpg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_21

    :cond_1e
    const-string v1, ".webp"

    goto :goto_38

    :cond_21
    :goto_21
    const-string v1, ".jpg"

    goto :goto_38

    :cond_24
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2a

    const-string v1, ".aac"

    goto :goto_38

    :cond_2a
    const/4 v1, 0x5

    if-ne p2, v1, :cond_30

    const-string v1, ".mid"

    goto :goto_38

    :cond_30
    const/4 v1, 0x6

    if-ne p2, v1, :cond_36

    const-string v1, ".mp3"

    goto :goto_38

    :cond_36
    const-string v1, ".bcm"

    .line 1855
    :goto_38
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 1856
    iget-object v1, p0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/codemao/creativecenter/utils/bcm/CallUtil;->addUploadCall(Ljava/lang/String;Lretrofit2/Call;)V

    .line 1857
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$14;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method private static uploadCoverSuccess(ZZIZLjava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V
    .registers 15

    const/4 v0, 0x2

    if-eqz p0, :cond_1c

    .line 1699
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;

    sget-object v2, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSuccessCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativecenter/utils/bcm/events/UploadProgressEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1701
    :cond_1c
    iget-object p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setWork_id(Ljava/lang/String;)V

    if-eqz p1, :cond_4b

    .line 1703
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->bucket_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setPreview(Ljava/lang/String;)V

    .line 1704
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->bucket_url:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    goto :goto_52

    :cond_4b
    const-string p0, "https://static.codemao.cn/nemo/ryNZDzhiE.cover"

    .line 1706
    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setPreview(Ljava/lang/String;)V

    .line 1707
    iput-object p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 1709
    :goto_52
    iget-object p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 1710
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1711
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object p0

    .line 1713
    :cond_62
    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setBcm_version(Ljava/lang/String;)V

    .line 1714
    iget p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->blocks:I

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setN_blocks(I)V

    .line 1715
    invoke-virtual {p7, p5}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setName(Ljava/lang/String;)V

    .line 1716
    iget p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->roles:I

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setN_roles(I)V

    .line 1717
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1718
    iget-object p1, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_8a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-lez p1, :cond_8a

    .line 1719
    iget-object p1, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->parent_id:Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    :cond_8a
    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setRoot_ids(Ljava/util/List;)V

    .line 1722
    iget-wide p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    const-string p5, ""

    cmp-long p8, p0, v1

    if-eqz p8, :cond_a9

    .line 1723
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setTemplate_id(Ljava/lang/String;)V

    .line 1725
    :cond_a9
    iget-wide p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    cmp-long p8, p0, v1

    if-lez p8, :cond_c8

    .line 1726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_id:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setTemplate_id(Ljava/lang/String;)V

    .line 1727
    iget p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->template_type:I

    invoke-virtual {p7, p0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setTemplate_type(I)V

    .line 1729
    :cond_c8
    iget-boolean p0, p6, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    const/4 p1, 0x1

    if-eqz p0, :cond_ce

    goto :goto_cf

    :cond_ce
    const/4 v0, 0x1

    :goto_cf
    invoke-virtual {p7, v0}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->setOrientation(I)V

    if-eqz p3, :cond_f5

    .line 1731
    invoke-virtual {p7}, Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;->getWork_id()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_df

    goto :goto_f5

    .line 1735
    :cond_df
    :try_start_df
    invoke-static {p4, p1, p7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->onSuccessSaveWork(Ljava/lang/String;ZLcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    .line 1736
    new-instance p0, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda4;

    invoke-direct {p0, p9, p7}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;)V

    invoke-static {p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_ea} :catch_eb

    goto :goto_f8

    :catch_eb
    move-exception p0

    .line 1739
    new-instance p1, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1, p9, p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->postMain(Ljava/lang/Runnable;)V

    goto :goto_f8

    .line 1732
    :cond_f5
    :goto_f5
    invoke-static {p2, p4, p7, p9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->saveWork(ILjava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/WorkVO;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    :goto_f8
    return-void
.end method

.method public static uploadImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v0, "jpeg"

    .line 1985
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    const-string v0, ".webp"

    goto :goto_16

    :cond_14
    :goto_14
    const-string v0, ".jpg"

    .line 1989
    :goto_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2002"

    invoke-static {v2, v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getUploadTokenCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    const/4 v1, 0x0

    .line 1991
    :try_start_25
    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v2

    .line 1992
    invoke-virtual {v2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;

    .line 1993
    invoke-virtual {v2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_aa

    if-eqz v3, :cond_aa

    .line 1994
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getBucket_url()Ljava/lang/String;

    move-result-object v2

    .line 1995
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1996
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 1998
    :cond_4f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_5b

    return-object v1

    .line 2004
    :cond_5b
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object p0

    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;

    invoke-virtual {p0}, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->getFile_path()Ljava/lang/String;

    move-result-object p0

    .line 2005
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/upload/GetQiniuResponse;->getTokens()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/upload/UploadFileTokenInfo;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 2007
    new-instance v5, Lcom/qiniu/android/storage/UploadManager;

    invoke-direct {v5}, Lcom/qiniu/android/storage/UploadManager;-><init>()V

    .line 2008
    new-instance v12, Lcom/qiniu/android/storage/UploadOptions;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2009
    new-instance v11, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda0;

    invoke-direct {v11, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$$ExternalSyntheticLambda0;-><init>(Lretrofit2/Call;)V

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/qiniu/android/storage/UploadOptions;-><init>(Ljava/util/Map;Ljava/lang/String;ZLcom/qiniu/android/storage/UpProgressHandler;Lcom/qiniu/android/storage/UpCancellationSignal;)V

    .line 2008
    invoke-virtual {v5, v4, p0, v3, v12}, Lcom/qiniu/android/storage/UploadManager;->syncPut(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/qiniu/android/storage/UploadOptions;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v0

    .line 2010
    invoke-virtual {v0}, Lcom/qiniu/android/http/ResponseInfo;->isOK()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 2011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_a5} :catch_a6

    return-object p0

    :catch_a6
    move-exception p0

    .line 2015
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_aa
    return-object v1
.end method

.method private static uploadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 4

    const/4 v0, 0x3

    .line 1820
    invoke-static {p0, p1, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    return-void
.end method

.method private static uploadImageList(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/StyleVO;",
            ">;",
            "Lcom/codemao/creativestore/bean/UserImgDictVO;",
            "Lcom/codemao/creativestore/bean/BcmVO;",
            "Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;",
            ")V"
        }
    .end annotation

    .line 1771
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/codemao/creativestore/bean/StyleVO;

    .line 1772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1773
    new-instance v9, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;

    move-object v2, v9

    move-object v4, p2

    move-object v5, p5

    move v6, p0

    move-object/from16 v7, p6

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$13;-><init>(Lcom/codemao/creativestore/bean/StyleVO;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;ZLcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;Ljava/util/List;)V

    move-object v2, p1

    invoke-static {p1, v1, v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadImage(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_4

    :catch_59
    move-exception v0

    .line 1814
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_63
    return-void
.end method

.method private static uploadSound(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    .registers 4

    const-string v0, ".aac"

    .line 1824
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x4

    .line 1825
    invoke-static {p0, p1, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    goto :goto_26

    :cond_d
    const-string v0, ".mid"

    .line 1826
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x5

    .line 1827
    invoke-static {p0, p1, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    goto :goto_26

    :cond_1a
    const-string v0, ".mp3"

    .line 1828
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x6

    .line 1829
    invoke-static {p0, p1, v0, p2}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadByType(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;ILcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private static uploadSounds(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Ljava/util/List;Lcom/codemao/creativestore/bean/UserImgDictVO;Lcom/codemao/creativestore/bean/BcmVO;Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;",
            "Lcom/codemao/creativestore/bean/UserImgDictVO;",
            "Lcom/codemao/creativestore/bean/BcmVO;",
            "Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;",
            ")V"
        }
    .end annotation

    .line 1650
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_54

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lcom/codemao/creativestore/bean/SoundVO;

    .line 1652
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/record/"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SoundVO;->getExt()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1653
    new-instance v6, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;

    move-object v0, v6

    move-object v2, p2

    move-object v3, p5

    move v4, p0

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$11;-><init>(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;Lcom/codemao/creativestore/bean/BcmVO;ZLcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;)V

    invoke-static {p1, p4, v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadSound(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/UploadFileCallBack;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    goto :goto_4

    :catch_4c
    move-exception p0

    .line 1693
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p6, p0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper$BcmCallBack;->onError(Ljava/lang/String;)V

    :cond_54
    return-void
.end method

.method public static writeResponseBody(Ljava/lang/String;Lokhttp3/ResponseBody;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1208
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1209
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1211
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1213
    :cond_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1214
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1217
    :cond_2b
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1218
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1221
    :goto_39
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_45

    const/4 v3, 0x0

    .line 1222
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_39

    .line 1224
    :cond_45
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 1225
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1226
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 1227
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p0

    .line 1229
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_56
    return-void
.end method
