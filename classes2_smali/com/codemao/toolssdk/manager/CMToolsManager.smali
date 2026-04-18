.class public final Lcom/codemao/toolssdk/manager/CMToolsManager;
.super Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;
.source "CMToolsManager.kt"

# interfaces
.implements Lcom/codemao/toolssdk/view/CMToolSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;,
        Lcom/codemao/toolssdk/manager/CMToolsManager$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

.field private static envMode:Lcom/codemao/toolssdk/manager/CMTEnvMode;

.field private static isDebug:Z

.field private static isInternational:Z

.field private static locale:Ljava/util/Locale;

.field private static notchMargin:F

.field private static toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

.field private static userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;


# instance fields
.field private cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

.field private cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private lastLoadUrl:Ljava/lang/String;

.field private onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

.field private toolsWebViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7_z2syCuPvkk0tVJTKhd1JJoNO0(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolSessionEvent$lambda$5(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BxGIs01ZJSGgmZ4X-JkLB3H45Fw(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidFinish$lambda$3(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDW_kzspHh3C4g2fRaxt49WBdgs(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidStart$lambda$2(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJE97AUl1vV5SkZeMHSrfoMiSUE(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->clearImageCacheDirs$lambda$6(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-FJUBvrh919TIc1QLB531qJslo(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidFail$lambda$4(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    const/high16 v0, -0x40800000  # -1.0f

    .line 87
    sput v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->notchMargin:F

    .line 115
    sget-object v0, Lcom/codemao/toolssdk/manager/CMTEnvMode;->TEST:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    sput-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->envMode:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEnvMode$cp()Lcom/codemao/toolssdk/manager/CMTEnvMode;
    .registers 1

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->envMode:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-object v0
.end method

.method public static final synthetic access$getLocale$cp()Ljava/util/Locale;
    .registers 1

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public static final synthetic access$getNotchMargin$cp()F
    .registers 1

    .line 83
    sget v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->notchMargin:F

    return v0
.end method

.method public static final synthetic access$getToolsData$cp()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;
    .registers 1

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-object v0
.end method

.method public static final synthetic access$getUserData$cp()Lcom/codemao/toolssdk/model/dsbridge/UserData;
    .registers 1

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-object v0
.end method

.method public static final synthetic access$isDebug$cp()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->isDebug:Z

    return v0
.end method

.method public static final synthetic access$isInternational$cp()Z
    .registers 1

    .line 83
    sget-boolean v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->isInternational:Z

    return v0
.end method

.method public static final synthetic access$setAppVersionCode$cp(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static final synthetic access$setEnvMode$cp(Lcom/codemao/toolssdk/manager/CMTEnvMode;)V
    .registers 1

    .line 83
    sput-object p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->envMode:Lcom/codemao/toolssdk/manager/CMTEnvMode;

    return-void
.end method

.method public static final synthetic access$setNotchMargin$cp(F)V
    .registers 1

    .line 83
    sput p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->notchMargin:F

    return-void
.end method

.method public static final synthetic access$setToolsData$cp(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V
    .registers 1

    .line 83
    sput-object p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    return-void
.end method

.method public static final synthetic access$setUserData$cp(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V
    .registers 1

    .line 83
    sput-object p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->userData:Lcom/codemao/toolssdk/model/dsbridge/UserData;

    return-void
.end method

.method private final clearImageCacheDirs(Landroid/content/Context;)V
    .registers 3

    .line 938
    new-instance v0, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final clearImageCacheDirs$lambda$6(Landroid/content/Context;)V
    .registers 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 940
    :try_start_5
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 941
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 943
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    return-void
.end method

.method public static synthetic loadMiaoCodeWork$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_16

    .line 646
    sget-object p4, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    .line 642
    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadMiaoCodeWork(Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V

    return-void
.end method

.method public static synthetic loadTemplateWork$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_16

    .line 619
    sget-object p4, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    .line 615
    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadTemplateWork(Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V

    return-void
.end method

.method public static synthetic loadUrl$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V
    .registers 10

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_15

    const/4 p4, 0x0

    :cond_15
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1a

    move-object p5, v0

    :cond_1a
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_20

    .line 683
    sget-object p6, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    .line 677
    :cond_20
    invoke-virtual/range {p0 .. p6}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V

    return-void
.end method

.method public static synthetic loadWorkByLocal$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Ljava/lang/Long;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;ILjava/lang/Object;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_16

    .line 734
    sget-object p4, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    .line 730
    :cond_16
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/manager/CMToolsManager;->loadWorkByLocal(Ljava/lang/Long;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V

    return-void
.end method

.method public static synthetic openHistoryBackupDialog$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1050
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->openHistoryBackupDialog(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic showBackPackPage$default(Lcom/codemao/toolssdk/manager/CMToolsManager;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 1038
    :cond_5
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->showBackPackPage(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final toolLoadDidFail$lambda$4(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$toolsError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1, p2}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    :cond_11
    return-void
.end method

.method private static final toolLoadDidFinish$lambda$3(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidFinish()V

    :cond_c
    return-void
.end method

.method private static final toolLoadDidStart$lambda$2(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolLoadDidStart()V

    :cond_c
    return-void
.end method

.method private static final toolSessionEvent$lambda$5(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 918
    iget-object p0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    if-eqz p0, :cond_11

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/view/CMToolSessionListener;->toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final addMaterials([Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->addMaterials([Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_1f
    return-void
.end method

.method public final changePageOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V
    .registers 3

    .line 926
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;->changeOrientation(Lcom/codemao/toolssdk/model/dsbridge/DeviceOption;)V

    :cond_7
    return-void
.end method

.method public final checkWorkSaveEnable(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_11

    .line 1076
    sget-object v1, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->checkWorkSaveEnable(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V

    :cond_11
    return-void
.end method

.method public final clearActivityResultListener()V
    .registers 2

    const/4 v0, 0x0

    .line 953
    iput-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    return-void
.end method

.method public final destroy()V
    .registers 4

    .line 535
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发CMToolsManager的destroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 536
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    goto :goto_18

    :cond_17
    move-object v1, v2

    :goto_18
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->onDestroy(Landroid/content/Context;)V

    .line 537
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->destroy()V

    .line 538
    :cond_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 539
    :cond_31
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 540
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    .line 541
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 542
    :cond_3c
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/PermissionManager;->destroy()V

    .line 543
    invoke-static {}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->destroy()V

    .line 544
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    .line 545
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    .line 546
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    .line 547
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    .line 548
    iput-object v2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    .line 549
    sget-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->Companion:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;->getInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->onDestroy()V

    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getToolType()Ljava/lang/String;
    .registers 2

    .line 1184
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getToolsWebViewReference()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            ">;"
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final init(Landroid/content/Context;)Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 503
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    .line 504
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->clearImageCacheDirs(Landroid/content/Context;)V

    .line 505
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 506
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->initAndroidId(Landroid/content/Context;)V

    .line 507
    sget-object v0, Lcom/codemao/toolssdk/manager/FileCachePathManager;->INSTANCE:Lcom/codemao/toolssdk/manager/FileCachePathManager;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/manager/FileCachePathManager;->initFilePath(Landroid/content/Context;)V

    .line 508
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public final loadMiaoCodeWork(Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 18

    move-object v0, p0

    .line 648
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    .line 649
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v12

    .line 650
    :goto_e
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    move-object v3, v12

    .line 651
    :goto_1a
    sget-object v4, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_23
    move-object v4, v12

    .line 652
    :goto_24
    sget-object v5, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getSignature()Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_2d
    move-object v5, v12

    .line 657
    :goto_2e
    iget-object v6, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v10, v6

    goto :goto_3b

    :cond_3a
    move-object v10, v12

    .line 658
    :goto_3b
    sget-object v6, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolMode()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_46

    :cond_45
    move-object v11, v12

    :goto_46
    move-object v6, p1

    move v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 648
    invoke-virtual/range {v1 .. v11}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getMiaoCodeUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 660
    sput-boolean p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->isInternational:Z

    .line 661
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_69

    sget-object v3, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v12

    :cond_66
    invoke-virtual {v2, v12}, Lcom/codemao/toolssdk/view/ToolsWebView;->setToolType(Ljava/lang/String;)V

    .line 662
    :cond_69
    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    .line 663
    sget-object v2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 664
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_7f

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->loadUrl(Ljava/lang/String;)V

    .line 665
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "加载过程"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method

.method public final loadTemplateWork(Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 18

    move-object v0, p0

    .line 621
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    .line 622
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v12

    .line 623
    :goto_e
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    move-object v3, v12

    .line 624
    :goto_1a
    sget-object v4, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_23
    move-object v4, v12

    .line 625
    :goto_24
    sget-object v5, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getSignature()Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_2d
    move-object v5, v12

    .line 630
    :goto_2e
    iget-object v6, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v10, v6

    goto :goto_3b

    :cond_3a
    move-object v10, v12

    .line 631
    :goto_3b
    sget-object v6, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolMode()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_46

    :cond_45
    move-object v11, v12

    :goto_46
    move-object v6, p1

    move v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 621
    invoke-virtual/range {v1 .. v11}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getTemplateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    sput-boolean p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->isInternational:Z

    .line 634
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_69

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_69

    sget-object v3, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v3, :cond_66

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v12

    :cond_66
    invoke-virtual {v2, v12}, Lcom/codemao/toolssdk/view/ToolsWebView;->setToolType(Ljava/lang/String;)V

    .line 635
    :cond_69
    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    .line 636
    sget-object v2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 637
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7f

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_7f

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->loadUrl(Ljava/lang/String;)V

    .line 638
    :cond_7f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "加载过程"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method

.method public final loadTestFullUrl(Ljava/lang/String;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    .line 671
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 672
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->loadUrl(Ljava/lang/String;)V

    .line 673
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "加载过程"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 22

    move-object v0, p0

    .line 685
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    .line 686
    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v14, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_d
    move-object v2, v14

    .line 687
    :goto_e
    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    move-object v3, v14

    .line 688
    :goto_1a
    sget-object v4, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v4, :cond_23

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getAppId()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_23
    move-object v4, v14

    .line 689
    :goto_24
    sget-object v5, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getSignature()Ljava/lang/String;

    move-result-object v5

    goto :goto_2e

    :cond_2d
    move-object v5, v14

    .line 696
    :goto_2e
    iget-object v6, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_3a

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    move-object v12, v6

    goto :goto_3b

    :cond_3a
    move-object v12, v14

    .line 697
    :goto_3b
    sget-object v6, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v6, :cond_45

    invoke-virtual {v6}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolMode()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_46

    :cond_45
    move-object v13, v14

    :goto_46
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 685
    invoke-virtual/range {v1 .. v13}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->spliceUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p6

    .line 699
    invoke-virtual {p0, v2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->setPlayerType(Lcom/codemao/toolssdk/manager/PlayerType;)V

    .line 700
    sput-boolean p4, Lcom/codemao/toolssdk/manager/CMToolsManager;->isInternational:Z

    .line 701
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_76

    sget-object v3, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v3, :cond_72

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v3

    goto :goto_73

    :cond_72
    move-object v3, v14

    :goto_73
    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->setToolType(Ljava/lang/String;)V

    .line 702
    :cond_76
    iput-object v1, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    .line 703
    sget-object v2, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 704
    sget-object v2, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    const/4 v3, 0x1

    invoke-static {v2, v14, v3, v14}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->stopDownload$default(Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;Ljava/lang/String;ILjava/lang/Object;)V

    .line 705
    iget-object v2, v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_92

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v2, :cond_92

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->loadUrl(Ljava/lang/String;)V

    .line 706
    :cond_92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final_url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "加载过程"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method

.method public final loadWorkByLocal(Ljava/lang/Long;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;)V
    .registers 15

    .line 736
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    .line 737
    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 p3, 0x0

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    goto :goto_e

    :cond_d
    move-object v1, p3

    .line 738
    :goto_e
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p2

    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object p2

    move-object v2, p2

    goto :goto_1b

    :cond_1a
    move-object v2, p3

    .line 739
    :goto_1b
    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getAppId()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_26

    :cond_25
    move-object v3, p3

    .line 740
    :goto_26
    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz p2, :cond_30

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getSignature()Ljava/lang/String;

    move-result-object p2

    move-object v4, p2

    goto :goto_31

    :cond_30
    move-object v4, p3

    :goto_31
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 741
    sget-object v7, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    iget-object p2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    move-object v8, p2

    goto :goto_42

    :cond_41
    move-object v8, p3

    :goto_42
    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz p2, :cond_4c

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolMode()Ljava/lang/String;

    move-result-object p2

    move-object v9, p2

    goto :goto_4d

    :cond_4c
    move-object v9, p3

    .line 736
    :goto_4d
    invoke-static/range {v0 .. v9}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->access$getCommonParamsUriBuilder(Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 742
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "workId"

    invoke-virtual {p2, p3, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 743
    iget-object p2, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_79

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p2, :cond_79

    const-wide/16 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "uri"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->loadLocal(Ljava/lang/Long;Landroid/net/Uri;)V

    :cond_79
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/manager/ActivityResultCallback;->onActivityResultCallback(IILandroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public final onPause()V
    .registers 1

    return-void
.end method

.method public final onResume()V
    .registers 3

    .line 521
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 522
    :goto_c
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 523
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 525
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_24

    .line 526
    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->onResume()V

    :cond_24
    return-void
.end method

.method public final onStop()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_14

    .line 515
    invoke-static {v0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 516
    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->onStop()V

    :cond_14
    return-void
.end method

.method public final openHistoryBackupDialog(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_11

    .line 1052
    sget-object v1, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->openHistoryBackupDialog(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V

    :cond_11
    return-void
.end method

.method public final saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "manager触发保存作品"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSaveWork(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_2b
    return-void
.end method

.method public final setCmToolSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)V
    .registers 2

    .line 495
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolSessionListener:Lcom/codemao/toolssdk/view/CMToolSessionListener;

    return-void
.end method

.method public final setCmToolsOrientationChangeListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->cmToolsOrientationChangeListener:Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    return-void
.end method

.method public final setConfigurations(Ljava/util/Map;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->setConfigurations(Ljava/util/Map;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_24
    return-void
.end method

.method public final setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->onActivityResultCallback:Lcom/codemao/toolssdk/manager/ActivityResultCallback;

    return-void
.end method

.method public final setToolsWebViewReference(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            ">;)V"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/UserData;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/UserData;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 763
    invoke-virtual {p0, p5, p6}, Lcom/codemao/toolssdk/manager/CMToolsManager;->updateUserToken(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final showBackPackPage(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_11

    .line 1040
    sget-object v1, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->showBackPackPage(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V

    :cond_11
    return-void
.end method

.method public toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const-string v0, "toolsError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 899
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 902
    :cond_11
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    .line 903
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_28

    :cond_26
    :goto_26
    move-object v5, p1

    goto :goto_30

    :cond_28
    :goto_28
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    :cond_2f
    move-object v5, v0

    .line 904
    :goto_30
    sget-object p1, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    sget-object p2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz p2, :cond_3a

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v0

    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWorkType(Ljava/lang/String;Lcom/codemao/toolssdk/manager/PlayerType;)Ljava/lang/String;

    move-result-object v3

    .line 905
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadEnd$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public toolLoadDidFinish()V
    .registers 13

    .line 875
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v1

    :goto_b
    const-string v2, "ROKI"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 877
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v2

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_22

    :cond_21
    move-object v4, v1

    .line 878
    :goto_22
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v2

    goto :goto_2f

    :cond_2d
    const-wide/16 v2, -0x1

    :goto_2f
    move-wide v5, v2

    .line 879
    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_3d

    :cond_3c
    move-object v7, v1

    .line 876
    :goto_3d
    sget-object v8, Lcom/codemao/toolssdk/manager/CMToolsManager$toolLoadDidFinish$1;->INSTANCE:Lcom/codemao/toolssdk/manager/CMToolsManager$toolLoadDidFinish$1;

    sget-object v9, Lcom/codemao/toolssdk/manager/CMToolsManager$toolLoadDidFinish$2;->INSTANCE:Lcom/codemao/toolssdk/manager/CMToolsManager$toolLoadDidFinish$2;

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 887
    :cond_45
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_51

    new-instance v2, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 890
    :cond_51
    sget-object v3, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "作品加载完成"

    invoke-static/range {v3 .. v8}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 894
    sget-object v0, Lcom/codemao/toolssdk/utils/CTWorkUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTWorkUtils;

    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsData:Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v1

    :cond_6b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getPlayerType()Lcom/codemao/toolssdk/manager/PlayerType;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/utils/CTWorkUtils;->getWorkType(Ljava/lang/String;Lcom/codemao/toolssdk/manager/PlayerType;)Ljava/lang/String;

    move-result-object v5

    .line 895
    sget-object v3, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const/4 v11, 0x0

    invoke-static/range {v3 .. v11}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadEnd$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public toolLoadDidStart()V
    .registers 9

    .line 867
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/manager/CMToolsManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 870
    :cond_c
    sget-object v2, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "webView开始加载"

    invoke-static/range {v2 .. v7}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 871
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v1, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->lastLoadUrl:Ljava/lang/String;

    if-nez v1, :cond_24

    const-string v1, ""

    :cond_24
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadStart(Ljava/lang/String;)V

    return-void
.end method

.method public toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 10

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const-string v2, "type"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    :cond_13
    move-object v0, v1

    :goto_14
    const-string v2, "WEBCAM_STATUS"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 910
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getValue()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v1, "value"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 911
    :cond_26
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    if-eqz v0, :cond_4c

    const-string v0, "turn_off"

    .line 912
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 913
    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCameraCloseCallback()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 914
    :cond_45
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "通知业务方，已关闭积木摄像头"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 917
    :cond_4c
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_58

    new-instance v1, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/manager/CMToolsManager;Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 920
    :cond_58
    sget-object v2, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getCommonReportData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "event事件通知"

    .line 920
    invoke-static/range {v2 .. v7}, Lcom/codemao/toolssdk/manager/ReportManager;->sendCollectionReport$default(Lcom/codemao/toolssdk/manager/ReportManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateUserToken(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolsWebViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_25

    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_25
    return-void
.end method
