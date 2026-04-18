.class final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacExtensionLoader"
.end annotation


# instance fields
.field private final extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private extractorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 435
    :try_start_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 436
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_59

    return-object v1

    :cond_f
    const/4 v1, 0x1

    .line 440
    :try_start_10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 442
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isAvailable"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    .line 443
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    .line 444
    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 447
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    .line 449
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_46} :catch_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_46} :catch_47
    .catchall {:try_start_10 .. :try_end_46} :catchall_59

    goto :goto_50

    :catch_47
    move-exception v1

    .line 455
    :try_start_48
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Error instantiating FLAC extension"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 457
    :catch_50
    :cond_50
    :goto_50
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extensionLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 458
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->extractorConstructor:Ljava/lang/reflect/Constructor;

    monitor-exit v0

    return-object v1

    :catchall_59
    move-exception v1

    .line 459
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_59

    throw v1
.end method


# virtual methods
.method public getExtractor(I)Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 5

    .line 421
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->maybeLoadExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_18} :catch_19

    return-object p1

    :catch_19
    move-exception p1

    .line 428
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected error creating FLAC extractor"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
