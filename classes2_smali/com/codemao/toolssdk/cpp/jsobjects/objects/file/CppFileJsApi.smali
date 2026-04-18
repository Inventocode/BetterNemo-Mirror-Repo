.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;
.source "CppFileJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCppFileJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CppFileJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ReturnWebUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils\n+ 6 JSObjectResultUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils\n*L\n1#1,784:1\n1#2:785\n11335#3:786\n11670#3,3:787\n1851#4,2:790\n10#5,5:792\n10#5,5:812\n11#6,15:797\n12#6,14:817\n*S KotlinDebug\n*F\n+ 1 CppFileJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi\n*L\n558#1:786\n558#1:787,3\n576#1:790,2\n735#1:792,5\n746#1:812,5\n737#1:797,15\n749#1:817,14\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;


# instance fields
.field private cameraCloseCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private cameraPrepareListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private captureImageListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final fileCacheDir:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private isInAddImagesProgress:Z

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$0YYcgNgRiHgCwc0XC6yIMbyJBmw(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addImages$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pko9KJs5-u9WX9qsYKZW5BGy83A(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->selectImage$lambda$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLhZoOJn5zx1BGrXLCXRV8tEw_U(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addImages$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ifeHiwBBB-yCOjG8FQxb51H6dZ4(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->copyMediaPipeFiles$lambda$11(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApiAI;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    .line 73
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 167
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    .line 168
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->fileCacheDir:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$addAiImage$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addAiImage$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addCameraImage$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addCameraImage$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addCameraImage$fail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addCameraImage$fail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    return-void
.end method

.method public static final synthetic access$addImages$cancelBody$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addImages$cancelBody$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addImages$selectImage(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addImages$selectImage(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$captureImage$denied(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$denied(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)V

    return-void
.end method

.method public static final synthetic access$captureImage$onPhoto(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$onPhoto(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$captureImage$prepare(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 72
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$prepare(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$getCameraCloseCallback$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-object p0
.end method

.method public static final synthetic access$selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$setInAddImagesProgress$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    return-void
.end method

.method private static final addAiImage$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x7d0

    invoke-direct {v1, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 187
    iput-boolean v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    .line 188
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final addCameraImage$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 691
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;

    if-eqz v0, :cond_9

    return-void

    .line 694
    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$execute$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$execute$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-interface {v1, v0, v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppManagerActivity;->launchActivity(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    :cond_31
    return-void
.end method

.method private static final addCameraImage$fail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 685
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;->Companion:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;->getClose()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 686
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 687
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "通知web拍照添加素材失败:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    return-void
.end method

.method private static final addImages$cancelBody$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/ICancelBody;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v3, 0x7d0

    invoke-direct {v1, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    iput-boolean v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    .line 234
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final addImages$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 322
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 323
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v2

    .line 321
    new-instance v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addImages$1$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addImages$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addImages$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addImages$selectImage(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private static final addImages$selectImage(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    .line 240
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const/16 v0, 0x9

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    .line 242
    :goto_20
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 243
    sget-object v2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedCutoutImage:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    goto :goto_2b

    .line 245
    :cond_29
    sget-object v2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedSelectHighlightRect:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 247
    :goto_2b
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 248
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->getHeight()F

    move-result v4

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->getWidth()F

    move-result v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 249
    :goto_3f
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v3, :cond_51

    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 250
    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addImages$selectImage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addImages$selectImage$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 249
    invoke-interface {v3, v4}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 311
    :cond_51
    sget-object p1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 312
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p0, :cond_5c

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_5d

    :cond_5c
    const/4 p0, 0x0

    .line 311
    :goto_5d
    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toAlbum(Landroid/content/Context;ILcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;Z)V

    return-void
.end method

.method private static final captureImage$denied(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            ")V"
        }
    .end annotation

    .line 644
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1bef

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final captureImage$onPhoto(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 629
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "调用拍照"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImageListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$onPhoto$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method private static final captureImage$prepare(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_f

    if-eqz v0, :cond_12

    .line 649
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$prepare$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$prepare$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 657
    :cond_f
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$onPhoto(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_12
    :goto_12
    return-void
.end method

.method private static final copyMediaPipeFiles$lambda$11(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9

    const-string v0, "$application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    :try_start_f
    sget-object v0, Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;->INSTANCE:Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;

    const-string v1, "mediapipe"

    .line 597
    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    invoke-virtual {v2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-virtual {v0, p0, v1, v2}, Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;->copyAssetsDir2Phone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance p0, Ljava/io/File;

    iget-object v0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 601
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 603
    :cond_2c
    iget-object v0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    .line 604
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    .line 606
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://codemaotools"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;-><init>(Ljava/lang/String;)V

    .line 604
    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 603
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 609
    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_56} :catch_57

    goto :goto_6c

    :catch_57
    move-exception p0

    .line 611
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 612
    iget-object p0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x1bd9

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 613
    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_6c
    return-void
.end method

.method private final mkdirs(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 513
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 517
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    if-eqz v1, :cond_27

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_27
    return-object v0
.end method

.method private static final selectImage$lambda$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 430
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 431
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v2

    .line 429
    new-instance v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$1$1;

    invoke-direct {v3, p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$1$1;-><init>(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 348
    instance-of v0, p0, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    if-nez v0, :cond_16

    .line 349
    new-instance p0, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    const-string v0, "album"

    const-string v2, ".png"

    invoke-direct {p0, v0, v2}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 352
    :cond_16
    iget-object v0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    .line 353
    :goto_24
    iget-object v0, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 354
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;

    invoke-direct {v2, p1, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$selectImage$selectImage$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;)V

    .line 353
    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 424
    :cond_36
    sget-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_40

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    :cond_40
    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toAlbum(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addAiImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 195
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addAiImage$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 194
    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 219
    :cond_34
    sget-object p2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    .line 220
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_41

    :cond_40
    move-object v0, v1

    :goto_41
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_48

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    .line 221
    :cond_48
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isScene()Z

    move-result v0

    .line 222
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    move-result-object p1

    .line 219
    invoke-virtual {p2, v1, v0, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;->startActivity(Landroid/app/Activity;ZLcom/codemao/toolssdk/model/dsbridge/StageSize;)V

    return-void
.end method

.method public final addCameraImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    .line 681
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "拍照添加素材:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 713
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_45

    .line 715
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$addCameraImage$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 723
    :cond_45
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addCameraImage$execute(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_4e

    :cond_49
    const/16 p1, 0x1b58

    .line 726
    invoke-static {p0, p2, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->addCameraImage$fail(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    :goto_4e
    return-void
.end method

.method public final addImages(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->isInAddImagesProgress:Z

    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_31

    .line 320
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4c

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    .line 336
    :cond_31
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postOpenAlbumSucceedEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V

    .line 337
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-eqz v0, :cond_4c

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final captureImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生拍照"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 661
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_38

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 662
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_35

    .line 663
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$1$1;

    invoke-direct {v4, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$captureImage$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestCameraPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto :goto_38

    .line 671
    :cond_35
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImage$prepare(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public final copyMediaPipeFiles(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_19

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    if-nez p1, :cond_1d

    return-void

    .line 591
    :cond_1d
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final deleteFilesAtPath(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DeleteFilesAtPathOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeleteFilesAtPathOption;

    .line 575
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生删除文件："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/DeleteFilesAtPathOption;->getUrls()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 1851
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 577
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_50

    goto :goto_52

    :cond_50
    const/4 v0, 0x0

    goto :goto_53

    :cond_52
    :goto_52
    const/4 v0, 0x1

    :goto_53
    if-nez v0, :cond_3a

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "codemaotools://"

    const-string v3, ""

    .line 578
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 579
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    goto :goto_3a

    .line 583
    :cond_69
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 584
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web删除文件结果："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 585
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final fileExists(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/FileExistsOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/FileExistsOption;

    .line 539
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/FileExistsOption;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v1, v0

    :goto_28
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 540
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-ne v1, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    if-eqz p1, :cond_39

    const/16 p1, 0x7d0

    goto :goto_3b

    :cond_39
    const/16 p1, 0x1be7

    .line 545
    :goto_3b
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 546
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBundleDir(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->getBundleDir()Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resultStr"

    .line 621
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStorageDir(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 527
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 529
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    .line 530
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    .line 531
    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "codemaotools://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;-><init>(Ljava/lang/String;)V

    .line 530
    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 529
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(\n           …)\n            )\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final read(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ReadOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReadOption;

    .line 446
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ReadOption;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    if-eqz v0, :cond_2d

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "codemaotools://"

    const-string v2, ""

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    move-object v0, p1

    :goto_2e
    if-eqz v0, :cond_36

    .line 447
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v1, p1

    :goto_37
    const/16 v0, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    .line 450
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-eqz v2, :cond_71

    .line 452
    :try_start_47
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    :goto_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 456
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 458
    :cond_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_67} :catch_68

    goto :goto_73

    :catch_68
    move-exception v0

    const/16 v1, 0x1be6

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x1be6

    goto :goto_73

    :cond_71
    const/16 v0, 0x1be7

    .line 467
    :goto_73
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/ReadFileData;

    invoke-direct {v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/ReadFileData;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 468
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final readFilesOfDirectory(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryOption;

    .line 553
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryOption;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_27

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_27
    move-object v1, v0

    :goto_28
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    const/16 v3, 0x7d0

    if-eqz p1, :cond_56

    .line 558
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 11335
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v1, p1

    :goto_45
    if-ge v2, v1, :cond_53

    aget-object v4, p1, v2

    .line 558
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11671
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_53
    const/16 p1, 0x7d0

    goto :goto_58

    :cond_56
    const/16 p1, 0x1be7

    .line 563
    :goto_58
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    .line 564
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 565
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v5, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryResult;

    invoke-direct {v5, v0}, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryResult;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v3, v5}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 564
    invoke-direct {v2, p1, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 563
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 568
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final readFromCurrentToolPath(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->jsBridgeJson2Data(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;

    .line 745
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->getToolWRDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;

    .line 10
    invoke-interface {p1}, Lcom/codemao/toolssdk/evolving/web/callnative/request/JSIRequestData;->available()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_3a

    .line 13
    :cond_30
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSORequestDataExceptionJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_79

    .line 747
    sget-object v2, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p1}, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->readText(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    .line 748
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {p0, v2, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->getJOb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 749
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {p1, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_76

    :cond_6f
    const/16 p1, 0x7b83

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v2, p1, v0}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSIResponseExceptionJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 749
    :goto_76
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_79
    return-void
.end method

.method public final selectImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_29

    .line 428
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2c

    .line 439
    :cond_29
    invoke-static {p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public final setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 777
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->cameraCloseCallback:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 773
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->cameraPrepareListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setCaptureImageListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 781
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->captureImageListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final write(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 14
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;

    .line 475
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    const/4 v4, 0x2

    const-string v5, "codemaotools://"

    invoke-static {v0, v5, v2, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2e

    const/4 v0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    :goto_2f
    const/16 v4, 0x1be4

    if-eqz v0, :cond_b2

    .line 476
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_45

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "codemaotools://"

    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_45
    move-object v0, v3

    :goto_46
    if-eqz v0, :cond_50

    .line 477
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :cond_50
    :goto_50
    if-nez v1, :cond_aa

    .line 479
    :try_start_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/writing_cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 480
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->mkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 483
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 484
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 486
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 488
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->mkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v1

    .line 489
    invoke-static/range {v4 .. v9}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 490
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_99} :catch_9c

    const/16 v4, 0x7d0

    goto :goto_b9

    :catch_9c
    move-exception p1

    const/16 v4, 0x1be5

    .line 493
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 494
    sget-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v1, "write bcm error"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b9

    .line 498
    :cond_aa
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v0, "write bcm error, file url is null or empty"

    invoke-virtual {p1, v0, v3}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b9

    .line 504
    :cond_b2
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v0, "write bcm error, file url is not start with \'codemaotools://\'"

    invoke-virtual {p1, v0, v3}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 508
    :goto_b9
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v0, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final writeToCurrentToolPath(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->jsBridgeJson2Data(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;

    .line 734
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->getToolWRDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;

    .line 10
    invoke-interface {p1}, Lcom/codemao/toolssdk/evolving/web/callnative/request/JSIRequestData;->available()Z

    move-result v2

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_3a

    .line 13
    :cond_30
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSORequestDataExceptionJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_3a
    if-eqz v2, :cond_6a

    .line 736
    sget-object v2, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3, p1}, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->writeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 737
    sget-object v1, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    const/4 v2, 0x0

    if-eqz p1, :cond_61

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {p1, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :cond_61
    const/16 p1, 0x7b83

    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSIResponseExceptionJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 737
    :goto_67
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_6a
    return-void
.end method
