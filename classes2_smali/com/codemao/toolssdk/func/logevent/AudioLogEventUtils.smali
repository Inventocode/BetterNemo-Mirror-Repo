.class public final Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;
.super Ljava/lang/Object;
.source "AudioLogEventUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic edit$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 9
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->edit(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic permission$default(Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;ZLjava/lang/String;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 5
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/func/logevent/AudioLogEventUtils;->permission(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final edit(ZLjava/lang/String;)V
    .registers 10

    .line 10
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_sdk_audio_edit_create"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final permission(ZLjava/lang/String;)V
    .registers 10

    .line 6
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    const-string v1, "ct_sdk_recorder_permission"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->sendEvent$default(Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;Ljava/lang/String;ZLjava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method
