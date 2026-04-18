.class public Lcom/codemao/creativestore/presenter/CreateUtils;
.super Ljava/lang/Object;
.source "CreateUtils.java"


# static fields
.field public static localUrl:Ljava/lang/String; = ""


# instance fields
.field private basePath:Ljava/lang/String;

.field private bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

.field private bcmView:Lcom/codemao/creativestore/view/NewBcmView;

.field private bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

.field private cleanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

.field private countDownTimer:Landroid/os/CountDownTimer;

.field private creativeStoreLocaleInfo:Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

.field private downloadStatusListener:Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;

.field private handler:Landroid/os/Handler;

.field private isLoadFinish:Z

.field private volatile isRealSaving:Z

.field private volatile isSaving:Z

.field private localImgInfoMsgs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/LocalImgInfoMsg;",
            ">;"
        }
    .end annotation
.end field

.field private localImgStyleId:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

.field private mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

.field private mDecoderStateListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

.field private martrialNames:Ljava/lang/StringBuilder;

.field public materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

.field private metaVOCopy:Lcom/codemao/creativestore/bean/MetaVO;

.field private needDownloadCloudMatrial:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

.field public rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

.field public stagePositionBean:Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

.field private theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

.field private time:I

.field private userImgDictVOCopy:Lcom/codemao/creativestore/bean/UserImgDictVO;

.field private webView:Lcom/codemao/creativestore/dsbridge/DWebView;

.field private workId:Ljava/lang/String;

.field private workPath:Ljava/lang/String;

.field private workUid:Ljava/lang/String;

.field private worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;


