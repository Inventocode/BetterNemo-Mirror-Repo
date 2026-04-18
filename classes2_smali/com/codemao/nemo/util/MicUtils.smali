.class public Lcom/codemao/nemo/util/MicUtils;
.super Ljava/lang/Object;
.source "MicUtils.java"


# instance fields
.field private audio:Landroid/media/AudioRecord;

.field private bufferSize:I

.field private mHandler:Lcom/giu/xzz/utils/HandlerUtil;

.field protected needPermissions:[Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->needPermissions:[Ljava/lang/String;

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/util/MicUtils;)Ljava/lang/Thread;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/util/MicUtils;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$002(Lcom/codemao/nemo/util/MicUtils;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/nemo/util/MicUtils;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/codemao/nemo/util/MicUtils;)Landroid/media/AudioRecord;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/util/MicUtils;)D
    .registers 3

    .line 25
    invoke-direct {p0}, Lcom/codemao/nemo/util/MicUtils;->readAudioBuffer()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/util/MicUtils;)Lcom/giu/xzz/utils/HandlerUtil;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/codemao/nemo/util/MicUtils;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    return-object p0
.end method

.method private readAudioBuffer()D
    .registers 11

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    .line 151
    :try_start_2
    iget v2, p0, Lcom/codemao/nemo/util/MicUtils;->bufferSize:I

    new-array v3, v2, [S

    .line 153
    iget-object v4, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    if-eqz v4, :cond_38

    const/4 v5, 0x0

    .line 155
    invoke-virtual {v4, v3, v5, v2}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    const-wide/16 v6, 0x0

    :goto_11
    if-ge v5, v2, :cond_1a

    .line 158
    aget-short v4, v3, v5

    int-to-double v8, v4

    add-double/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1a
    if-eqz v2, :cond_31

    int-to-double v2, v2

    div-double/2addr v6, v2

    .line 162
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_29

    move-wide v2, v4

    :cond_29
    const-wide/high16 v4, 0x4034000000000000L  # 20.0

    .line 164
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_32

    mul-double v0, v0, v4

    :cond_31
    return-wide v0

    :catch_32
    move-exception v2

    const-string v3, "RNMicException"

    .line 170
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    return-wide v0
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onGetPermissionResult(Lcom/codemao/nemo/event/PermissionResult;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public prepareRecording()V
    .registers 8

    const/16 v0, 0x1f40

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 52
    :try_start_5
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/util/MicUtils;->bufferSize:I

    .line 54
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x2

    iget v6, p0, Lcom/codemao/nemo/util/MicUtils;->bufferSize:I

    const/16 v3, 0x1f40

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v0

    const-string v1, "MicUtilException"

    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public requestAuthorization(Landroid/app/Activity;)V
    .registers 6

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->needPermissions:[Ljava/lang/String;

    invoke-static {p1, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 123
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x2

    .line 124
    iput v0, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    .line 125
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_23

    .line 128
    :cond_18
    sget-object v0, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/codemao/nemo/util/MicUtils;->needPermissions:[Ljava/lang/String;

    const-string v3, "TYPE_RECORDER"

    invoke-virtual {v0, p1, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public setHandler(Lcom/giu/xzz/utils/HandlerUtil;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/util/MicUtils;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method

.method public startRecording(F)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-nez v0, :cond_10

    const-string p1, "MicUtilException"

    const-string v0, "STATE_UNINITIALIZED"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/codemao/nemo/util/MicUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/util/MicUtils$1;-><init>(Lcom/codemao/nemo/util/MicUtils;F)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->thread:Ljava/lang/Thread;

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecording()V
    .registers 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->thread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 101
    iput-object v1, p0, Lcom/codemao/nemo/util/MicUtils;->thread:Ljava/lang/Thread;

    .line 103
    :cond_a
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    if-eqz v0, :cond_18

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 105
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 106
    iput-object v1, p0, Lcom/codemao/nemo/util/MicUtils;->audio:Landroid/media/AudioRecord;

    .line 108
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/util/MicUtils;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;

    if-eqz v0, :cond_25

    .line 109
    iput-object v1, p0, Lcom/codemao/nemo/util/MicUtils;->mHandler:Lcom/giu/xzz/utils/HandlerUtil;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception v0

    const-string v1, "MicUtilException"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    :goto_25
    return-void
.end method
