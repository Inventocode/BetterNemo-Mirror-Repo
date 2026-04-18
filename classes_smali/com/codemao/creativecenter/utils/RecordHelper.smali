.class public Lcom/codemao/creativecenter/utils/RecordHelper;
.super Ljava/lang/Object;
.source "RecordHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/utils/RecordHelper$Holder;,
        Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;
    }
.end annotation


# instance fields
.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mVolumes:Landroid/util/SparseArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reCordPath:Ljava/lang/String;

.field private recordSoundSizeListener:Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;

.field private save_volume_time:I

.field private weakHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mVolumes:Landroid/util/SparseArray;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/utils/RecordHelper$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/utils/RecordHelper$1;-><init>(Lcom/codemao/creativecenter/utils/RecordHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->weakHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$112(Lcom/codemao/creativecenter/utils/RecordHelper;I)I
    .registers 3

    .line 24
    iget v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->save_volume_time:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->save_volume_time:I

    return v0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/utils/RecordHelper;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/RecordHelper;->updateMicStatus()V

    return-void
.end method

.method public static get()Lcom/codemao/creativecenter/utils/RecordHelper;
    .registers 1

    .line 50
    invoke-static {}, Lcom/codemao/creativecenter/utils/RecordHelper$Holder;->access$000()Lcom/codemao/creativecenter/utils/RecordHelper;

    move-result-object v0

    return-object v0
.end method

.method private updateMicStatus()V
    .registers 6

    .line 144
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_36

    .line 145
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    div-double/2addr v0, v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2e

    const-wide/high16 v2, 0x4034000000000000L  # 20.0

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v0, v0, v2

    .line 149
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->recordSoundSizeListener:Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;

    if-eqz v2, :cond_20

    double-to-int v3, v0

    .line 150
    invoke-interface {v2, v3}, Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;->onVoiceChange(I)V

    .line 152
    :cond_20
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mVolumes:Landroid/util/SparseArray;

    iget v3, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->save_volume_time:I

    div-int/lit8 v3, v3, 0x10

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    :cond_2e
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->weakHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_36
    return-void
.end method


# virtual methods
.method public getVolumes()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mVolumes:Landroid/util/SparseArray;

    return-object v0
.end method

.method public setRecordSoundSizeListener(Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->recordSoundSizeListener:Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;

    return-void
.end method

.method public startRecordVoice()Z
    .registers 6

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->reCordPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 92
    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_21
    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v1}, Lcom/codemao/creativecenter/utils/RecordHelper;->stopRecordVoice(Z)V

    .line 104
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_30

    .line 105
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 108
    :cond_30
    :try_start_30
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 113
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 115
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 116
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0xac44

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 117
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v3, 0x1f400

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 119
    iget-object v2, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 122
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 123
    iput v1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->save_volume_time:I

    .line 124
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mVolumes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 125
    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/RecordHelper;->updateMicStatus()V

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->weakHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x11170

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_77} :catch_78

    return v4

    :catch_78
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public stopRecordVoice(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 164
    iput-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->recordSoundSizeListener:Lcom/codemao/creativecenter/utils/RecordHelper$RecordStateListener;

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->weakHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez p1, :cond_f

    return-void

    .line 170
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    .line 171
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 172
    iput-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_26

    .line 175
    :catch_1a
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->reset()V

    .line 176
    iget-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    .line 177
    iput-object v0, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    :goto_26
    return-void
.end method

.method public updateRecordPath(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/codemao/creativecenter/utils/RecordHelper;->reCordPath:Ljava/lang/String;

    return-void
.end method
