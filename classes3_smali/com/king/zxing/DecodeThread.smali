.class final Lcom/king/zxing/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# instance fields
.field private final cameraManager:Lcom/king/zxing/camera/CameraManager;

.field private captureHandler:Lcom/king/zxing/CaptureHandler;

.field private final context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/king/zxing/camera/CameraManager;Lcom/king/zxing/CaptureHandler;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/king/zxing/camera/CameraManager;",
            "Lcom/king/zxing/CaptureHandler;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/king/zxing/DecodeThread;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/king/zxing/DecodeThread;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    .line 64
    iput-object p3, p0, Lcom/king/zxing/DecodeThread;->captureHandler:Lcom/king/zxing/CaptureHandler;

    .line 65
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lcom/king/zxing/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 67
    new-instance p2, Ljava/util/EnumMap;

    const-class v0, Lcom/google/zxing/DecodeHintType;

    invoke-direct {p2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/king/zxing/DecodeThread;->hints:Ljava/util/Map;

    if-eqz p5, :cond_1f

    .line 69
    invoke-interface {p2, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1f
    if-eqz p4, :cond_27

    .line 73
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_80

    .line 74
    :cond_27
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 75
    const-class p4, Lcom/google/zxing/BarcodeFormat;

    invoke-static {p4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    const-string p5, "preferences_decode_1D_product"

    .line 76
    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_3e

    .line 77
    sget-object p5, Lcom/king/zxing/DecodeFormatManager;->PRODUCT_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_3e
    const-string p5, "preferences_decode_1D_industrial"

    .line 79
    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_4b

    .line 80
    sget-object p5, Lcom/king/zxing/DecodeFormatManager;->INDUSTRIAL_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_4b
    const-string p5, "preferences_decode_QR"

    .line 82
    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p5

    if-eqz p5, :cond_58

    .line 83
    sget-object p5, Lcom/king/zxing/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_58
    const-string p5, "preferences_decode_Data_Matrix"

    .line 85
    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_65

    .line 86
    sget-object p3, Lcom/king/zxing/DecodeFormatManager;->DATA_MATRIX_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_65
    const-string p3, "preferences_decode_Aztec"

    const/4 p5, 0x0

    .line 88
    invoke-interface {p1, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_73

    .line 89
    sget-object p3, Lcom/king/zxing/DecodeFormatManager;->AZTEC_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_73
    const-string p3, "preferences_decode_PDF417"

    .line 91
    invoke-interface {p1, p3, p5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 92
    sget-object p1, Lcom/king/zxing/DecodeFormatManager;->PDF417_FORMATS:Ljava/util/Set;

    invoke-interface {p4, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 95
    :cond_80
    sget-object p1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_8c

    .line 98
    sget-object p1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, p1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_8c
    sget-object p1, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p2, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Hints: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/king/zxing/util/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/king/zxing/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_5

    .line 110
    :catch_5
    iget-object v0, p0, Lcom/king/zxing/DecodeThread;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .registers 6

    .line 115
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 116
    new-instance v0, Lcom/king/zxing/DecodeHandler;

    iget-object v1, p0, Lcom/king/zxing/DecodeThread;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/king/zxing/DecodeThread;->cameraManager:Lcom/king/zxing/camera/CameraManager;

    iget-object v3, p0, Lcom/king/zxing/DecodeThread;->captureHandler:Lcom/king/zxing/CaptureHandler;

    iget-object v4, p0, Lcom/king/zxing/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/king/zxing/DecodeHandler;-><init>(Landroid/content/Context;Lcom/king/zxing/camera/CameraManager;Lcom/king/zxing/CaptureHandler;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/king/zxing/DecodeThread;->handler:Landroid/os/Handler;

    .line 117
    iget-object v0, p0, Lcom/king/zxing/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 118
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
