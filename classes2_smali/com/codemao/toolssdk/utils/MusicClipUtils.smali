.class public final Lcom/codemao/toolssdk/utils/MusicClipUtils;
.super Ljava/lang/Object;
.source "MediaTrimUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/MusicClipUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/MusicClipUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/MusicClipUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/MusicClipUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/MusicClipUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clipByDSP(Landroid/content/Context;Ljava/lang/String;Ljava/io/RandomAccessFile;JJ)V
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-wide/from16 v2, p4

    const-string v4, "context"

    move-object v5, p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "srcMp3Path"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "randomAccessFile"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    :try_start_16
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    long-to-double v7, v2

    const-wide v9, 0x408f400000000000L  # 1000.0

    div-double/2addr v7, v9

    sub-long v2, p6, v2

    long-to-double v2, v2

    div-double v9, v2, v9

    const v11, 0xac44

    const/16 v12, 0x400

    const/4 v13, 0x0

    move-object v5, p1

    .line 33
    invoke-static/range {v5 .. v13}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->fromPipe(Landroid/content/Context;Landroid/net/Uri;DDIII)Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move-result-object v0

    .line 42
    new-instance v2, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->getFormat()Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/codemao/toolssdk/dsp/writer/WriterProcessor;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;Ljava/io/RandomAccessFile;)V

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->addAudioProcessor(Lcom/codemao/toolssdk/dsp/AudioProcessor;)V

    .line 43
    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;->run()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_45} :catch_46

    goto :goto_4a

    :catch_46
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4a
    return-void
.end method
