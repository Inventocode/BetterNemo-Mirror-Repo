.class public final Lcom/codemao/toolssdk/jsapi/RecordJsApi;
.super Ljava/lang/Object;
.source "RecordJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/RecordJsApi$Companion;
    }
.end annotation


# instance fields
.field private final cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

.field private enableVolumeDetect:Z

.field private endRecordRunnable:Ljava/lang/Runnable;

.field private final gson:Lcom/google/gson/Gson;

.field private isInRecordingProgress:Z

.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$-j9n3ZXZ1LPIK5vkmXenq4_BIWs(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord$lambda$5(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J46yzTtRW4ybEOODy4QDMT09dLk(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord$startRecord$4$lambda$2(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_HBRigxsF3VSpZJp_CLTuuHbTDY(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermissionWithoutRejectDialog$lambda$10(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPHtSqklzdeynpKKFNoawjPG-Vk(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermission$lambda$7(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x0xpNe9vjoBpLkJGTq9QM6lcBl0(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$lambda$0(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 49
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    .line 50
    new-instance p1, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-direct {p1}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    return-void
.end method

.method public static final synthetic access$sendSoundValue(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/view/ToolsWebView;D)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->sendSoundValue(Lcom/codemao/toolssdk/view/ToolsWebView;D)V

    return-void
.end method

.method public static final synthetic access$setInRecordingProgress$p(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isInRecordingProgress:Z

    return-void
.end method

.method public static final synthetic access$startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 42
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 2

    .line 42
    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method public static final synthetic access$startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 3

    .line 42
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void
.end method

.method private static final checkPermission$fail$12(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 327
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bbe

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 329
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 330
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "检查权限失败"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    return-void
.end method

.method private static final checkPermission$success$11(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 320
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 321
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "检查权限成功"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    return-void
.end method

.method private final executeDisableVoiceDetection()V
    .registers 3

    .line 310
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行停止音量侦测"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->enableVolumeDetect:Z

    return-void
.end method

.method private final executeStopRecord()V
    .registers 3

    .line 209
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行停止录音"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 211
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    .line 212
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_23
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final executeVoiceDetection()V
    .registers 9

    .line 404
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    .line 405
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行音量侦测且通知web"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "toolsWebView.context"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;

    invoke-direct {v5, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$executeVoiceDetection$1;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->startRecording$default(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;Landroid/content/Context;FLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$fail(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 228
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bbe

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 230
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$lambda$7(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v4, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;

    invoke-direct {v4, p1, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermission$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 222
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$fail$9(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 259
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    sget-object v2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    const/16 v3, 0x1bbe

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-direct {v0, v3, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 261
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$lambda$10(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    .line 267
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 266
    new-instance v2, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermissionWithoutRejectDialog$1$1;

    invoke-direct {v2, p1, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$getPermissionWithoutRejectDialog$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission(Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            ")V"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 253
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private final goSettings(Landroid/content/Context;)V
    .registers 6

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 390
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 391
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_22
    return-void
.end method

.method private final isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 396
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private final sendSoundValue(Lcom/codemao/toolssdk/view/ToolsWebView;D)V
    .registers 6

    .line 424
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 425
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    invoke-direct {v1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;-><init>(D)V

    const-string p2, "receiveSound"

    .line 424
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 429
    sget-object p3, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    .line 430
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 429
    sget-object p2, Lcom/codemao/toolssdk/jsapi/RecordJsApi$sendSoundValue$1;->INSTANCE:Lcom/codemao/toolssdk/jsapi/RecordJsApi$sendSoundValue$1;

    sget-object v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$sendSoundValue$2;->INSTANCE:Lcom/codemao/toolssdk/jsapi/RecordJsApi$sendSoundValue$2;

    invoke-virtual {p3, p1, v1, p2, v0}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/view/ToolsWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method private static final startRecord$lambda$5(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v4, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;

    invoke-direct {v4, p1, p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$1$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    const-string v1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;

    .line 145
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

    .line 147
    :goto_35
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    const-string v2, "流程-录音-RecordJsApi"

    const-string v3, "录音识别之前,先停止录音监测的录音,添加录音的音量回调"

    .line 148
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$startRecord$recordListener$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecord$startRecord$recordListener$1;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    .line 154
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    iget-object v4, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "toolsWebView.context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "option"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, p1, v2}, Lcom/codemao/toolssdk/utils/RecordHelper;->startRecordVoice(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/RecordOption;Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)Z

    .line 156
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_70

    .line 157
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    :cond_70
    new-instance p1, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->endRecordRunnable:Ljava/lang/Runnable;

    .line 178
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p0

    if-eqz p0, :cond_88

    invoke-virtual {p0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_88

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_88
    return-void
.end method

.method private static final startRecord$startRecord$4$lambda$2(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 16

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行停止录音的runnable"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/RecordHelper;->stopRecordVoice()V

    .line 163
    iget-boolean v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->enableVolumeDetect:Z

    if-eqz v2, :cond_1d

    .line 164
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->executeVoiceDetection()V

    .line 166
    :cond_1d
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    .line 167
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v3, 0x7d0

    .line 168
    new-instance v13, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://codemaotools"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 170
    invoke-virtual {v1}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordFileDuration()I

    move-result v1

    int-to-long v8, v1

    const/4 v10, 0x0

    const/16 v11, 0x16

    const/4 v12, 0x0

    move-object v4, v13

    .line 168
    invoke-direct/range {v4 .. v12}, Lcom/codemao/toolssdk/model/dsbridge/RecordFileData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 167
    invoke-direct {v2, v3, v13}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 166
    invoke-virtual {p0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "返回给web的录音结果:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "cancelBody,child"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 65
    iput-boolean v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isInRecordingProgress:Z

    .line 66
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$lambda$0(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    new-instance v4, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecordAutoCheckPermission$1$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecordAutoCheckPermission$1$1;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/codemao/toolssdk/manager/PermissionManager;->requestRecordAudioPermission$default(Lcom/codemao/toolssdk/manager/PermissionManager;Lcom/codemao/toolssdk/view/ToolsWebView;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/RecordJsApi;",
            "Ljava/lang/Integer;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "流程-录音-RecordJsApi"

    const-string v1, "startRecord,child"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_3b

    .line 79
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-nez v1, :cond_1e

    goto :goto_26

    .line 80
    :cond_1e
    new-instance v2, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecordAutoCheckPermission$startRecord$1;

    invoke-direct {v2, p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$startRecordAutoCheckPermission$startRecord$1;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    .line 79
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setOnActivityResultCallback(Lcom/codemao/toolssdk/manager/ActivityResultCallback;)V

    .line 113
    :goto_26
    sget-object p0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    check-cast v0, Landroid/app/Activity;

    const/4 p2, 0x2

    if-nez p1, :cond_2e

    goto :goto_36

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    :goto_36
    const/4 p1, 0x0

    :goto_37
    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/manager/PermissionManager;->toRecordPage(Landroid/app/Activity;Z)V

    goto :goto_3e

    .line 115
    :cond_3b
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :goto_3e
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

    .line 367
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web询问原生能否录音"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCanRecordCall()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-nez v0, :cond_4c

    const/16 v0, 0x7d0

    .line 371
    sget-object v1, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;->Companion:Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord$Companion;->getEnableData()Lcom/codemao/toolssdk/model/dsbridge/compat/record/CallConflictCanRecord;

    move-result-object v1

    .line 372
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    invoke-direct {v2, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 374
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "通知web能否录音:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnRun(Ljava/lang/String;)V

    goto :goto_62

    .line 376
    :cond_4c
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCanRecordCall()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    if-eqz p1, :cond_62

    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$canRecord$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$canRecord$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    :goto_62
    return-void
.end method

.method public final checkPermission(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
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

    .line 317
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "检查录音权限"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 333
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_31

    .line 334
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_34

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 335
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 336
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->checkPermission$success$11(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    goto :goto_34

    .line 338
    :cond_2d
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->checkPermission$fail$12(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    goto :goto_34

    .line 342
    :cond_31
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->checkPermission$success$11(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public final destroy()V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->cmToolsMicRecordUtil:Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->stopRecording()V

    .line 444
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "toolsWebView.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 303
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生停止音量侦测"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->executeDisableVoiceDetection()V

    .line 305
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v0, v1, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 306
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 284
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生开始音量侦测"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/permissionx/PermissionX;->isGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p1, :cond_5a

    .line 286
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "toolsWebView.context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isMicBusy(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 287
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1bbc

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 288
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void

    :cond_43
    const/4 p1, 0x1

    .line 291
    iput-boolean p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->enableVolumeDetect:Z

    .line 292
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->executeVoiceDetection()V

    .line 293
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x7d0

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 294
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    goto :goto_6a

    .line 296
    :cond_5a
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v2, 0x1bbe

    invoke-direct {p1, v2, v1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 297
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_6a
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

    .line 219
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_2e

    .line 234
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_31

    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 244
    :cond_2e
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermission$success(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

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

    .line 264
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_27

    .line 265
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2a

    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 278
    :cond_27
    invoke-static {p2, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->getPermissionWithoutRejectDialog$success$8(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/RecordJsApi;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object v0
.end method

.method public final goAppPermissionSettings(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

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

    .line 349
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生跳转权限页"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 351
    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_7a

    .line 352
    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "当前activity focus1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 354
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    const-wide/16 v1, 0x12c

    .line 355
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "当前activity focus2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 358
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->goSettings(Landroid/content/Context;)V

    .line 360
    :cond_65
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1bbe

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :cond_7a
    return-void
.end method

.method public final isMicBusy(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 414
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/media/AudioManager;

    .line 415
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

    .line 417
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

    .line 141
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "web通知原生开始录音"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2e

    .line 183
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_31

    new-instance v1, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_31

    .line 197
    :cond_2e
    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecord$startRecord$4(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

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

    .line 56
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

    .line 57
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

    .line 58
    :cond_2a
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web通知原生开始录音且自动检查权限:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 59
    iget-boolean p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isInRecordingProgress:Z

    if-eqz p1, :cond_45

    return-void

    .line 60
    :cond_45
    iput-boolean v3, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->isInRecordingProgress:Z

    .line 69
    invoke-static {}, Lcom/codemao/utils/util/CuActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/codemao/toolssdk/activity/audio_edit/AudioEditableActivity;

    if-eqz p1, :cond_58

    const-string p1, "顶部已经是音频页,不能再打开了"

    .line 70
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 71
    invoke-static {p0, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$cancelBody(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    return-void

    .line 119
    :cond_58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_77

    .line 120
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_7a

    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, v1}, Lcom/codemao/toolssdk/jsapi/RecordJsApi$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Ljava/lang/Integer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7a

    .line 135
    :cond_77
    invoke-static {p0, v1, p2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->startRecordAutoCheckPermission$startRecord(Lcom/codemao/toolssdk/jsapi/RecordJsApi;Ljava/lang/Integer;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V

    :cond_7a
    :goto_7a
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

    .line 203
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "web通知原生停止录音"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dRecordLocal(Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->executeStopRecord()V

    .line 205
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
