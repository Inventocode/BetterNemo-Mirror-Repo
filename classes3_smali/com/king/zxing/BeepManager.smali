.class public final Lcom/king/zxing/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/king/zxing/BeepManager;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 53
    invoke-virtual {p0}, Lcom/king/zxing/BeepManager;->updatePrefs()V

    return-void
.end method

.method private buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 100
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 101
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/king/zxing/R$raw;->zxl_beep:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_45

    .line 102
    :try_start_f
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 103
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 v0, 0x3

    .line 104
    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    const/4 v0, 0x0

    .line 105
    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const v0, 0x3dcccccd  # 0.1f

    .line 106
    invoke-virtual {v6, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 107
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_37

    .line 109
    :try_start_33
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_45

    return-object v6

    :catchall_37
    move-exception v0

    .line 101
    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception v1

    if-eqz p1, :cond_44

    .line 109
    :try_start_3c
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p1

    :try_start_41
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw v1
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    :catch_45
    move-exception p1

    .line 110
    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .registers 4

    const-string v0, "preferences_play_beep"

    const/4 v1, 0x0

    .line 87
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string v0, "audio"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 91
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, p0

    :goto_1a
    return v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 131
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_b

    .line 132
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 135
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    monitor-enter p0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_b

    .line 120
    :try_start_5
    iget-object p1, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_11

    .line 123
    :cond_b
    invoke-virtual {p0}, Lcom/king/zxing/BeepManager;->close()V

    .line 124
    invoke-virtual {p0}, Lcom/king/zxing/BeepManager;->updatePrefs()V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_14

    :goto_11
    const/4 p1, 0x1

    .line 126
    monitor-exit p0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized playBeepSoundAndVibrate()V
    .registers 4

    monitor-enter p0

    .line 77
    :try_start_1
    iget-boolean v0, p0, Lcom/king/zxing/BeepManager;->playBeep:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 78
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 80
    :cond_c
    iget-boolean v0, p0, Lcom/king/zxing/BeepManager;->vibrate:Z

    if-eqz v0, :cond_1f

    .line 81
    iget-object v0, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 84
    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPlayBeep(Z)V
    .registers 2

    .line 61
    iput-boolean p1, p0, Lcom/king/zxing/BeepManager;->playBeep:Z

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/king/zxing/BeepManager;->vibrate:Z

    return-void
.end method

.method declared-synchronized updatePrefs()V
    .registers 3

    monitor-enter p0

    .line 65
    :try_start_1
    iget-object v0, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/king/zxing/BeepManager;->shouldBeep(Landroid/content/SharedPreferences;Landroid/content/Context;)Z

    .line 68
    iget-boolean v0, p0, Lcom/king/zxing/BeepManager;->playBeep:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_22

    .line 71
    iget-object v0, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 72
    iget-object v0, p0, Lcom/king/zxing/BeepManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/king/zxing/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/king/zxing/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 74
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
