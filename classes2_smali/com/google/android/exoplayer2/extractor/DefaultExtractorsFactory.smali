.class public final Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I

.field private tsTimestampSearchBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 86
    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 104
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;

    return-void

    nop

    :array_12
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    const v0, 0x1b8a0

    .line 121
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    return-void
.end method

.method private addExtractorsForFileType(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_d4

    :pswitch_5  #0xd
    goto/16 :goto_d3

    .line 398
    :pswitch_7  #0xe
    new-instance p1, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/jpeg/JpegExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 395
    :pswitch_11  #0xc
    new-instance p1, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/wav/WavExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 392
    :pswitch_1b  #0xb
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsExtractor;-><init>(III)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 389
    :pswitch_2b  #0xa
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/PsExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 386
    :pswitch_35  #0x9
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ogg/OggExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 382
    :pswitch_3f  #0x8
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Mp4Extractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 371
    :pswitch_55  #0x7
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I

    .line 374
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 377
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    :goto_62
    or-int/2addr v0, v2

    .line 379
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 371
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d3

    .line 368
    :pswitch_6b  #0x6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 365
    :pswitch_76  #0x5
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/flv/FlvExtractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 357
    :pswitch_7f  #0x4
    sget-object p1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory$FlacExtensionLoader;->getExtractor(I)Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 359
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 361
    :cond_8d
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 346
    :pswitch_98  #0x3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I

    .line 349
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 352
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_a4

    goto :goto_a5

    :cond_a4
    const/4 v0, 0x0

    :goto_a5
    or-int/2addr v0, v2

    .line 354
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    .line 346
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 335
    :pswitch_ad  #0x2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I

    .line 338
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    .line 341
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_b9

    goto :goto_ba

    :cond_b9
    const/4 v0, 0x0

    :goto_ba
    or-int/2addr v0, v2

    .line 343
    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 335
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 332
    :pswitch_c2  #0x1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Extractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d3

    .line 329
    :pswitch_cb  #0x0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Extractor;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_cb  #00000000
        :pswitch_c2  #00000001
        :pswitch_ad  #00000002
        :pswitch_98  #00000003
        :pswitch_7f  #00000004
        :pswitch_76  #00000005
        :pswitch_6b  #00000006
        :pswitch_55  #00000007
        :pswitch_3f  #00000008
        :pswitch_35  #00000009
        :pswitch_2b  #0000000a
        :pswitch_1b  #0000000b
        :pswitch_11  #0000000c
        :pswitch_5  #0000000d
        :pswitch_7  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 3

    monitor-enter p0

    .line 297
    :try_start_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplayer2/extractor/Extractor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplayer2/extractor/Extractor;"
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_12

    .line 308
    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 311
    :cond_12
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v1, :cond_1d

    if-eq p1, p2, :cond_1d

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 317
    :cond_1d
    sget-object v1, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_2f

    aget v4, v1, v3

    if-eq v4, p2, :cond_2c

    if-eq v4, p1, :cond_2c

    .line 319
    invoke-direct {p0, v4, v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 323
    :cond_2f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/android/exoplayer2/extractor/Extractor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/extractor/Extractor;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object p1

    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 174
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 175
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 186
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 187
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingAlwaysEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 161
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 162
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 137
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 138
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlacExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 201
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->flacFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 202
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 239
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 240
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 214
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 215
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 251
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 252
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 226
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 227
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 277
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 278
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 263
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 264
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorTimestampSearchBytes(I)Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;
    .registers 2

    monitor-enter p0

    .line 291
    :try_start_1
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 292
    monitor-exit p0

    return-object p0

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
