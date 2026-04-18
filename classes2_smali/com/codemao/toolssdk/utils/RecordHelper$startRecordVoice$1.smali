.class public final Lcom/codemao/toolssdk/utils/RecordHelper$startRecordVoice$1;
.super Ljava/util/TimerTask;
.source "RecordHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RecordHelper;->startRecordVoice(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/RecordOption;Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $recordingListener:Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RecordHelper$startRecordVoice$1;->$recordingListener:Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;

    .line 88
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 90
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    invoke-static {}, Lcom/codemao/toolssdk/utils/RecordHelper;->access$getMMediaRecorder$p()Landroid/media/MediaRecorder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/RecordHelper;->readAudioBuffer(Landroid/media/MediaRecorder;)D

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RecordHelper$startRecordVoice$1;->$recordingListener:Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;

    double-to-int v0, v0

    invoke-interface {v2, v0}, Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;->onRecording(I)V

    return-void
.end method
