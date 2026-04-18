.class public Lcom/codemao/toolssdk/utils/ExtLogFeature;
.super Lcom/codemao/toolssdk/utils/ExtLogFeature2;
.source "ExtLogFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/ExtLogFeature$Companion;
    }
.end annotation


# instance fields
.field private final FEATURE_ACCOUNT:Ljava/lang/String;

.field private final FEATURE_AI_KIDS:Ljava/lang/String;

.field private final FEATURE_AI_KIDS_BASE64:Ljava/lang/String;

.field private final FEATURE_AI_KIDS_STEP:Ljava/lang/String;

.field private final FEATURE_BLE:Ljava/lang/String;

.field private final FEATURE_CAMERA:Ljava/lang/String;

.field private final FEATURE_CODE_LAB:Ljava/lang/String;

.field private final FEATURE_DIALOG_JS:Ljava/lang/String;

.field private final FEATURE_JS_AUDIO:Ljava/lang/String;

.field private final FEATURE_KN_ROKI:Ljava/lang/String;

.field private final FEATURE_LOCAL_RESOURCE:Ljava/lang/String;

.field private final FEATURE_NETWORK_AGENT:Ljava/lang/String;

.field private final FEATURE_OFFLINE_PACKAGE:Ljava/lang/String;

.field private final FEATURE_PERMISSION_MANAGER:Ljava/lang/String;

.field private final FEATURE_PLAYER:Ljava/lang/String;

.field private final FEATURE_PRE_DOWNLOAD:Ljava/lang/String;

.field private final FEATURE_PYTHON_PHOTO:Ljava/lang/String;

.field private final FEATURE_RECORD_LOCAL:Ljava/lang/String;

.field private final FEATURE_SOCKET_IO:Ljava/lang/String;

.field private final FEATURE_STREAM_AAC:Ljava/lang/String;

.field private final FEATURE_VARIABLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/utils/ExtLogFeature$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/ExtLogFeature2;-><init>()V

    const-string v0, "ctl_player"

    .line 11
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PLAYER:Ljava/lang/String;

    const-string v0, "ctl_codeLab"

    .line 12
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_CODE_LAB:Ljava/lang/String;

    const-string v0, "ctl_socket_io"

    .line 13
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_SOCKET_IO:Ljava/lang/String;

    const-string v0, "ctl_ai_kids"

    .line 17
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS:Ljava/lang/String;

    const-string v0, "ctl_ai_kids_step"

    .line 18
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS_STEP:Ljava/lang/String;

    const-string v0, "ctl_js_audio"

    .line 19
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_JS_AUDIO:Ljava/lang/String;

    const-string v0, "ctl_ai_kids_base64"

    .line 20
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS_BASE64:Ljava/lang/String;

    const-string v0, "ctl_python_photo"

    .line 21
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PYTHON_PHOTO:Ljava/lang/String;

    const-string v0, "ctl_local_resource"

    .line 22
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_LOCAL_RESOURCE:Ljava/lang/String;

    const-string v0, "ctl_stream_aac"

    .line 23
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_STREAM_AAC:Ljava/lang/String;

    const-string v0, "ctl_kn_roki"

    .line 24
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_KN_ROKI:Ljava/lang/String;

    const-string v0, "ctl_permission_manager"

    .line 25
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PERMISSION_MANAGER:Ljava/lang/String;

    const-string v0, "ctl_account"

    .line 26
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_ACCOUNT:Ljava/lang/String;

    const-string v0, "ctl_pre_download"

    .line 27
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PRE_DOWNLOAD:Ljava/lang/String;

    const-string v0, "ctl_bluetooth"

    .line 28
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_BLE:Ljava/lang/String;

    const-string v0, "ctl_js_dialog"

    .line 30
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_DIALOG_JS:Ljava/lang/String;

    const-string v0, "ctl_camera"

    .line 31
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_CAMERA:Ljava/lang/String;

    const-string v0, "ctl_record_local"

    .line 32
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_RECORD_LOCAL:Ljava/lang/String;

    const-string v0, "ctl_ntwk_agent"

    .line 33
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_NETWORK_AGENT:Ljava/lang/String;

    const-string v0, "ctl_variable"

    .line 34
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_VARIABLE:Ljava/lang/String;

    const-string v0, "ctl_offline"

    .line 36
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_OFFLINE_PACKAGE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dAIKids(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dAIKidsDownloadBase64(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS_BASE64:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dAIKidsStep(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_AI_KIDS_STEP:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dAccount(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_ACCOUNT:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dBle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_BLE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dCamera(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_CAMERA:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dCodeLab(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_CODE_LAB:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dJSDialog(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_DIALOG_JS:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dKNPreDownload(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PRE_DOWNLOAD:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dKNRokie(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_KN_ROKI:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dLocalResource(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/ExtLogOther;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 84
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_LOCAL_RESOURCE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void
.end method

.method public final dNetWorkAgent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_NETWORK_AGENT:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dOffline(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_OFFLINE_PACKAGE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dPermission(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PERMISSION_MANAGER:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dPlayer(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PLAYER:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dPythonPhoto(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_PYTHON_PHOTO:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dRecordLocal(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_RECORD_LOCAL:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dSocketIO(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_SOCKET_IO:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dStreamAAC(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_STREAM_AAC:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dVariable(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_VARIABLE:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final eSocketIO(Ljava/lang/String;)V
    .registers 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_SOCKET_IO:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final getFEATURE_JS_AUDIO()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/ExtLogFeature;->FEATURE_JS_AUDIO:Ljava/lang/String;

    return-object v0
.end method
