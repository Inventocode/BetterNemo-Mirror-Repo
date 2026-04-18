.class public final Lcom/codemao/toolssdk/jsapi/FileJsApi;
.super Ljava/lang/Object;
.source "FileJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileJsApi.kt\ncom/codemao/toolssdk/jsapi/FileJsApi\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ReturnWebUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils\n+ 6 JSObjectResultUtils.kt\ncom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils\n*L\n1#1,710:1\n1#2:711\n11335#3:712\n11670#3,3:713\n1851#4,2:716\n10#5,5:718\n10#5,5:738\n11#6,15:723\n12#6,14:743\n*S KotlinDebug\n*F\n+ 1 FileJsApi.kt\ncom/codemao/toolssdk/jsapi/FileJsApi\n*L\n475#1:712\n475#1:713,3\n493#1:716,2\n654#1:718,5\n665#1:738,5\n656#1:723,15\n668#1:743,14\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;


# instance fields
.field private final fileCacheDir:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;

.field private isInAddImagesProgress:Z

.field private isRequesting:Z

.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$RhI23XC-YziJL8L_KH6Wg97IaXo(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$lambda$15(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tchf_z3SZktLC-a_OjO-kUKBo0U(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$lambda$15$lambda$14$lambda$13(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YTxYrYiVuHGae226ipEoX7KaCnw(Lcom/codemao/toolssdk/jsapi/FileJsApi;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$lambda$15$lambda$14$lambda$12(Lcom/codemao/toolssdk/jsapi/FileJsApi;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h7qtoUEFWlmNaJrEQ99MFD3AQ34(Landroid/content/Context;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->copyMediaPipeFiles$lambda$11(Landroid/content/Context;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQfCAnwWUQDe2vRksFBM0JhTEHU(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$lambda$2(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rZaeRbglS80ndt12IfkDOpFvsiI(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->selectImage$lambda$4(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s0B0aAT5Pt-THuyuJDu2grlTcqA(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$lambda$1(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 4

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 97
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    .line 98
    sget-object p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toolsWebView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->fileCacheDir:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$addAiImage$cancelBody(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 81
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addAiImage$cancelBody(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addCameraImage$execute(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addCameraImage$execute(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addCameraImage$fail(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addCameraImage$fail(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    return-void
.end method

.method public static final synthetic access$addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 81
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 81
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$setInAddImagesProgress$p(Lcom/codemao/toolssdk/jsapi/FileJsApi;Z)V
    .registers 2

    .line 81
    iput-boolean p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    return-void
.end method

.method private static final addAiImage$cancelBody(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 108
    iput-boolean v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    .line 109
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final addCameraImage$execute(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 610
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;

    if-eqz v0, :cond_9

    return-void

    .line 613
    :cond_9
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/toolssdk/page/camera/CTCameraCaptureActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 614
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_31

    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$execute$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->launch(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    :cond_31
    return-void
.end method

.method private static final addCameraImage$fail(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 604
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;->Companion:Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult$Companion;->getClose()Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraResult;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 605
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 606
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

.method private static final addImages$cancelBody$0(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 154
    iput-boolean v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    .line 155
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final addImages$lambda$1(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$1$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final addImages$lambda$2(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private static final addImages$selectImage(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    .line 161
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    const/16 v0, 0x9

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    .line 163
    :goto_20
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isActor()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 164
    sget-object v2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedCutoutImage:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    goto :goto_2b

    .line 166
    :cond_29
    sget-object v2, Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;->NeedSelectHighlightRect:Lcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;

    .line 168
    :goto_2b
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 169
    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->getHeight()F

    move-result v4

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/StageSize;->getWidth()F

    move-result v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    .line 170
    :goto_3f
    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v3

    if-nez v3, :cond_48

    goto :goto_50

    .line 171
    :cond_48
    new-instance v4, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addImages$selectImage$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 170
    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 232
    :goto_50
    sget-object p1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 233
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 232
    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toAlbum(Landroid/content/Context;ILcom/codemao/toolssdk/image_selector/config/ISListConfig$PreviewType;Z)V

    return-void
.end method

.method private static final copyMediaPipeFiles$lambda$11(Landroid/content/Context;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9

    const-string v0, "$application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    :try_start_f
    sget-object v0, Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;->INSTANCE:Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;

    const-string v1, "mediapipe"

    .line 514
    sget-object v2, Lcom/codemao/toolssdk/jsapi/FileJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;

    invoke-virtual {v2, p0}, Lcom/codemao/toolssdk/jsapi/FileJsApi$Companion;->getCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 511
    invoke-virtual {v0, p0, v1, v2}, Lcom/codemao/toolssdk/manager/CopyAssetsFileManager;->copyAssetsDir2Phone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance p0, Ljava/io/File;

    iget-object v0, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 518
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 520
    :cond_2c
    iget-object v0, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    .line 521
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    .line 523
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

    .line 521
    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 520
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 526
    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_56} :catch_57

    goto :goto_6c

    :catch_57
    move-exception p0

    .line 528
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    iget-object p0, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x1bd9

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 530
    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_6c
    return-void
.end method

.method private static final downloadImageBase64$down(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;

    .line 551
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生下载图片:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_32

    :cond_31
    move-object v2, v3

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 552
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p0, :cond_46

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    move-object v6, p0

    goto :goto_47

    :cond_46
    move-object v6, v3

    .line 553
    :goto_47
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_60

    if-eqz v6, :cond_60

    const-string p0, "开始保存图片"

    .line 554
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 555
    sget-object v4, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->INSTANCE:Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/DownloadImageBase64Data;->getBase64()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;->saveImage$default(Lcom/codemao/toolssdk/utils/Base64ToGallerySaver;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Z

    .line 557
    :cond_60
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x2

    invoke-direct {p1, v1, v3, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const-string p0, "通知web保存成功"

    .line 558
    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return-void
.end method

.method private static final downloadImageBase64$lambda$15(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 573
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    .line 574
    iput-boolean v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isRequesting:Z

    .line 575
    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v2}, Lcom/codemao/toolssdk/permissionx/PermissionX;->init(Landroidx/fragment/app/FragmentActivity;)Lcom/codemao/toolssdk/permissionx/PermissionMediator;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v2, v1}, Lcom/codemao/toolssdk/permissionx/PermissionMediator;->permissions([Ljava/lang/String;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object v1

    .line 576
    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->onForwardToSettings(Lcom/codemao/toolssdk/permissionx/callback/ForwardToSettingsCallback;)Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;

    move-result-object p1

    .line 580
    new-instance v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/permissionx/request/PermissionBuilder;->request(Lcom/codemao/toolssdk/permissionx/callback/RequestCallback;)V

    :cond_44
    return-void
.end method

.method private static final downloadImageBase64$lambda$15$lambda$14$lambda$12(Lcom/codemao/toolssdk/jsapi/FileJsApi;Landroid/content/Context;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;Ljava/util/List;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deniedList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 577
    iput-boolean p4, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isRequesting:Z

    .line 578
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V

    .line 579
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "onForwardToSettings"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    return-void
.end method

.method private static final downloadImageBase64$lambda$15$lambda$14$lambda$13(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;ZLjava/util/List;Ljava/util/List;)V
    .registers 7

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "<anonymous parameter 2>"

    invoke-static {p5, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 581
    iput-boolean p4, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isRequesting:Z

    if-eqz p3, :cond_22

    .line 583
    invoke-static {p0, p2, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$down(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_37

    .line 585
    :cond_22
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 p3, 0x1bd0

    const/4 p4, 0x2

    const/4 p5, 0x0

    invoke-direct {p2, p3, p5, p4, p5}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_37
    return-void
.end method

.method private final getJOb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .registers 4

    .line 673
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 674
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private final hasStoragePermission(Landroid/content/Context;)Z
    .registers 6

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-lt v0, v3, :cond_11

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 680
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_11
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 685
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private final mkdirs(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 430
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 432
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 434
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

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_27
    return-object v0
.end method

.method private static final selectImage$lambda$4(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;

    invoke-direct {v2, p1, p0, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$1$1;-><init>(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestExternalStoragePermission(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/jsapi/FileJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_15

    .line 267
    new-instance p0, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    const-string v0, "album"

    const-string v1, ".png"

    invoke-direct {p0, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 270
    :cond_15
    iget-object v0, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;

    .line 271
    :goto_23
    iget-object v0, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_34

    .line 272
    :cond_2c
    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$selectImage$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/codemao/toolssdk/jsapi/FileJsApi$selectImage$selectImage$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/model/dsbridge/SelectImageOption;)V

    .line 271
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 342
    :goto_34
    sget-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toAlbum(Landroid/content/Context;)V

    return-void
.end method

.method private final showDeniedSettingsDialog(Landroid/app/Activity;Ljava/lang/String;Lcom/codemao/toolssdk/permissionx/request/ForwardScope;)V
    .registers 13

    .line 698
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 700
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_storage_request:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 703
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_tosetting:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string p2, "context.getString(R.stri…sdk_permission_tosetting)"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    sget p2, Lcom/codemao/toolssdk/R$string;->toolsdk_permission_cancel:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v6, ""

    move-object v3, p3

    .line 699
    invoke-virtual/range {v3 .. v8}, Lcom/codemao/toolssdk/permissionx/request/ForwardScope;->showForwardToSettingsDialog(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addAiImage(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 103
    iget-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    .line 113
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_33

    .line 116
    :cond_2b
    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addAiImage$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 140
    :goto_33
    sget-object p2, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->Companion:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;

    .line 141
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_42

    check-cast v0, Landroid/app/Activity;

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    .line 142
    :goto_43
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->isScene()Z

    move-result v1

    .line 143
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IAddImagesOptions;->getStageSize()Lcom/codemao/toolssdk/model/dsbridge/StageSize;

    move-result-object p1

    .line 140
    invoke-virtual {p2, v0, v1, p1}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$Companion;->startActivity(Landroid/app/Activity;ZLcom/codemao/toolssdk/model/dsbridge/StageSize;)V

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

    .line 599
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;

    .line 600
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "拍照添加素材:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 632
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCameraPrepareListener()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_51

    .line 634
    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$addCameraImage$1;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    .line 642
    :cond_51
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addCameraImage$execute(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/model/dsbridge/camera/KnCameraOptions;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_5a

    :cond_55
    const/16 p1, 0x1b58

    .line 645
    invoke-static {p0, p2, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->addCameraImage$fail(Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;I)V

    :goto_5a
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

    .line 149
    iget-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isInAddImagesProgress:Z

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2f

    .line 241
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda5;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 254
    :cond_2f
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postOpenAlbumSucceedEvent(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    .line 255
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    const-wide/16 p1, 0x32

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    :goto_42
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

    .line 507
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_17

    return-void

    .line 508
    :cond_17
    new-instance v0, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

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

    .line 491
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/DeleteFilesAtPathOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/DeleteFilesAtPathOption;

    .line 492
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生删除文件："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 493
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

    .line 494
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

    .line 495
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-static {v1}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    goto :goto_3a

    .line 500
    :cond_69
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 501
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web删除文件结果："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 502
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final downloadImageBase64(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 545
    iget-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->isRequesting:Z

    if-eqz v0, :cond_f

    return-void

    .line 560
    :cond_f
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toolsWebView.context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 561
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "有权限直接下载"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 562
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$down(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    goto :goto_5d

    .line 564
    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_34

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    goto :goto_36

    :cond_34
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    :goto_36
    const/16 v2, 0x17

    if-lt v0, v2, :cond_5a

    .line 570
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "没有权限,申请权限"

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKidsDownloadBase64(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v1, p2, p1}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda6;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/String;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5d

    .line 592
    :cond_5a
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->downloadImageBase64$down(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_5d
    :goto_5d
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

    .line 455
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/FileExistsOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/FileExistsOption;

    .line 456
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

    .line 457
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

    .line 462
    :goto_3b
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, p1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final getBundleDir(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->getBundleDir()Lcom/codemao/toolssdk/model/dsbridge/StorageDirData;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resultStr"

    .line 538
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getStorageDir(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    .line 444
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 446
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    .line 447
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    .line 448
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

    .line 447
    invoke-direct {v1, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 446
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gson.toJson(\n           …)\n            )\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object v0
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

    .line 360
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ReadOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReadOption;

    .line 361
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

    .line 362
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

    .line 365
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    if-eqz v2, :cond_71

    .line 367
    :try_start_47
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    :goto_56
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 371
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    .line 373
    :cond_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 374
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_67} :catch_68

    goto :goto_73

    :catch_68
    move-exception v0

    const/16 v1, 0x1be6

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x1be6

    goto :goto_73

    :cond_71
    const/16 v0, 0x1be7

    .line 382
    :goto_73
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/ReadFileData;

    invoke-direct {v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/ReadFileData;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 383
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

    .line 469
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryOption;

    .line 470
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

    .line 473
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-ne v3, p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    const/16 v3, 0x7d0

    if-eqz p1, :cond_56

    .line 475
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

    .line 475
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

    .line 480
    :goto_58
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    .line 481
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 482
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    new-instance v5, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryResult;

    invoke-direct {v5, v0}, Lcom/codemao/toolssdk/model/dsbridge/ReadFilesOrDirectoryResult;-><init>(Ljava/util/List;)V

    invoke-direct {v4, v3, v5}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 481
    invoke-direct {v2, p1, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 480
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 485
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final readFromCurrentToolPath(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
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

    .line 662
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->jsBridgeJson2Data(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;

    .line 664
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toolsWebView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_2f
    move-object v3, v4

    :goto_30
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->getToolWRDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 665
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;

    .line 10
    invoke-interface {p1}, Lcom/codemao/toolssdk/evolving/web/callnative/request/JSIRequestData;->available()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_48

    .line 13
    :cond_3e
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSORequestDataExceptionJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_48
    if-eqz v2, :cond_86

    .line 666
    sget-object v2, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/ReadFromCurrentToolPathRequest;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p1}, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->readText(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    .line 667
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "content"

    invoke-direct {p0, v2, v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->getJOb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 668
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {p1, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_83

    :cond_7d
    const/16 p1, 0x7b83

    .line 15
    invoke-virtual {v2, p1, v4}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSIResponseExceptionJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 668
    :goto_83
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_86
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

    .line 345
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_27

    .line 346
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2a

    new-instance v1, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/jsapi/FileJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 354
    :cond_27
    invoke-static {p1, p0, p2}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->selectImage$selectImage$3(Ljava/lang/Object;Lcom/codemao/toolssdk/jsapi/FileJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_2a
    :goto_2a
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

    .line 388
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;

    .line 389
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "web通知原生写入文件："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_44

    const/4 v4, 0x2

    const-string v5, "codemaotools://"

    invoke-static {v0, v5, v2, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_44

    const/4 v0, 0x1

    goto :goto_45

    :cond_44
    const/4 v0, 0x0

    :goto_45
    const/16 v4, 0x1be4

    if-eqz v0, :cond_c8

    .line 392
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5b

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "codemaotools://"

    const-string v7, ""

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_5b
    move-object v0, v3

    :goto_5c
    if-eqz v0, :cond_66

    .line 393
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_65

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :cond_66
    :goto_66
    if-nez v1, :cond_c0

    .line 395
    :try_start_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->fileCacheDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/writing_cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->mkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 399
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 400
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/WriteFileOption;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 402
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 404
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;->mkdirs(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, v1

    .line 405
    invoke-static/range {v4 .. v9}, Lkotlin/io/FilesKt;->copyTo$default(Ljava/io/File;Ljava/io/File;ZIILjava/lang/Object;)Ljava/io/File;

    .line 406
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_af} :catch_b2

    const/16 v4, 0x7d0

    goto :goto_cf

    :catch_b2
    move-exception p1

    const/16 v4, 0x1be5

    .line 409
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 410
    sget-object v0, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v1, "write bcm error"

    invoke-virtual {v0, v1, p1}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_cf

    .line 414
    :cond_c0
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v0, "write bcm error, file url is null or empty"

    invoke-virtual {p1, v0, v3}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_cf

    .line 420
    :cond_c8
    sget-object p1, Lcom/codemao/toolssdk/manager/ReportManager;->INSTANCE:Lcom/codemao/toolssdk/manager/ReportManager;

    const-string v0, "write bcm error, file url is not start with \'codemaotools://\'"

    invoke-virtual {p1, v0, v3}, Lcom/codemao/toolssdk/manager/ReportManager;->sendErrorReport(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 424
    :goto_cf
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v0, v4, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 425
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "原生通知web写入文件结果："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 426
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final writeToCurrentToolPath(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
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

    .line 651
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->jsBridgeJson2Data(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;

    .line 653
    sget-object v1, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toolsWebView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/FileJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_2f
    move-object v3, v4

    :goto_30
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/evolving/android/file/CTFilePathUtils;->getToolWRDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/ReturnWebUtils;

    .line 10
    invoke-interface {p1}, Lcom/codemao/toolssdk/evolving/web/callnative/request/JSIRequestData;->available()Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v2, 0x1

    goto :goto_48

    .line 13
    :cond_3e
    sget-object v2, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSORequestDataExceptionJson()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_48
    if-eqz v2, :cond_77

    .line 655
    sget-object v2, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/jsobject/file/WriteToCurrentToolPathRequest;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3, p1}, Lcom/codemao/toolssdk/evolving/android/file/CTFileUtils;->writeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 656
    sget-object v1, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->INSTANCE:Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;

    if-eqz p1, :cond_6e

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    invoke-direct {p1, v1, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/evolving/android/util/JsonUtils;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_74

    :cond_6e
    const/16 p1, 0x7b83

    .line 15
    invoke-virtual {v1, p1, v4}, Lcom/codemao/toolssdk/evolving/web/callnative/response/JSObjectResultUtils;->getJSIResponseExceptionJson(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 656
    :goto_74
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_77
    return-void
.end method
