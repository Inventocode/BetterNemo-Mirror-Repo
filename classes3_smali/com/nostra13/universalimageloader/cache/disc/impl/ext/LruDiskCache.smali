.class public Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/cache/disc/DiskCache;


# static fields
.field public static final DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected cache:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->DEFAULT_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_40

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-ltz v2, :cond_38

    if-ltz p6, :cond_30

    if-eqz p3, :cond_28

    if-nez v2, :cond_16

    const-wide p4, 0x7fffffffffffffffL

    :cond_16
    move-wide v3, p4

    if-nez p6, :cond_20

    const p6, 0x7fffffff

    const v5, 0x7fffffff

    goto :goto_21

    :cond_20
    move v5, p6

    :goto_21
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 106
    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    return-void

    .line 94
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initCache(Ljava/io/File;Ljava/io/File;JI)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    .line 112
    :try_start_5
    invoke-static/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;->open(Ljava/io/File;IIJI)Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_c

    goto :goto_1e

    :catch_c
    move-exception p1

    .line 114
    invoke-static {p1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_1a

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    .line 116
    invoke-direct/range {v0 .. v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->initCache(Ljava/io/File;Ljava/io/File;JI)V

    .line 118
    :cond_1a
    iget-object p2, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/LruDiskCache;->cache:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache;

    if-eqz p2, :cond_1f

    :goto_1e
    return-void

    .line 119
    :cond_1f
    throw p1
.end method
