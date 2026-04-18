.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApiAi;
.source "CppRecordJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$Companion;
    }
.end annotation


# instance fields
.field private final cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

.field private enableVolumeDetect:Z

.field private endRecordRunnable:Ljava/lang/Runnable;

.field private final gson:Lcom/google/gson/Gson;

.field private isInRecordingProgress:Z

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$AEcPfw-4_pEn6JycyrpWC2bHP5Y(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermissionWithoutRejectDialog$lambda$10(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AGRDWVZjhMyaJPJ_BLndiB7-l0A(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AkYtZFiWFcD71u1K9iR5dBL5Lr4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermission$lambda$7(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PB3_ugr-gazxGzYJBUfjongRDAk(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecord$startRecord$4$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zr9s65v9WVNtgM_6WRyad59e4sc(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecord$lambda$5(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApiAi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 44
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    .line 45
    new-instance p1, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-direct {p1}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getToolsWebView$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    return-object p0
.end method

.method public static final synthetic access$sendSoundValue(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;D)V
    .registers 4

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->sendSoundValue(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;D)V

    return-void
.end method

.method public static final synthetic access$setInRecordingProgress$p(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Z)V
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->isInRecordingProgress:Z

    return-void
.end method

.method public static final synthetic access$startRecord$startRecord$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 37
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 37
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private final executeDisableVoiceDetection()V
    .registers 3

    .line 313
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行停止音量侦测"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->enableVolumeDetect:Z

    return-void
.end method

.method private final executeStopRecord()V
    .registers 3

    .line 207
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行停止录音"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 209
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 210
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final executeVoiceDetection()V
    .registers 8

    .line 343
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    .line 344
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;

    invoke-direct {v4, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$executeVoiceDetection$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->startRecording$default(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;Landroid/content/Context;FLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            ")V"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 226
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bbe

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 228
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$lambda$7(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$getPermission$1$1;

    invoke-direct {v5, p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$getPermission$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            ")V"
        }
    .end annotation

    .line 219
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 220
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            ")V"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 257
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bbe

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 259
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$lambda$10(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 265
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    .line 266
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v2

    .line 264
    new-instance v3, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$getPermissionWithoutRejectDialog$1$1;

    invoke-direct {v3, p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$getPermissionWithoutRejectDialog$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission(Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            ")V"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 251
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private final sendSoundValue(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;D)V
    .registers 6

    .line 362
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 363
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    invoke-direct {v1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;-><init>(D)V

    const-string p2, "receiveSound"

    .line 362
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 367
    sget-object p3, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    .line 368
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    sget-object p2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$sendSoundValue$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$sendSoundValue$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$sendSoundValue$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$sendSoundValue$2;

    invoke-virtual {p3, p1, v1, p2, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final startRecord$lambda$5(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$1$1;

    invoke-direct {v5, p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final startRecord$startRecord$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    .line 144
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_27

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_27

    return-void

    :cond_27
    :goto_27
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getDuration()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_35

    :cond_32
    const-wide/32 v0, 0xea60

    .line 146
    :goto_35
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    const-string v2, "流程-录音-RecordJsApi"

    const-string v3, "录音识别之前,先停止录音监测的录音,添加录音的音量回调"

    .line 147
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$startRecord$recordListener$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecord$startRecord$recordListener$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    .line 153
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v4}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "option"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1, v2}, Lcom/codemao/toolssdk/utils/RecordHelper;->startRecordVoice(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/RecordOption;Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)Z

    .line 155
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6b

    .line 156
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    :cond_6b
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    .line 176
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_83

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_83
    return-void
.end method

.method private static final startRecord$startRecord$4$lambda$2(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "执行停止录音的runnable"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RecordHelper;->stopRecordVoice()V

    .line 162
    iget-boolean v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->enableVolumeDetect:Z

    if-eqz v1, :cond_1d

    .line 163
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->executeVoiceDetection()V

    .line 165
    :cond_1d
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    .line 166
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    .line 167
    new-instance v12, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://codemaotools"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 169
    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordFileDuration()I

    move-result v0

    int-to-long v7, v0

    const/4 v9, 0x0

    const/16 v10, 0x16

    const/4 v11, 0x0

    move-object v3, v12

    .line 167
    invoke-direct/range {v3 .. v11}, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 166
    invoke-direct {v1, v2, v12}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 173
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "cancelBody,child"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 64
    iput-boolean v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->isInRecordingProgress:Z

    .line 65
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->getToolType()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$1$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$1$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Landroid/content/Context;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;",
            "Ljava/lang/Integer;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "startRecord,child"

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 77
    :goto_11
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3c

    .line 78
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 79
    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;

    invoke-direct {v2, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$startRecordAutoCheckPermission$startRecord$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 78
    invoke-interface {v1, v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->setActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 112
    :cond_27
    sget-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    check-cast v0, Landroid/app/Activity;

    const/4 p2, 0x2

    if-nez p1, :cond_2f

    goto :goto_37

    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_37

    const/4 p1, 0x1

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p1, 0x0

    :goto_38
    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toRecordPage(Landroid/app/Activity;Z)V

    goto :goto_3f

    .line 114
    :cond_3c
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public final canRecord(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web询问原生能否录音"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->getCanRecordCall()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_4c

    const/16 v0, 0x7d0

    .line 324
    sget-object v1, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;->Companion:Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;->getEnableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    move-result-object v1

    .line 325
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "通知web能否录音:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    goto :goto_62

    .line 329
    :cond_4c
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->getCanRecordCall()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_62

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$canRecord$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$canRecord$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_62
    return-void
.end method

.method public final destroy()V
    .registers 3

    .line 381
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    .line 382
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/RecordHelper;->clearCache(Landroid/content/Context;)V

    return-void
.end method

.method public final disableVoiceDetection(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生停止音量侦测"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->executeDisableVoiceDetection()V

    .line 308
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 309
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method public final enableVoiceDetection(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生开始音量侦测"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 284
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_55

    .line 289
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->isMicBusy(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 290
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1bbc

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 291
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void

    :cond_3e
    const/4 p1, 0x1

    .line 294
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->enableVolumeDetect:Z

    .line 295
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->executeVoiceDetection()V

    .line 296
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    goto :goto_65

    .line 299
    :cond_55
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1bbe

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_65
    return-void
.end method

.method public final getPermission(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "流程-录音-RecordJsApi"

    const-string v0, "getPermission"

    .line 217
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2e

    .line 232
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_31

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 242
    :cond_2e
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final getPermissionWithoutRejectDialog(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 262
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_27

    .line 263
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2a

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 277
    :cond_27
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final isMicBusy(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 352
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 353
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_23

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 355
    :goto_24
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_35

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, 0x1

    :goto_36
    if-nez v0, :cond_3a

    if-eqz p1, :cond_3b

    :cond_3a
    const/4 v1, 0x1

    :cond_3b
    return v1
.end method

.method public final startRecord(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "startRecord,js调用录音"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    .line 181
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_31

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 195
    :cond_2e
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public final startRecordAutoCheckPermission(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 55
    instance-of v0, p1, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    check-cast p1, Lorg/json/JSONObject;

    goto :goto_13

    :cond_12
    move-object p1, v1

    :goto_13
    const-string v0, "mode"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_20

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_20

    const/4 v2, 0x1

    :cond_20
    if-eqz v2, :cond_2a

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecordAutoCheckPermission:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "流程-录音-RecordJsApi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-boolean p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->isInRecordingProgress:Z

    if-eqz p1, :cond_45

    return-void

    .line 59
    :cond_45
    iput-boolean v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->isInRecordingProgress:Z

    .line 68
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    if-eqz p1, :cond_5a

    .line 69
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "顶部已经是音频页,不能再打开了"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 70
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void

    .line 118
    :cond_5a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_79

    .line 119
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_7c

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_7c

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_7c

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7c

    .line 134
    :cond_79
    invoke-static {p0, v1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public final stopRecord(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "流程-录音-RecordJsApi"

    const-string v0, "停止录音"

    .line 201
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->executeStopRecord()V

    .line 203
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method
