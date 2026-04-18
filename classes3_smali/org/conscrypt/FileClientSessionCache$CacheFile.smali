.class Lorg/conscrypt/FileClientSessionCache$CacheFile;
.super Ljava/io/File;
.source "FileClientSessionCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheFile"
.end annotation


# instance fields
.field lastModified:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    .line 359
    iput-wide v0, p0, Lorg/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    .line 356
    iput-object p2, p0, Lorg/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/io/File;)I
    .registers 7

    .line 373
    invoke-virtual {p0}, Lorg/conscrypt/FileClientSessionCache$CacheFile;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 375
    invoke-super {p0, p1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1

    :cond_14
    if-gez v4, :cond_18

    const/4 p1, -0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x1

    :goto_19
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 350
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lorg/conscrypt/FileClientSessionCache$CacheFile;->compareTo(Ljava/io/File;)I

    move-result p1

    return p1
.end method

.method public lastModified()J
    .registers 6

    .line 363
    iget-wide v0, p0, Lorg/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    .line 365
    invoke-super {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/FileClientSessionCache$CacheFile;->lastModified:J

    :cond_e
    return-wide v0
.end method
