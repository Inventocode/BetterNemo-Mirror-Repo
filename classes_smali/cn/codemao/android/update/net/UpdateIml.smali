.class public Lcn/codemao/android/update/net/UpdateIml;
.super Ljava/lang/Object;
.source "UpdateIml.java"


# static fields
.field private static instance:Lcn/codemao/android/update/net/UpdateIml;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private isDownloading:Z

.field private netResultListener:Lcn/codemao/android/update/listener/NetResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/update/listener/NetResultListener<",
            "Lcn/codemao/android/update/vo/UpdateResultVO;",
            ">;"
        }
    .end annotation
.end field

.field private netUtils:Lcn/codemao/android/update/net/NetUtils;

.field private savePath:Ljava/lang/String;

.field private updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;


# direct methods
.method public static synthetic $r8$lambda$9Gfi8xGjDEig-o0Cwj4xKQdNNrE(Lcn/codemao/android/update/net/UpdateIml;Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/update/net/UpdateIml;->lambda$download$0(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcn/codemao/android/update/net/UpdateIml$1;

    invoke-direct {v1, p0}, Lcn/codemao/android/update/net/UpdateIml$1;-><init>(Lcn/codemao/android/update/net/UpdateIml;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/update/net/UpdateIml;)Lcn/codemao/android/update/listener/NetResultListener;
    .registers 1

    .line 22
    iget-object p0, p0, Lcn/codemao/android/update/net/UpdateIml;->netResultListener:Lcn/codemao/android/update/listener/NetResultListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/codemao/android/update/net/UpdateIml;)Lcn/codemao/android/update/vo/UpdateResultVO;
    .registers 1

    .line 22
    iget-object p0, p0, Lcn/codemao/android/update/net/UpdateIml;->updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;

    return-object p0
.end method

.method public static instance()Lcn/codemao/android/update/net/UpdateIml;
    .registers 1

    .line 46
    sget-object v0, Lcn/codemao/android/update/net/UpdateIml;->instance:Lcn/codemao/android/update/net/UpdateIml;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcn/codemao/android/update/net/UpdateIml;

    invoke-direct {v0}, Lcn/codemao/android/update/net/UpdateIml;-><init>()V

    sput-object v0, Lcn/codemao/android/update/net/UpdateIml;->instance:Lcn/codemao/android/update/net/UpdateIml;

    .line 49
    :cond_b
    sget-object v0, Lcn/codemao/android/update/net/UpdateIml;->instance:Lcn/codemao/android/update/net/UpdateIml;

    return-object v0
.end method

.method private synthetic lambda$download$0(Landroid/os/Handler;)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->netUtils:Lcn/codemao/android/update/net/NetUtils;

    iget-object v1, p0, Lcn/codemao/android/update/net/UpdateIml;->updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;

    invoke-virtual {v1}, Lcn/codemao/android/update/vo/UpdateResultVO;->getPkgUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/codemao/android/update/net/UpdateIml;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/codemao/android/update/net/NetUtils;->download(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 105
    iput-boolean p1, p0, Lcn/codemao/android/update/net/UpdateIml;->isDownloading:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->netUtils:Lcn/codemao/android/update/net/NetUtils;

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0}, Lcn/codemao/android/update/net/NetUtils;->cancel()V

    :cond_7
    return-void
.end method

.method public final check(Z)V
    .registers 5

    .line 63
    new-instance v0, Lcn/codemao/android/update/net/NetUtils;

    invoke-direct {v0}, Lcn/codemao/android/update/net/NetUtils;-><init>()V

    .line 64
    new-instance v1, Lcn/codemao/android/update/vo/UpdateVO;

    invoke-direct {v1}, Lcn/codemao/android/update/vo/UpdateVO;-><init>()V

    .line 65
    sget-object v2, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v2, v2, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/codemao/android/update/util/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/update/vo/UpdateVO;->setUid(Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v2, v2, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcn/codemao/android/update/vo/UpdateVO;->setPkg(Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v2, v2, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/codemao/android/update/util/DeviceUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/codemao/android/update/vo/UpdateVO;->setSwvc(I)V

    .line 69
    sget-object v2, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v2, v2, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/codemao/android/update/util/DeviceUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Lcn/codemao/android/update/vo/UpdateVO;->setSwvn(Ljava/lang/String;)V

    .line 71
    sget-object v2, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v2, v2, Lcn/codemao/android/update/CodemaoUpdate;->mChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/codemao/android/update/vo/UpdateVO;->setChannel(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1, p1}, Lcn/codemao/android/update/vo/UpdateVO;->setPolicy(Z)V

    .line 74
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    invoke-virtual {p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 77
    sget-object v2, Lcn/codemao/android/update/util/UpdateConstants;->UPDATE_URL:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcn/codemao/android/update/net/NetUtils;->post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_63

    const-string p1, "post request body: null"

    .line 80
    invoke-static {p1}, Lcn/codemao/android/update/util/LogUtils;->d(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcn/codemao/android/update/net/UpdateIml;->handler:Landroid/os/Handler;

    const v0, 0xdbba1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_bb

    .line 83
    :cond_63
    new-instance v1, Lcn/codemao/android/update/net/UpdateIml$3;

    invoke-direct {v1, p0}, Lcn/codemao/android/update/net/UpdateIml$3;-><init>(Lcn/codemao/android/update/net/UpdateIml;)V

    .line 84
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 83
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/codemao/android/update/vo/UpdateResultVO;

    iput-object p1, p0, Lcn/codemao/android/update/net/UpdateIml;->updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    sget-object v0, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v0, v0, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_bb

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;

    .line 89
    invoke-virtual {v0}, Lcn/codemao/android/update/vo/UpdateResultVO;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->updateResultVO:Lcn/codemao/android/update/vo/UpdateResultVO;

    invoke-virtual {v0}, Lcn/codemao/android/update/vo/UpdateResultVO;->getNewVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".apk"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/update/net/UpdateIml;->savePath:Ljava/lang/String;

    .line 91
    iget-object p1, p0, Lcn/codemao/android/update/net/UpdateIml;->handler:Landroid/os/Handler;

    const v0, 0xdbbb1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_bb
    :goto_bb
    return-void
.end method

.method public download(Landroid/os/Handler;)V
    .registers 4

    .line 98
    iget-boolean v0, p0, Lcn/codemao/android/update/net/UpdateIml;->isDownloading:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcn/codemao/android/update/net/UpdateIml;->isDownloading:Z

    .line 102
    new-instance v0, Lcn/codemao/android/update/net/NetUtils;

    invoke-direct {v0}, Lcn/codemao/android/update/net/NetUtils;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/update/net/UpdateIml;->netUtils:Lcn/codemao/android/update/net/NetUtils;

    .line 103
    sget-object v0, Lcn/codemao/android/update/CodemaoUpdate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcn/codemao/android/update/net/UpdateIml$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/update/net/UpdateIml$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/update/net/UpdateIml;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getUpdateData(Lcn/codemao/android/update/listener/NetResultListener;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/codemao/android/update/listener/NetResultListener<",
            "Lcn/codemao/android/update/vo/UpdateResultVO;",
            ">;Z)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcn/codemao/android/update/net/UpdateIml;->netResultListener:Lcn/codemao/android/update/listener/NetResultListener;

    .line 54
    sget-object p1, Lcn/codemao/android/update/CodemaoUpdate;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcn/codemao/android/update/net/UpdateIml$2;

    invoke-direct {v0, p0, p2}, Lcn/codemao/android/update/net/UpdateIml$2;-><init>(Lcn/codemao/android/update/net/UpdateIml;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public install()V
    .registers 3

    .line 116
    sget-object v0, Lcn/codemao/android/update/CodemaoUpdate;->INSTANCE:Lcn/codemao/android/update/CodemaoUpdate;

    iget-object v0, v0, Lcn/codemao/android/update/CodemaoUpdate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/codemao/android/update/net/UpdateIml;->savePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/codemao/android/update/util/InstallUtils;->install(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