# direct methods
.method public static synthetic $r8$lambda$8WK-p-i2qBZd-G68zJoSvx4aNr4(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)Lkotlin/Unit;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->lambda$changeBluetoothPermissionState$0(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$H_pqKQeqkLoGvUI2f8F5ZahkDtw(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->lambda$changeBluetoothPermissionState$1(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hwep7vi4eqgXcVi1m4-7zbkYeBc(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;
    .registers 2

    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->lambda$changeBluetoothPermissionState$2(Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/codemao/creativestore/bean/WorksEvent;Lcom/codemao/creativestore/view/NewBcmView;Lcom/codemao/creativestore/dsbridge/DWebView;Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V
    .registers 13

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isSaving:Z

    .line 222
    iput-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    const v0, 0x493e0

    .line 225
    iput v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->time:I

    .line 239
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDecoderStateListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    .line 678
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$2;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    .line 800
    iput-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->webView:Lcom/codemao/creativestore/dsbridge/DWebView;

    .line 801
    iput-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    .line 802
    iput-object p4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->creativeStoreLocaleInfo:Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

    .line 803
    invoke-interface {p2}, Lcom/codemao/creativestore/view/NewBcmView;->initTheateConfig()Lcom/codemao/creativestore/bean/TheateConfigInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

    .line 804
    invoke-virtual {p4}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->checkValue()V

    .line 805
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    .line 806
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteAImgsRemain()V

    .line 807
    new-instance p1, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$3;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$3;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/view/NewBcmView;)V

    invoke-direct {p1, v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;-><init>(Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager$UndoAndRedoCallback;)V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    .line 814
    new-instance p1, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-direct {p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    .line 815
    invoke-virtual {p1, p3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->init(Lcom/codemao/creativestore/dsbridge/DWebView;)V

    .line 817
    new-instance p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

    new-instance v4, Lcom/codemao/creativestore/presenter/CreateUtils$4;

    invoke-direct {v4, p0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$4;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/view/NewBcmView;)V

    .line 866
    invoke-interface {p2}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->getBasePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->getDefaultBgName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;-><init>(Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/listener/JSStoreCallBack;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    .line 868
    new-instance p1, Lcom/codemao/creativestore/jsbridge/JsCallNative;

    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDecoderStateListener:Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;

    invoke-direct {p1, p3}, Lcom/codemao/creativestore/jsbridge/JsCallNative;-><init>(Lcom/codemao/creativestore/jsbridge/listener/DecoderStateListener;)V

    .line 869
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->webView:Lcom/codemao/creativestore/dsbridge/DWebView;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Lcom/codemao/creativestore/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    new-instance p1, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;

    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bluetoothJsListener:Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;

    invoke-direct {p1, p3}, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;-><init>(Lcom/codemao/creativestore/jsbridge/listener/BluetoothJsListener;)V

    .line 871
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->webView:Lcom/codemao/creativestore/dsbridge/DWebView;

    sget-object p4, Lcom/codemao/creativestore/jsbridge/BluetoothJsCallNative;->namespace:Ljava/lang/String;

    invoke-virtual {p3, p1, p4}, Lcom/codemao/creativestore/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->getInstance()Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/BaseMaterialDownloadManager;->restartTask()V

    .line 873
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object p1

    invoke-interface {p2}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initStyleFile(Landroid/content/Context;)V

    .line 874
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->initAllThemeFile()V

    .line 875
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initLocalFile()V

    .line 876
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initMaterials()V

    .line 877
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setMaterialsDownloadManager(Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;)V

    .line 878
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initData()V

    .line 879
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recordPath:Ljava/lang/String;

    .line 880
    iput-object p5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->downloadStatusListener:Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;

    .line 881
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->checkMaterial()V

    .line 882
    new-instance p1, Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-direct {p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/view/NewBcmView;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/Vector;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 1

    .line 185
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initLocalStyleImg()V

    return-void
.end method

.method static synthetic access$1100(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/util/List;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->downloadStatusListener:Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getFinalXmLInfo(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isSaving:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/codemao/creativestore/presenter/CreateUtils;)Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/BcmVO;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/UserImgDictVO;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->userImgDictVOCopy:Lcom/codemao/creativestore/bean/UserImgDictVO;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativestore/presenter/CreateUtils;)Z
    .registers 1

    .line 185
    iget-boolean p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isLoadFinish:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V
    .registers 2

    .line 185
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getAutoFinalXmLInfo(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/codemao/creativestore/presenter/CreateUtils;Z)Z
    .registers 2

    .line 185
    iput-boolean p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isLoadFinish:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/MetaVO;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->metaVOCopy:Lcom/codemao/creativestore/bean/MetaVO;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/UserImgDictVO;I)V
    .registers 3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->clearLocalImgs(Lcom/codemao/creativestore/bean/UserImgDictVO;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativestore/presenter/CreateUtils;)Ljava/lang/String;
    .registers 1

    .line 185
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getSoundNamesWithStyles()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/model/JSDataStore;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 2

    .line 185
    invoke-direct {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->peripheral(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/creativestore/presenter/CreateUtils;)Landroid/os/Handler;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/codemao/creativestore/presenter/CreateUtils;)Lcom/codemao/creativestore/bean/WorksEvent;
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    return-object p0
.end method

.method static synthetic access$900(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/WebUserInfo;)V
    .registers 3

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->initWebviewData(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/WebUserInfo;)V

    return-void
.end method

.method public static calculateWebViewSize(Landroid/content/Context;Z)Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;
    .registers 18

    if-nez p0, :cond_b

    .line 957
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_d

    :cond_b
    move-object/from16 v0, p0

    .line 959
    :goto_d
    sget v1, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_LAND_HEIGHT:I

    const v2, 0x3fccfb72

    .line 962
    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPadBySystem(Landroid/content/Context;)Z

    move-result v3

    .line 963
    new-instance v4, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;

    invoke-direct {v4}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;-><init>()V

    .line 964
    new-instance v5, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;-><init>()V

    .line 965
    new-instance v6, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;

    invoke-direct {v6}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;-><init>()V

    const/4 v7, 0x0

    if-eqz p1, :cond_10b

    if-eqz v3, :cond_2d

    const/high16 v8, 0x42900000  # 72.0f

    goto :goto_2f

    :cond_2d
    const/high16 v8, 0x42780000  # 62.0f

    :goto_2f
    if-eqz v3, :cond_34

    const/high16 v9, 0x43000000  # 128.0f

    goto :goto_36

    :cond_34
    const/high16 v9, 0x42b40000  # 90.0f

    .line 969
    :goto_36
    invoke-static {v0, v8}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v10

    .line 970
    invoke-static {v0, v9}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v11

    if-eqz v3, :cond_43

    const/16 v12, 0x48

    goto :goto_45

    :cond_43
    const/16 v12, 0x40

    .line 972
    :goto_45
    sget v13, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    int-to-float v12, v12

    invoke-static {v0, v12}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v12

    sub-int/2addr v13, v12

    .line 973
    new-instance v12, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    invoke-direct {v12}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;-><init>()V

    .line 974
    invoke-virtual {v12, v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->setNormal(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V

    .line 975
    invoke-virtual {v12, v6}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->setFullscreen(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V

    .line 976
    invoke-virtual {v4, v12}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->setLandscape(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;)V

    const/high16 v12, 0x40000000  # 2.0f

    if-eqz v3, :cond_96

    int-to-float v3, v13

    const v14, 0x3f2147ae  # 0.63f

    mul-float v14, v14, v3

    div-float v15, v14, v2

    .line 980
    invoke-static {v0, v14}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    .line 981
    invoke-static {v0, v15}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    sub-float/2addr v3, v14

    .line 982
    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setLeft(I)V

    .line 983
    invoke-virtual {v5, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setRight(I)V

    sub-int v2, v1, v10

    sub-int/2addr v2, v11

    int-to-float v2, v2

    sub-float/2addr v2, v15

    div-float/2addr v2, v12

    .line 984
    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v8, v2

    float-to-int v3, v8

    .line 985
    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setTop(I)V

    add-float/2addr v9, v2

    float-to-int v2, v9

    .line 986
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setBottom(I)V

    goto :goto_c1

    :cond_96
    sub-int v2, v1, v10

    sub-int/2addr v2, v11

    int-to-float v2, v2

    const v3, 0x3fccfb72

    mul-float v10, v2, v3

    .line 990
    invoke-static {v0, v10}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    .line 991
    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    int-to-float v2, v13

    sub-float/2addr v2, v10

    .line 992
    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setLeft(I)V

    .line 993
    invoke-virtual {v5, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setRight(I)V

    float-to-int v2, v8

    .line 994
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setTop(I)V

    float-to-int v2, v9

    .line 995
    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setBottom(I)V

    :goto_c1
    int-to-float v1, v1

    const v2, 0x3fccfb72

    mul-float v3, v1, v2

    int-to-float v5, v13

    cmpl-float v8, v3, v5

    if-lez v8, :cond_ed

    div-float v2, v5, v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v12

    .line 1001
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v1

    .line 1002
    invoke-static {v0, v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    .line 1003
    invoke-static {v0, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    .line 1004
    invoke-virtual {v6, v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setTop(I)V

    .line 1005
    invoke-virtual {v6, v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setBottom(I)V

    .line 1006
    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setRight(I)V

    goto/16 :goto_165

    .line 1008
    :cond_ed
    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    .line 1009
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    sub-float/2addr v5, v3

    div-float/2addr v5, v12

    .line 1010
    invoke-static {v0, v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setRight(I)V

    .line 1011
    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setTop(I)V

    .line 1012
    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setBottom(I)V

    goto :goto_165

    :cond_10b
    if-eqz v3, :cond_110

    const/16 v2, 0x50

    goto :goto_112

    :cond_110
    const/16 v2, 0x4a

    .line 1016
    :goto_112
    sget v3, Lcom/codemao/creativestore/CreativeStoreConstants;->SYSTEM_WIDTH:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result v2

    sub-int/2addr v3, v2

    .line 1018
    new-instance v2, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;-><init>()V

    .line 1019
    invoke-virtual {v2, v5}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->setNormal(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V

    .line 1020
    invoke-virtual {v2, v6}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;->setFullscreen(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;)V

    .line 1021
    invoke-virtual {v4, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;->setPortrait(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean;)V

    int-to-float v1, v1

    .line 1022
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    const v2, 0x3fccfb72

    div-float v8, v1, v2

    .line 1023
    invoke-static {v0, v8}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    .line 1024
    invoke-virtual {v5, v7}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setRight(I)V

    mul-float v5, v1, v2

    int-to-float v3, v3

    cmpg-float v7, v5, v3

    if-gez v7, :cond_155

    .line 1028
    invoke-static {v0, v5}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    .line 1029
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    goto :goto_165

    :cond_155
    div-float v1, v3, v2

    .line 1032
    invoke-static {v0, v3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setHeight(I)V

    .line 1033
    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->px2dp(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean$StageLocationBean$NormalBean;->setWidth(I)V

    :goto_165
    return-object v4
.end method

.method private changeActorLockedStatus(Ljava/lang/String;ZZ)V
    .registers 6

    .line 2108
    new-instance v0, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "locked"

    invoke-direct {v0, v1, p2, p1}, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2109
    new-instance p2, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v1, "hidden_in_edit"

    invoke-direct {p2, v1, p3, p1}, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2111
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2112
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2113
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTOR_SET_PROPERTIES"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearLocalImgs(Lcom/codemao/creativestore/bean/UserImgDictVO;I)V
    .registers 6

    .line 3229
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v1, :cond_c

    if-nez p2, :cond_3b

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_c

    .line 3235
    :cond_3b
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    if-eqz v2, :cond_c

    .line 3236
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-nez v0, :cond_c

    .line 3238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    goto :goto_c

    :cond_6a
    return-void
.end method

.method private static createCloudUUId()Ljava/lang/String;
    .registers 1

    .line 952
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->generateShortUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 6

    .line 2397
    new-instance v0, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/StyleVO;-><init>()V

    .line 2398
    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/StyleVO;->setId(Ljava/lang/String;)V

    .line 2399
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/StyleVO;->setName(Ljava/lang/String;)V

    if-nez p4, :cond_14

    .line 2400
    new-instance p4, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 p1, 0x0

    invoke-direct {p4, p1, p2, p1, p2}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    :cond_14
    invoke-virtual {v0, p4}, Lcom/codemao/creativestore/bean/StyleVO;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 2401
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    const-string p1, "res"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 2402
    invoke-virtual {v0, p3}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    goto :goto_2c

    .line 2404
    :cond_29
    invoke-virtual {v0, p3}, Lcom/codemao/creativestore/bean/StyleVO;->setUrl(Ljava/lang/String;)V

    :goto_2c
    return-object v0
.end method

.method private createUUId()Ljava/lang/String;
    .registers 2

    .line 2709
    invoke-static {}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->createUUId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteAImgsRemain()V
    .registers 2

    .line 1051
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$6;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$6;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteActor(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;Z)V"
        }
    .end annotation

    .line 2393
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->deleteActorInCache(Ljava/util/List;ZZ)V

    return-void
.end method

.method private doAutoDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 3360
    :goto_4
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 3361
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3363
    :cond_2c
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doAutoDeleteScene(Lcom/codemao/creativestore/bean/SceneVO;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3086
    :goto_5
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 3087
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3089
    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 3090
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 3092
    :cond_55
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private doAutoDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 3370
    :cond_3
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 3371
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->userImgDictVOCopy:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v0, :cond_3b

    .line 3373
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3375
    :cond_3b
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->userImgDictVOCopy:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3377
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private downloadCloudMaterial(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;)V
    .registers 6

    .line 1594
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    if-nez v0, :cond_b

    .line 1595
    new-instance v0, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    .line 1597
    :cond_b
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->setmStatusListener(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;)V

    .line 1598
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->clearTask()V

    .line 1599
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/CreativeCenterUtils;->baseCloudMaterialPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1602
    new-instance v2, Lcom/codemao/creativecenter/utils/down/DownloadFile;

    invoke-direct {v2, v1, v0}, Lcom/codemao/creativecenter/utils/down/DownloadFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-virtual {v0, v2}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->addTask(Lcom/codemao/creativecenter/utils/down/DownloadFile;)V

    goto :goto_1b

    .line 1606
    :cond_5c
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->startTask()V

    return-void
.end method

.method private getAutoFinalXmLInfo(Z)V
    .registers 6

    .line 2978
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$21;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$21;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V

    const-string p1, "HAS_EVENT_BLOCKS"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method private getCleanMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3348
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cleanMap:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 3349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cleanMap:Ljava/util/Map;

    goto :goto_f

    .line 3351
    :cond_c
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3353
    :goto_f
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cleanMap:Ljava/util/Map;

    return-object v0
.end method

.method public static getCreativeWebViewUrl()Ljava/lang/String;
    .registers 3

    .line 887
    sget-object v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 888
    sget-object v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localUrl:Ljava/lang/String;

    goto :goto_d

    :cond_b
    const-string v0, "file:///android_asset/webview/workspace.html"

    .line 890
    :goto_d
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 891
    sget-object v1, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {v1}, Lcom/nemo/commonui/NemoUIConfigManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    if-ne v1, v2, :cond_26

    const-string v1, "language"

    const-string v2, "en"

    .line 892
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 894
    :cond_26
    invoke-static {}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->get()Lcom/codemao/creativecenter/http/CreativeRetrofitManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/http/CreativeRetrofitManager;->isInternational()Z

    move-result v1

    if-eqz v1, :cond_37

    const-string v1, "intl"

    const-string v2, "true"

    .line 895
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 897
    :cond_37
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExistsSoundNames()Ljava/lang/String;
    .registers 4

    .line 3338
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitSoundName()Ljava/lang/String;

    move-result-object v0

    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 3341
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    .line 3342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3344
    :cond_17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFinalXmLInfo(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 6

    .line 2834
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$19;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    const-string p1, "HAS_EVENT_BLOCKS"

    const-string p2, ""

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method private getMaxIndex(Ljava/lang/String;)I
    .registers 11

    .line 1498
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExistsSoundNames()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 1499
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1500
    array-length v1, v0

    const/4 v2, -0x1

    if-eqz v1, :cond_7e

    array-length v1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1c

    aget-object v1, v0, v4

    .line 1501
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_7e

    .line 1504
    :cond_1c
    array-length v1, v0

    const/4 v5, 0x0

    :goto_1e
    if-ge v5, v1, :cond_7e

    aget-object v6, v0, v5

    .line 1505
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 1506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1507
    array-length v7, v6

    if-lez v7, :cond_7b

    .line 1508
    aget-object v7, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5b

    .line 1510
    :try_start_50
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1511
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_5a} :catch_7b

    goto :goto_7b

    .line 1515
    :cond_5b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    array-length v6, v6

    if-ne v6, v3, :cond_7b

    .line 1516
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :catch_7b
    :cond_7b
    :goto_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_7e
    :goto_7e
    return v2
.end method

.method private getSoundNamesWithStyles()Ljava/lang/String;
    .registers 5

    .line 3314
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_67

    .line 3315
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_sound_index:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3316
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v2}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->readAssertResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3317
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/presenter/CreateUtils$28;

    invoke-direct {v3, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$28;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    .line 3318
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 3317
    invoke-virtual {v2, v0, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    .line 3320
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 3321
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5d

    .line 3322
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3324
    :cond_5d
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    .line 3327
    :cond_67
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getExitSoundName()Ljava/lang/String;

    move-result-object v0

    .line 3328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 3330
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    :cond_7c
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->martrialNames:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserMaterialsImagePath()Ljava/lang/String;
    .registers 2

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/nemo_users_db/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getSaveImageFoldName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user_material/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .registers 20

    move-object/from16 v0, p0

    .line 1248
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    .line 1250
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    .line 1251
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    .line 1252
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    .line 1254
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_3f

    .line 1258
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v4

    .line 1259
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v5

    if-eqz v4, :cond_39

    .line 1261
    invoke-virtual {v4, v3}, Lcom/codemao/creativestore/bean/ActorsVO;->setCurrent_actor(Ljava/lang/String;)V

    :cond_39
    if-eqz v5, :cond_41

    .line 1264
    invoke-virtual {v5, v3}, Lcom/codemao/creativestore/bean/ScenesVO;->setCurrent_scene(Ljava/lang/String;)V

    goto :goto_41

    :cond_3f
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1267
    :cond_41
    :goto_41
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v6}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_60

    .line 1269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/nemo_users_db/"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    .line 1271
    :cond_60
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->checkBcm(Z)V

    .line 1272
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v8, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    if-eqz v8, :cond_94

    .line 1273
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_78
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1274
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/ImgDictVO;

    .line 1275
    iget-object v9, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 1278
    :cond_94
    new-instance v8, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v8}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    iput-object v8, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1279
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v6, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v8}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1281
    :cond_a7
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    .line 1282
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    .line 1284
    iget-object v6, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    const-string v6, "file://"

    if-eqz v4, :cond_2a5

    .line 1286
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_2a5

    .line 1287
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1288
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1289
    iget-object v11, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v11, v11, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1290
    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v11

    if-eqz v11, :cond_299

    .line 1291
    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_103
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_299

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1293
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v13

    if-eqz v13, :cond_12e

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v13

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v13

    if-eqz v13, :cond_12e

    .line 1294
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v13

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/codemao/creativestore/bean/StyleVO;

    goto :goto_12f

    :cond_12e
    const/4 v13, 0x0

    :goto_12f
    if-eqz v13, :cond_13c

    .line 1296
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_13c

    goto :goto_103

    .line 1301
    :cond_13c
    iget-object v14, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v14, v12}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1302
    iget-object v15, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v15, v15, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    if-eqz v15, :cond_208

    .line 1303
    invoke-virtual {v15}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_208

    iget-object v15, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    .line 1304
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_208

    if-ltz v14, :cond_208

    .line 1307
    new-instance v15, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-direct {v15, v7}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 1308
    invoke-virtual {v15, v12}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    if-eqz v13, :cond_189

    .line 1309
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v16

    if-eqz v16, :cond_189

    .line 1310
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v9

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v3

    invoke-direct {v2, v7, v8, v3, v4}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v15, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    goto :goto_197

    :cond_189
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 1312
    new-instance v2, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v15, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 1314
    :goto_197
    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 1315
    iget-object v2, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v2, :cond_1ed

    .line 1316
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1ed

    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    if-eqz v13, :cond_1fc

    .line 1319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto :goto_1fc

    :cond_1ed
    if-eqz v13, :cond_1fc

    .line 1321
    iget-object v2, v13, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1fc

    .line 1322
    iget-object v2, v13, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-virtual {v15, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 1325
    :cond_1fc
    :goto_1fc
    iget-object v2, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v2, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1326
    iget-object v2, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v2, v14}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_291

    :cond_208
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    if-eqz v13, :cond_291

    .line 1330
    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 1332
    iget-object v3, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    if-eqz v3, :cond_22b

    .line 1333
    sget-object v4, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    .line 1334
    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getActorPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    .line 1335
    invoke-virtual {v7}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getActorMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v7

    .line 1333
    invoke-virtual {v3, v4, v7, v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getLocalPathFromUrl(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_22d

    :cond_22b
    move-object/from16 v3, v17

    .line 1340
    :goto_22d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23e

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_244

    .line 1341
    :cond_23e
    sget-object v3, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v3, v2}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1344
    :cond_244
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_292

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_256

    goto :goto_292

    .line 1348
    :cond_256
    iput-object v3, v13, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 1349
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_291

    .line 1350
    new-instance v2, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 1351
    invoke-virtual {v2, v12}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 1352
    new-instance v4, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v7

    invoke-virtual {v13}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v14

    invoke-direct {v4, v7, v8, v14, v15}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 1353
    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 1354
    iget-object v4, v13, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 1355
    iget-object v4, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_292

    :cond_291
    :goto_291
    const/4 v3, 0x1

    :cond_292
    :goto_292
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v7, 0x1

    goto/16 :goto_103

    :cond_299
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    const/4 v3, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v7, 0x1

    goto/16 :goto_d8

    :cond_2a5
    move-object/from16 v17, v3

    const/4 v2, 0x0

    if-eqz v5, :cond_457

    .line 1364
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_457

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_457

    const/4 v3, 0x0

    .line 1365
    :goto_2b7
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_457

    .line 1366
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_order()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/SceneVO;

    if-eqz v4, :cond_44c

    .line 1368
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v7

    if-eqz v7, :cond_44c

    .line 1369
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2e3
    :goto_2e3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1370
    iget-object v9, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_3ac

    .line 1373
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getStyles()Ljava/util/Vector;

    move-result-object v10

    if-eqz v10, :cond_2e3

    .line 1374
    new-instance v10, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-direct {v10, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 1375
    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 1376
    new-instance v11, Lcom/codemao/creativestore/bean/CenterPoint;

    const-wide/16 v12, 0x0

    invoke-direct {v11, v12, v13, v12, v13}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v10, v11}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 1377
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    if-eqz v1, :cond_3a0

    .line 1380
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v11

    if-eqz v11, :cond_3a0

    .line 1381
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v11

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_3a0

    .line 1382
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v11

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3a0

    .line 1385
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v11

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codemao/creativestore/bean/StyleVO;

    .line 1386
    iget-object v14, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v14, v14, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v14}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-eqz v8, :cond_393

    .line 1387
    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_393

    .line 1388
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    if-eqz v11, :cond_3a0

    .line 1390
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v11, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto :goto_3a0

    .line 1392
    :cond_393
    iget-object v8, v11, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3a0

    .line 1393
    iget-object v8, v11, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 1397
    :cond_3a0
    :goto_3a0
    iget-object v8, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1398
    iget-object v8, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2e3

    :cond_3ac
    const-wide/16 v12, 0x0

    .line 1401
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz v9, :cond_2e3

    .line 1402
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2e3

    .line 1403
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getUrl()Ljava/lang/String;

    move-result-object v10

    .line 1405
    iget-object v11, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    if-eqz v11, :cond_3e5

    .line 1406
    sget-object v14, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    .line 1407
    invoke-virtual {v11}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getDownloadUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getScenePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    .line 1408
    invoke-virtual {v15}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getSceneMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v15

    .line 1406
    invoke-virtual {v11, v14, v15, v10}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getLocalPathFromUrl(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3e7

    :cond_3e5
    move-object/from16 v11, v17

    .line 1413
    :goto_3e7
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3f8

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3fe

    .line 1414
    :cond_3f8
    sget-object v11, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->INSTANCE:Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;

    invoke-virtual {v11, v10}, Lcom/codemao/creativecenter/utils/bcm/DownloadCollectionImageManager;->getFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1417
    :cond_3fe
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2e3

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_411

    goto/16 :goto_2e3

    .line 1421
    :cond_411
    iput-object v11, v9, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 1422
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2e3

    .line 1423
    new-instance v10, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;

    invoke-direct {v10, v2}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;-><init>(I)V

    .line 1424
    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setStyle_id(Ljava/lang/String;)V

    .line 1425
    new-instance v8, Lcom/codemao/creativestore/bean/CenterPoint;

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/CenterPoint;->getX()D

    move-result-wide v14

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getCenter_point()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v11

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/CenterPoint;->getY()D

    move-result-wide v12

    invoke-direct {v8, v14, v15, v12, v13}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setCenter_point(Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 1426
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setEntity_id(Ljava/lang/String;)V

    .line 1427
    iget-object v8, v9, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-virtual {v10, v8}, Lcom/codemao/creativestore/bean/LocalImgInfoMsg;->setLocalPath(Ljava/lang/String;)V

    .line 1428
    iget-object v8, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v8, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e3

    .line 1435
    :cond_44c
    iget-object v7, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v7, v7, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2b7

    .line 1438
    :cond_457
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47f

    .line 1439
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v3, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/SceneVO;

    iput-object v3, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    .line 1440
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v3, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->initActorList(Lcom/codemao/creativestore/bean/SceneVO;)V

    .line 1441
    iget-object v1, v0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->initSoundList()V

    :cond_47f
    return-void
.end method

.method private initLocalFile()V
    .registers 13

    const-string v0, "/"

    .line 1158
    :try_start_2
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_417

    const-string v2, ".cover"

    const-string v3, ".coverc"

    const-string v4, ".userimgc"

    const-string v5, ".metac"

    const-string v6, ".bcmc"

    const-string v7, ".userimg"

    const-string v8, ".bcm"

    const-string v9, ".meta"

    if-eqz v1, :cond_161

    .line 1160
    :try_start_1c
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    .line 1161
    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->hasAutoSaveFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 1162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_bc} :catch_417

    .line 1167
    :try_start_bc
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d9} :catch_da

    goto :goto_ef

    .line 1169
    :catch_da
    :try_start_da
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1170
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1172
    :goto_ef
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MetaVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 1173
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V

    goto/16 :goto_3eb

    .line 1175
    :cond_12c
    new-instance v1, Lcom/codemao/creativestore/bean/DefaultBcm;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/DefaultBcm;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->creativeStoreLocaleInfo:Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->getGetDefaultWorkName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->creativeStoreLocaleInfo:Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

    .line 1176
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->getDefaultBgName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    .line 1177
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1175
    invoke-virtual {v1, v2, v3, v4}, Lcom/codemao/creativestore/bean/DefaultBcm;->getDefaultBcm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v1

    .line 1178
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v3

    const-class v4, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v3, v1, v4}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->parseJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V

    .line 1179
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->newMetaV0Instance()V

    goto/16 :goto_3eb

    .line 1181
    :cond_161
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-string v10, "webview"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d0

    .line 1182
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    .line 1183
    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->hasAutoSaveFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27d

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_20d} :catch_417

    .line 1190
    :try_start_20d
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;
    :try_end_22a
    .catch Ljava/lang/Exception; {:try_start_20d .. :try_end_22a} :catch_22b

    goto :goto_240

    .line 1192
    :catch_22b
    :try_start_22b
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1193
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1195
    :goto_240
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MetaVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 1196
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V

    goto/16 :goto_3eb

    .line 1198
    :cond_27d
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v2}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-class v4, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v2, v3, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseBcm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V

    .line 1199
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v2}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v3, v3, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v2, v3, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parseBcm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MetaVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 1200
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setType(I)V

    .line 1201
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v1

    const-string v2, "work_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    goto/16 :goto_3eb

    .line 1205
    :cond_2d0
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    .line 1206
    invoke-static {v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->hasAutoSaveFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37b

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->moveFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37b
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_37b} :catch_417

    .line 1214
    :cond_37b
    :try_start_37b
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_37b .. :try_end_398} :catch_399

    goto :goto_3ae

    .line 1216
    :catch_399
    :try_start_399
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1217
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1219
    :goto_3ae
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/MetaVO;

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 1220
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-class v3, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-static {v2, v3}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/BcmVO;

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->setBcmVO(Lcom/codemao/creativestore/bean/BcmVO;)V

    .line 1221
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->isMicroBit()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setMicroBit(Z)V

    .line 1223
    :goto_3eb
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    if-nez v2, :cond_404

    .line 1224
    new-instance v2, Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-direct {v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;-><init>()V

    iput-object v2, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    .line 1225
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/UserImgDictVO;->setUser_img_dict(Ljava/util/Map;)V

    .line 1227
    :cond_404
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workUid:Ljava/lang/String;
    :try_end_416
    .catch Ljava/lang/Exception; {:try_start_399 .. :try_end_416} :catch_417

    goto :goto_42c

    :catch_417
    move-exception v0

    .line 1229
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    const-string/jumbo v2, "加载bcm出错"

    invoke-virtual {v1, v2, v0}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1230
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/codemao/creativestore/presenter/CreateUtils$9;

    invoke-direct {v2, p0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils$9;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_42c
    return-void
.end method

.method private initLocalStyleImg()V
    .registers 3

    .line 1066
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_11

    .line 1067
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$7;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$7;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 1081
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeBgStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$8;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$8;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2e
    return-void
.end method

.method private initMaterials()V
    .registers 3

    .line 1136
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    if-nez v0, :cond_7

    return-void

    .line 1140
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1141
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    .line 1142
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->updateMaterialsInfo()V

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1145
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    if-eqz v1, :cond_6a

    .line 1147
    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/MetaVO;->setMaterial_urls(Ljava/util/List;)V

    goto :goto_6a

    .line 1149
    :cond_37
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getMaterial_urls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getMaterial_urls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6a

    .line 1150
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getMaterial_urls()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1151
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    invoke-direct {v1, v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    .line 1152
    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->updateMaterialsInfo()V

    :cond_6a
    :goto_6a
    return-void
.end method

.method private initWebviewData(Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/WebUserInfo;)V
    .registers 15

    .line 1092
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1093
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    iput-object v0, p2, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    goto :goto_21

    .line 1095
    :cond_17
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    .line 1097
    :goto_21
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initWorkId()V

    const/4 v0, 0x0

    .line 1100
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->getOpenBcmMode()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "course"

    if-ne v1, v2, :cond_3d

    .line 1101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "microbit"

    .line 1102
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3a
    move-object v11, v0

    move-object v10, v3

    goto :goto_4a

    .line 1104
    :cond_3d
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->getOpenBcmMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_47

    goto :goto_3a

    :cond_47
    const-string v3, "normal"

    goto :goto_3a

    .line 1109
    :goto_4a
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/InitWebDateMsg;

    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    iget-object v7, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

    .line 1114
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v2

    iget-boolean v2, v2, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v2, :cond_5f

    const/16 v2, 0x48

    const/16 v9, 0x48

    goto :goto_63

    :cond_5f
    const/16 v2, 0x40

    const/16 v9, 0x40

    :goto_63
    move-object v4, v1

    move-object v6, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v11}, Lcom/codemao/creativestore/bean/InitWebDateMsg;-><init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/InitWebDateMsg$StagePositionBean;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/bean/WebUserInfo;ILjava/lang/String;Ljava/util/List;)V

    .line 1117
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "INIT_WEBVIEW_DATA"

    .line 1109
    invoke-virtual {v0, p2, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initWhenReload(Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V
    .registers 4

    .line 3212
    :try_start_0
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v1}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->initStyleFile(Landroid/content/Context;)V

    .line 3213
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/CreativeThemeMaterialUtils;->initAllThemeFile()V

    .line 3214
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initLocalFile()V

    .line 3215
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initData()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 3217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3219
    :goto_1f
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->downloadStatusListener:Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;

    .line 3220
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->checkMaterial()V

    return-void
.end method

.method private initWorkId()V
    .registers 3

    .line 1121
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    if-eqz v0, :cond_a

    .line 1122
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/WorksEvent;->getWorkId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    .line 1124
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1125
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object v0

    const-string v1, "work_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1127
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    .line 1130
    :cond_26
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    .line 1131
    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    :cond_33
    return-void
.end method

.method private synthetic lambda$changeBluetoothPermissionState$0(Lcom/polidea/rxandroidble2_codemao/RxBleClient$State;)Lkotlin/Unit;
    .registers 4

    .line 3503
    sget-object v0, Lcom/codemao/creativestore/presenter/CreateUtils$30;->$SwitchMap$com$polidea$rxandroidble2_codemao$RxBleClient$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_23

    const/4 v0, 0x3

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1a

    const/16 p1, 0x64

    goto :goto_28

    :cond_1a
    const/16 p1, 0x69

    goto :goto_28

    :cond_1d
    const/16 p1, 0x68

    goto :goto_28

    :cond_20
    const/16 p1, 0x67

    goto :goto_28

    :cond_23
    const/16 p1, 0x66

    goto :goto_28

    :cond_26
    const/16 p1, 0x6a

    .line 3523
    :goto_28
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v1, p1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->permissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$changeBluetoothPermissionState$1(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)Lkotlin/Unit;
    .registers 5

    .line 3528
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disposeBlueScan()V

    .line 3529
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$29;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$29;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$changeBluetoothPermissionState$2(Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;)Lkotlin/Unit;
    .registers 4

    .line 3538
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleScanException;->getReason()I

    move-result p1

    const v0, 0x7ffffffe

    if-eq p1, v0, :cond_1b

    packed-switch p1, :pswitch_data_2a

    const/16 p1, 0x64

    goto :goto_1d

    :pswitch_f  #0x4
    const/16 p1, 0x69

    goto :goto_1d

    :pswitch_12  #0x3
    const/16 p1, 0x67

    goto :goto_1d

    :pswitch_15  #0x2
    const/16 p1, 0x66

    goto :goto_1d

    :pswitch_18  #0x1
    const/16 p1, 0x68

    goto :goto_1d

    :cond_1b
    :pswitch_1b  #0x0, 0x5, 0x6, 0x7, 0x8, 0x9
    const/16 p1, 0x65

    .line 3565
    :goto_1d
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;

    invoke-direct {v1, p1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->permissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b  #00000000
        :pswitch_18  #00000001
        :pswitch_15  #00000002
        :pswitch_12  #00000003
        :pswitch_f  #00000004
        :pswitch_1b  #00000005
        :pswitch_1b  #00000006
        :pswitch_1b  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
    .end packed-switch
.end method

.method private newMetaV0Instance()V
    .registers 3

    .line 1240
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v1, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/MetaVO;-><init>()V

    iput-object v1, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    .line 1241
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    iget-object v1, v1, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_name(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setHave_published_status(Z)V

    .line 1243
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setPublish_status(I)V

    .line 1244
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MetaVO;->setBcm_version(Ljava/lang/String;)V

    return-void
.end method

.method private peripheral(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V
    .registers 6

    .line 3490
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;

    .line 3492
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object v2

    invoke-interface {v2}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 3493
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getRssi()I

    move-result v3

    .line 3494
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;->getBleDevice()Lcom/polidea/rxandroidble2_codemao/RxBleDevice;

    move-result-object p1

    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 3490
    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->peripheral(Lcom/codemao/creativestore/jsbridge/bean/PeripheralReturnData;)V

    return-void
.end method

.method private resetAutoSaveTimer()V
    .registers 1

    .line 2801
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->stopAutoSaveTimer()V

    .line 2802
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->startAutoSaveTimer()V

    return-void
.end method


# virtual methods
.method public addActorPropertyRevoke(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 7

    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_5

    return-void

    .line 2640
    :cond_5
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v2, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    invoke-direct {v2, p2, p3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-direct {v1, p1, v2}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    return-void
.end method

.method public addActors(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 2328
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    const-string/jumbo v1, "角色页面"

    const-string/jumbo v2, "添加角色成功"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/CreativeStoreUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2332
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_18b

    .line 2333
    new-instance v5, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {v5}, Lcom/codemao/creativestore/bean/ActorVO;-><init>()V

    .line 2334
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v6

    .line 2335
    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setId(Ljava/lang/String;)V

    .line 2336
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v7, v7, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-static {v6, v7}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->buildNewName(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setName(Ljava/lang/String;)V

    const-wide/high16 v6, 0x4059000000000000L  # 100.0

    .line 2337
    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    const-wide/16 v6, 0x0

    .line 2338
    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 2339
    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 2340
    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v6, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setScene_id(Ljava/lang/String;)V

    const-string v6, ""

    .line 2341
    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setBlocksXML(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 2342
    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setVisible(Z)V

    .line 2343
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 2345
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 2346
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_10b

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_84

    goto/16 :goto_10b

    :cond_84
    const/4 v7, 0x0

    .line 2359
    :goto_85
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_171

    .line 2360
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v8

    .line 2361
    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2362
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v11}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCenterPoint()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v11

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/codemao/creativestore/presenter/CreateUtils;->createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v9

    .line 2363
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v10

    .line 2365
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_e8

    .line 2366
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2367
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    goto :goto_f6

    .line 2369
    :cond_e8
    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v10

    .line 2370
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 2373
    :goto_f6
    iget-object v10, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v10}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_85

    .line 2347
    :cond_10b
    :goto_10b
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v8

    .line 2348
    invoke-virtual {v6, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2349
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/codemao/creativestore/bean/MaterialActorBean;->qiniuUrl:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getCenterPoint()Lcom/codemao/creativestore/bean/CenterPoint;

    move-result-object v11

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/codemao/creativestore/presenter/CreateUtils;->createStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativestore/bean/CenterPoint;)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v9

    .line 2350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    .line 2351
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2353
    iget-object v7, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v7}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2354
    new-instance v7, Lcom/codemao/creativestore/bean/ImgDictVO;

    invoke-direct {v7}, Lcom/codemao/creativestore/bean/ImgDictVO;-><init>()V

    .line 2355
    invoke-virtual {v7, v8}, Lcom/codemao/creativestore/bean/ImgDictVO;->setId(Ljava/lang/String;)V

    .line 2356
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/codemao/creativestore/bean/ImgDictVO;->setPath(Ljava/lang/String;)V

    .line 2357
    iget-object v9, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v9, v9, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_171
    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2377
    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setStyles(Ljava/util/Vector;)V

    .line 2378
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2379
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1f

    .line 2381
    :cond_18b
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2382
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addActors(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public addBroadcast(Ljava/lang/String;Lcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 6

    .line 2612
    new-instance v0, Lcom/codemao/creativestore/bean/BroadcastVO;

    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/codemao/creativestore/bean/BroadcastVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public addLocalImgs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/LocalImgInfoMsg;",
            ">;)V"
        }
    .end annotation

    .line 1549
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addLocalImgs(Ljava/util/List;)V

    return-void
.end method

.method public addNewScene(I)V
    .registers 3

    .line 1819
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addNewScene(I)V

    return-void
.end method

.method public addSounds(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)I"
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addSounds(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public addToDeleteStyle(Ljava/lang/String;)V
    .registers 6

    .line 2746
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2749
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz p1, :cond_2e

    .line 2751
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    return-void
.end method

.method public addVariable(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/CompletionHandler;)V
    .registers 13

    .line 2590
    new-instance v7, Lcom/codemao/creativestore/bean/VariableVO;

    const-string v0, "cloud"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/codemao/creativestore/presenter/CreateUtils;->createCloudUUId()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v0

    :goto_13
    move-object v1, v0

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    .line 2591
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/codemao/creativestore/bean/VariableVO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2592
    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/codemao/creativestore/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public cacheCover()V
    .registers 2

    .line 3248
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$25;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$25;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public changeActorLockedStatus(Ljava/lang/String;ZZZ)V
    .registers 7

    .line 2097
    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    .line 2098
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    .line 2099
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setLocked(Z)V

    .line 2100
    invoke-virtual {v0, p3}, Lcom/codemao/creativestore/bean/ActorVO;->setHidden_in_edit(Z)V

    .line 2101
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorLockedStatus(Ljava/lang/String;ZZ)V

    if-nez p4, :cond_18

    const/16 p1, 0x12

    .line 2103
    invoke-virtual {p0, p1, v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->addActorPropertyRevoke(ILcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    :cond_18
    return-void
.end method

.method public changeActorOder(IIZ)V
    .registers 7

    if-ltz p1, :cond_bd

    if-ltz p2, :cond_bd

    if-ne p1, p2, :cond_8

    goto/16 :goto_bd

    .line 2301
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, p1

    .line 2302
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sub-int/2addr v1, p2

    if-eqz p3, :cond_62

    .line 2304
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p3, p3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p3

    .line 2305
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2306
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 2307
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p3, p3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 2308
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p3, p3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p3, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 2309
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p3, p3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p3, p2, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 2310
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {p1}, Lcom/codemao/creativestore/view/NewBcmView;->updateUserList()V

    goto :goto_97

    .line 2312
    :cond_62
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p3, p3, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object p3

    .line 2313
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 2314
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1, p3}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 2315
    new-instance v0, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;

    invoke-direct {v0, p3, p1, p2}, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;-><init>(Ljava/lang/String;II)V

    .line 2316
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance p2, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 p3, 0xa

    invoke-direct {p2, p3, v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 2319
    :goto_97
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p1

    new-instance p2, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;

    const-string p3, "actors"

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getActors()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v0, v1}, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2320
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p3, "SCENE_SET_PROPERTY"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_bd} :catch_bd

    :catch_bd
    :cond_bd
    :goto_bd
    return-void
.end method

.method public changeActorPosition(Ljava/lang/String;DD)V
    .registers 7

    .line 2127
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCleanMap()Ljava/util/Map;

    move-result-object v0

    .line 2128
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "x"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "y"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2130
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance p3, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    const-string p4, "position"

    invoke-direct {p3, p1, p4, v0}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p3}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTOR_SET_PROPERTY"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeActorRotation(Ljava/lang/String;D)V
    .registers 7

    .line 2089
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCleanMap()Ljava/util/Map;

    move-result-object v0

    const-wide v1, 0x400921fb54442d18L  # Math.PI

    mul-double p2, p2, v1

    const-wide v1, 0x4066800000000000L  # 180.0

    div-double/2addr p2, v1

    .line 2091
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "rotation"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    invoke-direct {v1, p1, p3, v0}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTOR_SET_PROPERTY"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeActorScale(Ljava/lang/String;DLjava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    .line 2119
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCleanMap()Ljava/util/Map;

    move-result-object v0

    .line 2120
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string p3, "scale"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "styles_center_point"

    .line 2121
    invoke-interface {v0, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance p4, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    invoke-direct {p4, p1, p3, v0}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p4}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ACTOR_SET_PROPERTY"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/CenterPoint;",
            ">;)V"
        }
    .end annotation

    .line 1920
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    return-void
.end method

.method public changeBcm(Lcom/codemao/creativestore/bean/WorksEvent;)V
    .registers 3

    .line 3125
    iget-object v0, p1, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workUid:Ljava/lang/String;

    .line 3126
    iput-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    const/4 p1, -0x1

    const/4 v0, 0x1

    .line 3127
    invoke-virtual {p0, p1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcm(II)V

    return-void
.end method

.method public changeBgStyle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2548
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;

    const-string v2, "current_style_id"

    invoke-direct {v1, v2, p1, p2}, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2549
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v0, "SCENE_SET_PROPERTY"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeBluetoothPermissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V
    .registers 5

    .line 3500
    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;->getState()I

    move-result v0

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_25

    .line 3501
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->observeStateChange(Lkotlin/jvm/functions/Function1;)V

    .line 3526
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    new-instance v2, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->scanBleDevices([Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    goto :goto_2a

    .line 3569
    :cond_25
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->permissionState(Lcom/codemao/creativestore/jsbridge/bean/StateReturnData;)V

    :goto_2a
    return-void
.end method

.method public changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            "Ljava/lang/String;",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-nez p5, :cond_3

    return-void

    .line 2518
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2519
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 2520
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SceneVO;

    if-eqz v2, :cond_35

    .line 2522
    invoke-virtual {v2, p4}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v2, p5}, Lcom/codemao/creativestore/bean/SceneVO;->setStyles(Ljava/util/Vector;)V

    goto :goto_3d

    :cond_35
    if-eqz v1, :cond_3d

    .line 2525
    invoke-virtual {v1, p4}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2526
    invoke-virtual {v1, p5}, Lcom/codemao/creativestore/bean/ActorVO;->setStyles(Ljava/util/Vector;)V

    :cond_3d
    :goto_3d
    const/4 v1, 0x0

    .line 2528
    :goto_3e
    invoke-virtual {p5}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_62

    .line 2529
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p5, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 2531
    :cond_62
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object p5

    new-instance v1, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;

    invoke-direct {v1, p1, p4, v0}, Lcom/codemao/creativestore/bean/SetEntityStylesMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p5, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2532
    iget-object p4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p5, "SET_ENTITY_STYLES"

    invoke-virtual {p4, p5, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_89

    .line 2534
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance p4, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 p5, 0xd

    new-instance p6, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;

    invoke-direct {p6, p2, p3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;)V

    invoke-direct {p4, p5, p6}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p4}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    :cond_89
    return-void
.end method

.method public checkMaterial()V
    .registers 8

    .line 1692
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    .line 1693
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "res"

    if-eqz v0, :cond_83

    .line 1695
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    if-eqz v2, :cond_83

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_83

    .line 1696
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_30
    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1697
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/creativestore/bean/StyleVO;

    if-eqz v4, :cond_30

    .line 1699
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object v5

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->isLocalBaseMaterial(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_30

    .line 1700
    iget-object v5, v4, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    if-eqz v5, :cond_71

    .line 1701
    new-instance v3, Ljava/io/File;

    iget-object v5, v4, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_71
    if-eqz v3, :cond_79

    .line 1703
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_30

    .line 1704
    :cond_79
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :cond_83
    if-eqz v0, :cond_fb

    .line 1710
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v2

    if-eqz v2, :cond_fb

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_fb

    .line 1711
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getAudios()Lcom/codemao/creativestore/bean/SoundsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SoundsVO;->getSounds()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a5
    :goto_a5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1712
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/SoundVO;

    if-eqz v2, :cond_a5

    .line 1714
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a5

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 1715
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v5

    iget-object v5, v5, Lcom/codemao/creativecenter/CreativeCenterUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a5

    .line 1717
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/SoundVO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a5

    .line 1723
    :cond_fb
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->needDownloadCloudMatrial:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_123

    .line 1724
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/CreativeNetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11a

    .line 1725
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$11;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$11;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1733
    :cond_11a
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$12;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$12;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-direct {p0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->downloadCloudMaterial(Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager$DownloadStatusListener;)V

    goto :goto_12d

    .line 1788
    :cond_123
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$13;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$13;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_12d
    return-void
.end method

.method public cleanBg(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 9

    .line 2617
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    .line 2618
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2619
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->creativeStoreLocaleInfo:Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreativeStoreLocaleInfo;->getDefaultBgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->isLandscape()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->getDefaultBgStyle(Ljava/lang/String;Z)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object v0

    .line 2620
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2621
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2622
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2623
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2624
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 2625
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2626
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeEntityStyle(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/util/Vector;Z)V

    return-void
.end method

.method public closeBluetoothConnectionPage()V
    .registers 4

    .line 3599
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "CLOSE_BLUETOOTH_CONNECTION_PAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public copyActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 2291
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->copyActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method public copyActorStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2560
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/ActorCopyPropertyInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/codemao/creativestore/bean/ActorCopyPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2561
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p3, "COPY_ACTOR_STYLE"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public copyBgStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 2554
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/codemao/creativestore/bean/BgCopyPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2555
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p3, "COPY_SCENE_STYLE"

    invoke-virtual {p2, p3, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public copySound(Lcom/codemao/creativestore/bean/SoundVO;I)V
    .registers 5

    .line 1540
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->copySound(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;I)V

    return-void
.end method

.method public delActorStyle(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2566
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/ActorOrderPropertyInfo;

    invoke-direct {v1, p1, p2}, Lcom/codemao/creativestore/bean/ActorOrderPropertyInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2567
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v0, "REMOVE_ACTOR_STYLES"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public delBgStyle(Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2572
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/BgOrderPropertyInfo;

    invoke-direct {v1, p1, p2}, Lcom/codemao/creativestore/bean/BgOrderPropertyInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2573
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v0, "REMOVE_SCENE_STYLES"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 2387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2388
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2389
    invoke-direct {p0, v0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteActor(Ljava/util/List;Z)V

    return-void
.end method

.method public deleteScene(IZ)V
    .registers 4

    .line 1829
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->deleteScene(IZ)V

    return-void
.end method

.method public deleteWork()V
    .registers 2

    .line 3108
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$22;

    invoke-direct {v0, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$22;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public disconnectAllBluetoothDevices()V
    .registers 5

    .line 3587
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnectAllDevices()Ljava/util/List;

    move-result-object v0

    .line 3588
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3589
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v3, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;

    invoke-direct {v3, v1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    goto :goto_a

    :cond_21
    return-void
.end method

.method public doAutoSaveDelete()V
    .registers 5

    .line 2723
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2724
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2725
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;

    .line 2726
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getType()I

    move-result v2

    if-eqz v2, :cond_46

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_32

    goto :goto_13

    .line 2734
    :cond_32
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/StyleVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteStyle(Lcom/codemao/creativestore/bean/StyleVO;)V

    goto :goto_13

    .line 2731
    :cond_3c
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto :goto_13

    .line 2728
    :cond_46
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateDeleteCacheInfo;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->doAutoDeleteScene(Lcom/codemao/creativestore/bean/SceneVO;)V

    goto :goto_13

    .line 2739
    :cond_50
    iget-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    if-eqz v0, :cond_5b

    .line 2740
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2742
    :cond_5b
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->updateToDeleteImg()V

    return-void
.end method

.method public endDebug()V
    .registers 4

    .line 2600
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "SET_DEBUG_STATE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public finishEditHanshu(Z)V
    .registers 4

    .line 2679
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    if-eqz p1, :cond_7

    const-string p1, "true"

    goto :goto_9

    :cond_7
    const-string p1, "false"

    :goto_9
    const-string v1, "FINISH_EDITING_PROCEDURE"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 3

    .line 1799
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getActorById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object p1

    return-object p1
.end method

.method public getActors()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation

    .line 1554
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    return-object v0
.end method

.method public getActorsBlockCounts(Ljava/lang/String;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V
    .registers 6

    .line 3289
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"entity_id\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$27;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$27;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V

    const-string p2, "GET_ENTITY_BLOCK_COUNT"

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p1, v2, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public getBasePath()Ljava/lang/String;
    .registers 2

    .line 1040
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;
    .registers 2

    .line 1564
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 3

    .line 2756
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    if-nez v1, :cond_1a

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 2757
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0

    .line 2759
    :cond_1a
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;
    .registers 2

    .line 2719
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    return-object v0
.end method

.method public getCurrentSceneIndex()I
    .registers 3

    .line 2714
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getExitRecordSoundName()Ljava/lang/String;
    .registers 2

    .line 1467
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getExitRecordSoundName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitRecordSoundNameArray()[Ljava/lang/String;
    .registers 3

    .line 1472
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getExitRecordSoundName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitSoundName()Ljava/lang/String;
    .registers 2

    .line 1457
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getExitSoundName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitSoundName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1462
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getExitSoundName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocalImgPath(Lcom/codemao/creativestore/bean/MaterialActorBean;)Ljava/lang/String;
    .registers 4

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaterialAudioPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 3469
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    if-eqz v0, :cond_18

    .line 3470
    sget-object v1, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->Companion:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager$Companion;->getAudioPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->materialsDownloadManager:Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getAudioMaterials()Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/codemao/creativecenter/utils/bcm/MaterialsDownloadManager;->getLocalPathFromUrl(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/bean/MaterialsItemInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_18
    return-object p1
.end method

.method public getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;
    .registers 2

    .line 3307
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    if-nez v0, :cond_9

    .line 3308
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->newMetaV0Instance()V

    .line 3310
    :cond_9
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    return-object v0
.end method

.method public getNewRecordNameByNum(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/MaterialActorBean;",
            ">;)V"
        }
    .end annotation

    .line 1481
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/MaterialActorBean;

    .line 1486
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMaxIndex(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    goto :goto_4

    :cond_40
    if-lez v2, :cond_4

    .line 1491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    goto :goto_4

    :cond_5a
    return-void
.end method

.method public getRecordPath()Ljava/lang/String;
    .registers 3

    .line 2684
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScenes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/SceneVO;",
            ">;"
        }
    .end annotation

    .line 1559
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    return-object v0
.end method

.method public getSounds()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/codemao/creativestore/bean/SoundVO;",
            ">;"
        }
    .end annotation

    .line 1452
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->sounds:Ljava/util/Vector;

    return-object v0
.end method

.method public getStyleById(Ljava/lang/String;)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 3

    .line 2689
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/StyleVO;

    return-object p1
.end method

.method public getStyleUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2440
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getStyles()Lcom/codemao/creativestore/bean/StylesVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/StylesVO;->getStyles_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/StyleVO;

    const-string v0, "file:///android_asset/webview/res/drawable/lost_actor.png"

    if-nez p1, :cond_19

    return-object v0

    .line 2444
    :cond_19
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getTexture()Ljava/lang/String;

    move-result-object v1

    .line 2445
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2447
    iget-object v1, p1, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 2448
    iget-object p1, p1, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    return-object p1

    .line 2452
    :cond_2e
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/StyleVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/ImgDictVO;

    if-nez v1, :cond_4a

    const-string v1, "res/drawable/lost_actor.png"

    .line 2454
    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/bean/StyleVO;->setTexture(Ljava/lang/String;)V

    .line 2455
    iput-object v0, p1, Lcom/codemao/creativestore/bean/StyleVO;->path:Ljava/lang/String;

    return-object v0

    .line 2458
    :cond_4a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->basePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ImgDictVO;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_65
    const-string p1, "file"

    .line 2462
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6e

    return-object v1

    .line 2465
    :cond_6e
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getInstance()Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/creativestore/utils/CreativeBaseMaterialUtils;->getMaterialPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserImgDictVO()Lcom/codemao/creativestore/bean/UserImgDictVO;
    .registers 2

    .line 1574
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    return-object v0
.end method

.method public getVariableList()V
    .registers 6

    .line 2694
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$16;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$16;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    const-string v2, "CHANGE_RUNTIME_VARIABLES"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public getWorkId()Ljava/lang/String;
    .registers 2

    .line 2934
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkPath()Ljava/lang/String;
    .registers 2

    .line 3225
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkUid()Ljava/lang/String;
    .registers 2

    .line 2938
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workUid:Ljava/lang/String;

    return-object v0
.end method

.method public getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;
    .registers 2

    .line 2942
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->worksEvent:Lcom/codemao/creativestore/bean/WorksEvent;

    return-object v0
.end method

.method public hideActorPivotEdit()V
    .registers 4

    .line 2421
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "ACTOR_PIVOT_EDIT"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hideBlockError()V
    .registers 4

    .line 1447
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "HIDE_ERROR_TOAST"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public hideEnable()Z
    .registers 2

    .line 1569
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

    iget-boolean v0, v0, Lcom/codemao/creativestore/bean/TheateConfigInfo;->enable_hide:Z

    return v0
.end method

.method public initNewBeeMsg(Ljava/lang/String;)V
    .registers 4

    .line 2435
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "INIT_NEWCOMER_MODE"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public landscape()V
    .registers 4

    .line 1814
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;-><init>(Z)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "THEATRE_FULL_SCREEN"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadBcm(Z)V
    .registers 2

    .line 1611
    new-instance p1, Lcom/codemao/creativestore/presenter/CreateUtils$10;

    invoke-direct {p1, p0}, Lcom/codemao/creativestore/presenter/CreateUtils$10;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;)V

    invoke-static {p1}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notificationFromBluetooth(Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;)V
    .registers 3

    .line 3574
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->notification(Lcom/codemao/creativestore/jsbridge/bean/NotificationReturnData;)V

    return-void
.end method

.method public notifyBluetoothDisconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V
    .registers 4

    .line 3594
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/jsbridge/bean/ConnectData;->getPeripheralId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->disconnect(Ljava/lang/String;)V

    .line 3595
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->disconnect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 2481
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->cloudMaterialDownloadQueueManager:Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;

    if-eqz v0, :cond_7

    .line 2482
    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/down/CloudMaterialDownloadQueueManager;->clearTask()V

    .line 2484
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->stopAutoSaveTimer()V

    .line 2485
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->recycle()V

    .line 2486
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->rxBlueClientUtils:Lcom/codemao/creativestore/utils/RxBlueClientUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils;->onDestroy()V

    return-void
.end method

.method public onKeyboardHdie()V
    .registers 4

    .line 2608
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "RESET_ASK_POSITION"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyboardShow()V
    .registers 4

    .line 2604
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "SET_ASK_POSITION"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTiltRecive(Lcom/codemao/creativestore/bean/TiltMsg;)V
    .registers 4

    .line 1530
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ON_RECIEVE_TILT"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public phoneShake()V
    .registers 4

    .line 3103
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "PHONE_SHAKE"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public play()V
    .registers 4

    .line 2656
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "SET_RUN_STATE"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public portrait()V
    .registers 4

    .line 1809
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/codemao/creativestore/bean/FullScreenChangeMsg;-><init>(Z)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "THEATRE_FULL_SCREEN"

    invoke-virtual {v0, v2, v1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public redo()V
    .registers 13

    .line 2135
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->getRedoList()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_310

    .line 2136
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_310

    .line 2139
    :cond_10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    .line 2140
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_312

    :pswitch_24  #0xb, 0xc
    goto/16 :goto_306

    .line 2165
    :pswitch_26  #0x13
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;

    .line 2166
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->getSceneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->getActorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectEntity(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_306

    .line 2219
    :pswitch_3b  #0x12
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    .line 2220
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2221
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isLocked()Z

    move-result v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v7

    invoke-virtual {p0, v5, v6, v7, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorLockedStatus(Ljava/lang/String;ZZZ)V

    .line 2222
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_306

    .line 2255
    :pswitch_65  #0x11
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;

    .line 2256
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2257
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    .line 2258
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 2259
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 2260
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldCenterPoint()Ljava/util/HashMap;

    .line 2261
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewCenterPoint()Ljava/util/HashMap;

    move-result-object v6

    .line 2262
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->setOldActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 2263
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3, v5, v6}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    .line 2264
    new-instance v3, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/codemao/creativestore/bean/CenterPoint;

    .line 2265
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v8

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-direct {v3, v4, v6, v7}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 2266
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SET_STYLES_CENTER_POINT"

    invoke-virtual {v4, v5, v3}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_306

    .line 2227
    :pswitch_bf  #0xe, 0xf, 0x10
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    .line 2228
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2229
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    .line 2231
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2232
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v7

    const/16 v8, 0xe

    if-ne v7, v8, :cond_f7

    const-string v7, "rotation"

    .line 2234
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    .line 2235
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getRadian()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15c

    .line 2236
    :cond_f7
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v7

    const/16 v8, 0xf

    if-ne v7, v8, :cond_12a

    const-string v7, "scale"

    .line 2238
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v8

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    .line 2239
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewCenter()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "styles_center_point"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    iget-object v8, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewCenter()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    goto :goto_15c

    .line 2246
    :cond_12a
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 2247
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 2248
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "x"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2249
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-string v8, "y"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "position"

    .line 2251
    :goto_15c
    iget-object v8, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v9, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5, v7, v6}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ACTOR_SET_PROPERTY"

    invoke-virtual {v8, v6, v5}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_306

    .line 2195
    :pswitch_175  #0xd
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;

    .line 2196
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2197
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    .line 2198
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 2199
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 2200
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2201
    iget-object v8, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v8, v8, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a5

    .line 2203
    :cond_1b9
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2204
    iget-boolean v6, v5, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v6, :cond_1f1

    .line 2205
    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v6, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2206
    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v6, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2209
    :cond_1f1
    new-instance v6, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->getStyle_ids()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2211
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RESET_ENTITY_STYLES"

    invoke-virtual {v5, v7, v6}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_306

    .line 2191
    :pswitch_219  #0xa
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;

    .line 2192
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->getFrom()I

    move-result v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->getTo()I

    move-result v3

    invoke-virtual {p0, v4, v3, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorOder(IIZ)V

    goto/16 :goto_306

    .line 2186
    :pswitch_22c  #0x9
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;

    .line 2187
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->getActorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBackground(Ljava/lang/String;ZZ)V

    .line 2188
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->setVisible(Z)V

    goto/16 :goto_306

    .line 2215
    :pswitch_247  #0x8
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;

    .line 2216
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_306

    .line 2181
    :pswitch_256  #0x7
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorRename;

    .line 2182
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->getNewName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->getActorVO()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->renameActor(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_306

    .line 2174
    :pswitch_269  #0x6
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;

    .line 2175
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getActors()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteActor(Ljava/util/List;Z)V

    .line 2176
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    if-eqz v5, :cond_306

    .line 2177
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_306

    .line 2169
    :pswitch_285  #0x5
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;

    .line 2170
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getActors()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getIndexs()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addActors(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 2171
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_306

    .line 2161
    :pswitch_2a5  #0x4
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;

    .line 2162
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->getLastPosition()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->getNewPosition()I

    move-result v3

    invoke-virtual {v4, v5, v3, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    goto :goto_306

    .line 2156
    :pswitch_2b9  #0x3
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    .line 2157
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getLastPosition()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteScene(IZ)V

    .line 2158
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getLastPosition()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getPostion()I

    move-result v3

    invoke-virtual {v4, v5, v3, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    goto :goto_306

    .line 2147
    :pswitch_2d4  #0x2
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    .line 2148
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getPostion()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getSceneVO()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v6

    new-instance v7, Lcom/codemao/creativestore/presenter/CreateUtils$15;

    invoke-direct {v7, p0, v3}, Lcom/codemao/creativestore/presenter/CreateUtils$15;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addScene(ILcom/codemao/creativestore/bean/SceneVO;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    goto :goto_306

    .line 2142
    :pswitch_2ed  #0x1
    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorShow;

    .line 2143
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->getActorVO()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    .line 2144
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->setVisible(Z)V

    .line 2269
    :cond_306
    :goto_306
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v3, v1, v0, v2}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;IZ)V

    :cond_310
    :goto_310
    return-void

    nop

    :pswitch_data_312
    .packed-switch 0x1
        :pswitch_2ed  #00000001
        :pswitch_2d4  #00000002
        :pswitch_2b9  #00000003
        :pswitch_2a5  #00000004
        :pswitch_285  #00000005
        :pswitch_269  #00000006
        :pswitch_256  #00000007
        :pswitch_247  #00000008
        :pswitch_22c  #00000009
        :pswitch_219  #0000000a
        :pswitch_24  #0000000b
        :pswitch_24  #0000000c
        :pswitch_175  #0000000d
        :pswitch_bf  #0000000e
        :pswitch_bf  #0000000f
        :pswitch_bf  #00000010
        :pswitch_65  #00000011
        :pswitch_3b  #00000012
        :pswitch_26  #00000013
    .end packed-switch
.end method

.method public redoBlock()V
    .registers 4

    .line 2650
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "BLOCK_REDO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public refreshMetadata()V
    .registers 4

    .line 2765
    :try_start_0
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".meta"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/codemao/creativestore/bean/MetaVO;

    invoke-static {v1, v2}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->parse(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/MetaVO;

    iput-object v1, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v0

    .line 2767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    return-void
.end method

.method public reloadBcm()V
    .registers 2

    const/4 v0, 0x0

    .line 3131
    invoke-virtual {p0, v0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcm(II)V

    return-void
.end method

.method public reloadBcm(II)V
    .registers 5

    .line 3139
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->disconnectAllBluetoothDevices()V

    .line 3141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bcmc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".userimgc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 3143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".metac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 3144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".coverc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->deleteFile(Ljava/lang/String;)V

    .line 3146
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgInfoMsgs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3147
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->localImgStyleId:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 3148
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->clearCache()V

    .line 3149
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteImgPath:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3150
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3152
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->copy()Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v0

    .line 3153
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/UserImgDictVO;->getUser_img_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    if-nez p1, :cond_90

    .line 3156
    invoke-direct {p0, v0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils;->clearLocalImgs(Lcom/codemao/creativestore/bean/UserImgDictVO;I)V

    .line 3158
    :cond_90
    new-instance v1, Lcom/codemao/creativestore/presenter/CreateUtils$23;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$23;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;ILcom/codemao/creativestore/bean/UserImgDictVO;I)V

    invoke-direct {p0, v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->initWhenReload(Lcom/codemao/creativestore/listener/BaseCloudDownloadListener;)V

    return-void
.end method

.method public reloadBcmBySynergic()V
    .registers 2

    const/4 v0, 0x1

    .line 3135
    invoke-virtual {p0, v0, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->reloadBcm(II)V

    return-void
.end method

.method public removeSound(Lcom/codemao/creativestore/bean/SoundVO;)V
    .registers 4

    .line 1535
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getRecordPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->removeSound(Lcom/codemao/creativestore/bean/SoundVO;Ljava/lang/String;)V

    return-void
.end method

.method public renameActor(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 10

    .line 2274
    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2275
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2276
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-static {p1, v1}, Lcom/codemao/creativestore/jsbridge/utils/CreateConfigUtils;->buildNewName(Ljava/lang/String;Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    .line 2277
    invoke-virtual {p2, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setName(Ljava/lang/String;)V

    .line 2278
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v2, v1}, Lcom/codemao/creativestore/bean/ActorVO;->setName(Ljava/lang/String;)V

    .line 2279
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;

    invoke-virtual {p2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-direct {v3, v5, v1, v4}, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_5b

    .line 2281
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance p3, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/4 v3, 0x7

    new-instance v4, Lcom/codemao/creativestore/bean/CreateOptionActorRename;

    invoke-direct {v4, p2, v0, v1}, Lcom/codemao/creativestore/bean/CreateOptionActorRename;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p3, v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p3}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    goto :goto_62

    .line 2284
    :cond_5b
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p2, p2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actorNameList:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2286
    :goto_62
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p2, "ACTOR_SET_PROPERTY"

    invoke-virtual {p1, p2, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetCenter()V
    .registers 4

    .line 2426
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "ACTOR_PIVOT_RESET"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public revoke()V
    .registers 12

    .line 1945
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->getRevokeList()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_317

    .line 1946
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_317

    .line 1949
    :cond_10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1950
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    .line 1951
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_318

    :pswitch_29  #0xb, 0xc
    goto/16 :goto_312

    .line 1979
    :pswitch_2b  #0x13
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;

    .line 1980
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->getOldSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionSelectEntity;->getOldActorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2, v4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectEntity(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_312

    .line 2028
    :pswitch_40  #0x12
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    .line 2029
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2030
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->isLocked()Z

    move-result v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v7

    invoke-virtual {p0, v5, v6, v7, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorLockedStatus(Ljava/lang/String;ZZZ)V

    .line 2031
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_312

    .line 2070
    :pswitch_6a  #0x11
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;

    .line 2071
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    .line 2072
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2073
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 2074
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 2075
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getOldCenterPoint()Ljava/util/HashMap;

    move-result-object v5

    .line 2076
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->getNewCenterPoint()Ljava/util/HashMap;

    .line 2077
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/CreateOptionChangeActorCenter;->setOldActor(Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 2078
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2, v4, v5}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    .line 2079
    new-instance v2, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/codemao/creativestore/bean/CenterPoint;

    .line 2080
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v7

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/codemao/creativestore/bean/CenterPoint;-><init>(DD)V

    invoke-direct {v2, v3, v5, v6}, Lcom/codemao/creativestore/bean/ActorStyleCenterChangeMsg;-><init>(Ljava/lang/String;Ljava/util/HashMap;Lcom/codemao/creativestore/bean/CenterPoint;)V

    .line 2081
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SET_STYLES_CENTER_POINT"

    invoke-virtual {v3, v4, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_312

    .line 2036
    :pswitch_c4  #0xe, 0xf, 0x10
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;

    .line 2037
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    if-nez v3, :cond_d1

    return-void

    .line 2040
    :cond_d1
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    .line 2041
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2043
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2044
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_103

    const-string v6, "rotation"

    .line 2046
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/codemao/creativestore/bean/ActorVO;->setRotation(D)V

    .line 2047
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getRadian()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_168

    .line 2048
    :cond_103
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getType()I

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_136

    const-string v6, "scale"

    .line 2050
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/codemao/creativestore/bean/ActorVO;->setScale(D)V

    .line 2051
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2053
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldCenter()Ljava/util/HashMap;

    move-result-object v7

    const-string v8, "styles_center_point"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    iget-object v7, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldCenter()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->changeAllCenterPbyActor(Lcom/codemao/creativestore/bean/ActorVO;Ljava/util/HashMap;)V

    goto :goto_168

    .line 2057
    :cond_136
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setX(D)V

    .line 2058
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/codemao/creativestore/bean/ActorVO;->setY(D)V

    .line 2059
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "x"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2060
    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v7, "y"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "position"

    .line 2062
    :goto_168
    iget-object v7, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v8, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4, v6, v5}, Lcom/codemao/creativestore/bean/ActorProptyChangeMsg;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v8}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ACTOR_SET_PROPERTY"

    invoke-virtual {v7, v5, v4}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    invoke-virtual {v2, v3}, Lcom/codemao/creativestore/bean/CreateOptionActorPropertyChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_312

    .line 2009
    :pswitch_181  #0xd
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;

    .line 2010
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v4}, Lcom/codemao/creativestore/bean/ActorVO;->copy()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    .line 2011
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getNewActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v5

    .line 2012
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 2013
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 2014
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1bc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2016
    iget-object v8, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v8, v8, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->toDeleteList:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1bc

    .line 2018
    :cond_1d0
    iget-boolean v6, v5, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v6, :cond_1fd

    .line 2019
    iget-object v6, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v6, v6, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/codemao/creativestore/bean/ActorVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2020
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v2, v2, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->getOldActorV0()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v6

    invoke-virtual {v6}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrent_style_id(Ljava/lang/String;)V

    .line 2022
    :cond_1fd
    new-instance v2, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorStyleResetMsg;->getStyle_ids()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5}, Lcom/codemao/creativestore/bean/ActorVO;->getStyles()Ljava/util/Vector;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2024
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "RESET_ENTITY_STYLES"

    invoke-virtual {v5, v6, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/CreateOptionActorStyleChange;->setOldActorV0(Lcom/codemao/creativestore/bean/ActorVO;)V

    goto/16 :goto_312

    .line 2005
    :pswitch_225  #0xa
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;

    .line 2006
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->getTo()I

    move-result v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorChangeOrder;->getFrom()I

    move-result v3

    invoke-virtual {p0, v4, v3, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorOder(IIZ)V

    goto/16 :goto_312

    .line 1999
    :pswitch_238  #0x9
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;

    .line 2000
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->getActorId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->showBackground(Ljava/lang/String;ZZ)V

    .line 2002
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->isVisible()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;->setVisible(Z)V

    goto/16 :goto_312

    .line 2066
    :pswitch_253  #0x8
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;

    .line 2067
    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionActorSelect;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_312

    .line 1995
    :pswitch_262  #0x7
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorRename;

    .line 1996
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->getPreName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorRename;->getActorVO()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v3

    invoke-virtual {p0, v4, v3, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->renameActor(Ljava/lang/String;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_312

    .line 1988
    :pswitch_275  #0x6
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;

    .line 1989
    iget-object v5, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getActors()Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getIndexs()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addActors(Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)V

    .line 1990
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    if-eqz v2, :cond_312

    .line 1991
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorDelete;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_312

    .line 1983
    :pswitch_29c  #0x5
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;

    .line 1984
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getActors()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteActor(Ljava/util/List;Z)V

    .line 1985
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorAdd;->getOldActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_312

    .line 1975
    :pswitch_2b1  #0x4
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;

    .line 1976
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->getNewPosition()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneChoose;->getLastPosition()I

    move-result v3

    invoke-virtual {v4, v5, v3, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    goto :goto_312

    .line 1963
    :pswitch_2c5  #0x3
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;

    .line 1964
    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getLastPosition()I

    move-result v4

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;->getSceneVO()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v5

    new-instance v6, Lcom/codemao/creativestore/presenter/CreateUtils$14;

    invoke-direct {v6, p0, v2}, Lcom/codemao/creativestore/presenter/CreateUtils$14;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/bean/CreateOptionSceneDelete;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->addScene(ILcom/codemao/creativestore/bean/SceneVO;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V

    goto :goto_312

    .line 1958
    :pswitch_2de  #0x2
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;

    .line 1959
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getPostion()I

    move-result v4

    invoke-virtual {p0, v4, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->deleteScene(IZ)V

    .line 1960
    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getPostion()I

    move-result v5

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionSceneAdd;->getLastPosition()I

    move-result v3

    invoke-virtual {v4, v5, v3, v2, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    goto :goto_312

    .line 1953
    :pswitch_2f9  #0x1
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/CreateOptionInfo;->getOptionInfo()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/CreateOptionActorShow;

    .line 1954
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->getActorVO()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v4

    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->showActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    .line 1955
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->isVisible()Z

    move-result v4

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;->setVisible(Z)V

    .line 2084
    :cond_312
    :goto_312
    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    invoke-virtual {v2, v0, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRedoOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;I)V

    :cond_317
    :goto_317
    return-void

    :pswitch_data_318
    .packed-switch 0x1
        :pswitch_2f9  #00000001
        :pswitch_2de  #00000002
        :pswitch_2c5  #00000003
        :pswitch_2b1  #00000004
        :pswitch_29c  #00000005
        :pswitch_275  #00000006
        :pswitch_262  #00000007
        :pswitch_253  #00000008
        :pswitch_238  #00000009
        :pswitch_225  #0000000a
        :pswitch_29  #0000000b
        :pswitch_29  #0000000c
        :pswitch_181  #0000000d
        :pswitch_c4  #0000000e
        :pswitch_c4  #0000000f
        :pswitch_c4  #00000010
        :pswitch_6a  #00000011
        :pswitch_40  #00000012
        :pswitch_2b  #00000013
    .end packed-switch
.end method

.method public revokeBlock()V
    .registers 4

    .line 2645
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "BLOCK_UNDO"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveBcm(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V
    .registers 5

    .line 2819
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->resetAutoSaveTimer()V

    const/4 v0, 0x1

    .line 2820
    iput-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isSaving:Z

    .line 2821
    iput-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    const-string v0, "nemolog  save"

    const-string v1, "saveBcm"

    .line 2822
    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$18;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/creativestore/presenter/CreateUtils$18;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveBcmAuto(Z)V
    .registers 4

    .line 2947
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->resetAutoSaveTimer()V

    .line 2948
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmView:Lcom/codemao/creativestore/view/NewBcmView;

    invoke-interface {v0}, Lcom/codemao/creativestore/view/NewBcmView;->needAutoSave()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 2951
    :cond_c
    iget-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isSaving:Z

    if-nez v0, :cond_50

    iget-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isRealSaving:Z

    if-eqz v0, :cond_15

    goto :goto_50

    .line 2954
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    if-nez v0, :cond_1e

    return-void

    .line 2957
    :cond_1e
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->copy()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->bcmVOCopy:Lcom/codemao/creativestore/bean/BcmVO;

    .line 2958
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->metaVO:Lcom/codemao/creativestore/bean/MetaVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->copy()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->metaVOCopy:Lcom/codemao/creativestore/bean/MetaVO;

    .line 2959
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->userImgDictVO:Lcom/codemao/creativestore/bean/UserImgDictVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/UserImgDictVO;->copy()Lcom/codemao/creativestore/bean/UserImgDictVO;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->userImgDictVOCopy:Lcom/codemao/creativestore/bean/UserImgDictVO;

    const-string v0, "nemolog  save"

    const-string v1, "saveBcmAuto"

    .line 2960
    invoke-static {v0, v1}, Lcom/codemao/creativestore/utils/CreativeLoggerUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2961
    iput-boolean v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->isSaving:Z

    .line 2962
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$20;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativestore/presenter/CreateUtils$20;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;Z)V

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    :cond_50
    :goto_50
    return-void
.end method

.method public selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 5

    .line 1804
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V

    return-void
.end method

.method public selectEntity(Lcom/codemao/creativestore/bean/SelectEntityMsg;)V
    .registers 5

    .line 1861
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SelectEntityMsg;->getScene_id()Ljava/lang/String;

    move-result-object v0

    .line 1862
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/SelectEntityMsg;->getActor_id()Ljava/lang/String;

    move-result-object p1

    .line 1863
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object p1, v0

    .line 1866
    :cond_f
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p1, v2}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectEntity(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public selectErrorActor(Lcom/codemao/creativestore/bean/BlockErrorMsg;)V
    .registers 7

    .line 1834
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BlockErrorMsg;->getScene_id()Ljava/lang/String;

    move-result-object v0

    .line 1835
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/BlockErrorMsg;->getError_entity()Ljava/lang/String;

    move-result-object p1

    .line 1836
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v1, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    .line 1837
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return-void

    .line 1839
    :cond_26
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1840
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto/16 :goto_d1

    .line 1842
    :cond_48
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1843
    invoke-virtual {p0, p1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_d1

    .line 1846
    :cond_60
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BcmVO;->getScenes()Lcom/codemao/creativestore/bean/ScenesVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ScenesVO;->getScenes_dict()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/SceneVO;

    .line 1847
    iget-object v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v3, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    iget-object v4, v1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v4, v4, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->scenes:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v2, v4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    .line 1848
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentActor:Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    return-void

    .line 1850
    :cond_99
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 1851
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object p1, p1, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p0, p1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    goto :goto_d1

    .line 1853
    :cond_ba
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->getBcmVO()Lcom/codemao/creativestore/bean/BcmVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BcmVO;->getActors()Lcom/codemao/creativestore/bean/ActorsVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorsVO;->getActors_dict()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1854
    invoke-virtual {p0, p1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    :goto_d1
    return-void
.end method

.method public selectScene(IIZZ)V
    .registers 6

    .line 1892
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->selectScene(IIZZ)V

    return-void
.end method

.method public showActor(Lcom/codemao/creativestore/bean/ActorVO;ZZ)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 1909
    :cond_3
    invoke-virtual {p1, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setVisible(Z)V

    .line 1910
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visible"

    invoke-direct {v1, v4, v2, v3}, Lcom/codemao/creativestore/bean/ActorSetPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_30

    .line 1912
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    new-instance v2, Lcom/codemao/creativestore/bean/CreateOptionActorShow;

    const/4 v3, 0x1

    xor-int/2addr p2, v3

    invoke-direct {v2, p1, p2}, Lcom/codemao/creativestore/bean/CreateOptionActorShow;-><init>(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    invoke-direct {v1, v3, v2}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 1915
    :cond_30
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p2, "ACTOR_SET_PROPERTY"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showActorPivotEdit()V
    .registers 4

    .line 2416
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "ACTOR_PIVOT_EDIT"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBackground(Ljava/lang/String;ZZ)V
    .registers 8

    .line 1927
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->currentScene:Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/SceneVO;->setVisible(Z)V

    .line 1928
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    iget-object v0, v0, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->actors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 1929
    iget-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v1, :cond_1e

    .line 1930
    invoke-virtual {v0, p2}, Lcom/codemao/creativestore/bean/ActorVO;->setVisible(Z)V

    .line 1933
    :cond_1e
    invoke-static {}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->getInstance()Lcom/codemao/creativestore/utils/CreativeGsonUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "visible"

    invoke-direct {v1, v3, v2, p1}, Lcom/codemao/creativestore/bean/ScreenPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/utils/CreativeGsonUtil;->toJsonStr(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_46

    .line 1935
    iget-object p3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->operationCacheManager:Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;

    new-instance v1, Lcom/codemao/creativestore/bean/CreateOptionInfo;

    const/16 v2, 0x9

    new-instance v3, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v3, p1, p2}, Lcom/codemao/creativestore/bean/CreateOptionBackgroundShow;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2, v3}, Lcom/codemao/creativestore/bean/CreateOptionInfo;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v1}, Lcom/codemao/creativestore/jsbridge/manager/OperationCacheManager;->addRevokeOperation(Lcom/codemao/creativestore/bean/CreateOptionInfo;)V

    .line 1938
    :cond_46
    iget-object p1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string p2, "SCENE_SET_PROPERTY"

    invoke-virtual {p1, p2, v0}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showBlock(Z)V
    .registers 4

    .line 1824
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    if-eqz p1, :cond_7

    const-string p1, "false"

    goto :goto_9

    :cond_7
    const-string p1, "true"

    :goto_9
    const-string v1, "SET_THEATRE_VISIBLE"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public softCopyStyle(Ljava/lang/String;Ljava/lang/String;I)Lcom/codemao/creativestore/bean/StyleVO;
    .registers 6

    .line 2411
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->createUUId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->softCopyStyle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/codemao/creativestore/bean/StyleVO;

    move-result-object p1

    return-object p1
.end method

.method public soundRecieve(D)V
    .registers 4

    double-to-int p1, p1

    .line 3098
    iget-object p2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v0, Lcom/codemao/creativestore/bean/ReciveVoiceMsg;

    invoke-direct {v0, p1}, Lcom/codemao/creativestore/bean/ReciveVoiceMsg;-><init>(I)V

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RECEIVE_SOUND"

    invoke-virtual {p2, v0, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAutoSaveTimer()V
    .registers 8

    .line 2778
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->countDownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_11

    .line 2779
    new-instance v0, Lcom/codemao/creativestore/presenter/CreateUtils$17;

    iget v1, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->time:I

    int-to-long v3, v1

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativestore/presenter/CreateUtils$17;-><init>(Lcom/codemao/creativestore/presenter/CreateUtils;JJ)V

    iput-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->countDownTimer:Landroid/os/CountDownTimer;

    .line 2790
    :cond_11
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->countDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public startDebug()V
    .registers 4

    .line 2596
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "SET_DEBUG_STATE"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .registers 4

    .line 2662
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    const-string v1, "SET_RUN_STATE"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAutoSaveTimer()V
    .registers 2

    .line 2795
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->countDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    .line 2796
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_7
    return-void
.end method

.method public toggleEditModel(Z)V
    .registers 4

    .line 2672
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    if-eqz p1, :cond_7

    const-string p1, "true"

    goto :goto_9

    :cond_7
    const-string p1, "false"

    :goto_9
    const-string v1, "TOGGLE_EDITOR"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateMidi(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 3

    .line 1526
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mDataStore:Lcom/codemao/creativestore/jsbridge/model/JSDataStore;

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/jsbridge/model/JSDataStore;->updateMidi(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method public updateWebUserInfo(Lcom/codemao/creativestore/bean/WebUserInfo;)V
    .registers 6

    .line 1584
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1585
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->bcmVersion:Ljava/lang/String;

    iput-object v0, p1, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    goto :goto_21

    .line 1587
    :cond_17
    invoke-virtual {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/MetaVO;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/creativestore/bean/WebUserInfo;->bcm_version:Ljava/lang/String;

    .line 1589
    :goto_21
    invoke-direct {p0}, Lcom/codemao/creativestore/presenter/CreateUtils;->initWorkId()V

    .line 1590
    iget-object v0, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->mCallJsHelper:Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;

    new-instance v1, Lcom/codemao/creativestore/bean/InitWebDateMsg;

    iget-object v2, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->workId:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/creativestore/presenter/CreateUtils;->theateConfigInfo:Lcom/codemao/creativestore/bean/TheateConfigInfo;

    invoke-direct {v1, v2, v3, p1}, Lcom/codemao/creativestore/bean/InitWebDateMsg;-><init>(Ljava/lang/String;Lcom/codemao/creativestore/bean/TheateConfigInfo;Lcom/codemao/creativestore/bean/WebUserInfo;)V

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/BaseJsonBean;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "INIT_WEBVIEW_DATA"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/creativestore/jsbridge/NativeCallJsHelper;->postMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
