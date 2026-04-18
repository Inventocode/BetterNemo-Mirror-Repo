.class Lorg/conscrypt/FileClientSessionCache$Impl;
.super Ljava/lang/Object;
.source "FileClientSessionCache.java"

# interfaces
.implements Lorg/conscrypt/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/FileClientSessionCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# instance fields
.field accessOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field final directory:Ljava/io/File;

.field initialFiles:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lorg/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_2d

    .line 84
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " exists but is not a directory."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    :goto_2d
    if-eqz v0, :cond_57

    .line 94
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 100
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    goto :goto_60

    .line 98
    :cond_40
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " exists but cannot list contents."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_57
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 110
    :goto_60
    iput-object p1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    return-void

    .line 105
    :cond_63
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " directory failed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private delete(Ljava/io/File;)V
    .registers 5

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 301
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileClientSessionCache: Failed to delete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lorg/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :cond_2e
    iget p1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    return-void
.end method

.method private static fileName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string v0, "host == null"

    .line 125
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private indexFiles()V
    .registers 8

    .line 270
    iget-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    .line 272
    iput-object v1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;

    .line 276
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 277
    array-length v2, v0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_27

    aget-object v4, v0, v3

    .line 279
    iget-object v5, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 280
    new-instance v5, Lorg/conscrypt/FileClientSessionCache$CacheFile;

    iget-object v6, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Lorg/conscrypt/FileClientSessionCache$CacheFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 284
    :cond_27
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 287
    invoke-static {}, Lorg/conscrypt/FileClientSessionCache$Impl;->newAccessOrder()Ljava/util/Map;

    move-result-object v0

    .line 288
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/conscrypt/FileClientSessionCache$CacheFile;

    .line 289
    iget-object v3, v2, Lorg/conscrypt/FileClientSessionCache$CacheFile;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 291
    :cond_47
    iget-object v1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 293
    iput-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    :cond_4e
    return-void
.end method

.method static logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7

    .line 185
    invoke-static {}, Lorg/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error reading session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    .registers 7

    .line 309
    invoke-static {}, Lorg/conscrypt/FileClientSessionCache;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileClientSessionCache: Error writing session data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private makeRoom()V
    .registers 4

    .line 250
    iget v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_7

    return-void

    .line 254
    :cond_7
    invoke-direct {p0}, Lorg/conscrypt/FileClientSessionCache$Impl;->indexFiles()V

    .line 257
    iget v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    sub-int/2addr v0, v1

    .line 258
    iget-object v1, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_17

    return-void
.end method

.method private static newAccessOrder()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xc

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getSessionData(Ljava/lang/String;I)[B
    .registers 7

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {p1, p2}, Lorg/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 143
    iget-object v0, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->initialFiles:[Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_58

    if-nez v0, :cond_16

    .line 145
    monitor-exit p0

    return-object v1

    .line 149
    :cond_16
    :try_start_16
    invoke-static {v0, p2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_58

    if-gez v0, :cond_1e

    .line 151
    monitor-exit p0

    return-object v1

    .line 155
    :cond_1e
    :try_start_1e
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_58

    .line 161
    :cond_2a
    :try_start_2a
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2f} :catch_52
    .catchall {:try_start_2a .. :try_end_2f} :catchall_58

    .line 167
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    .line 168
    new-array v2, v3, [B

    .line 169
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_45
    .catchall {:try_start_2f .. :try_end_3e} :catchall_43

    .line 177
    :try_start_3e
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_58

    .line 170
    :catch_41
    monitor-exit p0

    return-object v2

    :catchall_43
    move-exception p1

    goto :goto_4e

    :catch_45
    move-exception v2

    .line 172
    :try_start_46
    invoke-static {p1, v0, v2}, Lorg/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    .line 177
    :try_start_49
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_58

    .line 173
    :catch_4c
    monitor-exit p0

    return-object v1

    .line 177
    :goto_4e
    :try_start_4e
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_58

    .line 179
    :catch_51
    :try_start_51
    throw p1

    :catch_52
    move-exception p2

    .line 163
    invoke-static {p1, v0, p2}, Lorg/conscrypt/FileClientSessionCache$Impl;->logReadError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_58

    .line 164
    monitor-exit p0

    return-object v1

    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 7

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_74

    .line 198
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result p1

    invoke-static {v0, p1}, Lorg/conscrypt/FileClientSessionCache$Impl;->fileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 199
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->directory:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_7c

    .line 206
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_6e
    .catchall {:try_start_1a .. :try_end_1f} :catchall_7c

    if-nez v2, :cond_2a

    .line 215
    :try_start_21
    iget v2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->size:I

    .line 218
    invoke-direct {p0}, Lorg/conscrypt/FileClientSessionCache$Impl;->makeRoom()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_7c

    .line 223
    :cond_2a
    :try_start_2a
    invoke-virtual {v3, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_46
    .catchall {:try_start_2a .. :try_end_2d} :catchall_44

    .line 230
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_38
    .catchall {:try_start_2d .. :try_end_30} :catchall_36

    .line 240
    :try_start_30
    iget-object p2, p0, Lorg/conscrypt/FileClientSessionCache$Impl;->accessOrder:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_7c

    goto :goto_55

    :catchall_36
    move-exception p1

    goto :goto_40

    :catch_38
    move-exception p1

    .line 233
    :try_start_39
    invoke-static {v0, v1, p1}, Lorg/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 237
    :goto_3c
    :try_start_3c
    invoke-direct {p0, v1}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    goto :goto_55

    :goto_40
    invoke-direct {p0, v1}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 240
    throw p1
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_7c

    :catchall_44
    move-exception p1

    goto :goto_5b

    :catch_46
    move-exception p1

    .line 226
    :try_start_47
    invoke-static {v0, v1, p1}, Lorg/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_44

    .line 230
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_50
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_3c

    :catchall_4e
    move-exception p1

    goto :goto_57

    :catch_50
    move-exception p1

    .line 233
    :try_start_51
    invoke-static {v0, v1, p1}, Lorg/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_4e

    goto :goto_3c

    .line 244
    :goto_55
    monitor-exit p0

    return-void

    .line 237
    :goto_57
    :try_start_57
    invoke-direct {p0, v1}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 240
    throw p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_7c

    .line 230
    :goto_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_64
    .catchall {:try_start_5b .. :try_end_5e} :catchall_62

    .line 237
    :goto_5e
    :try_start_5e
    invoke-direct {p0, v1}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_7c

    goto :goto_69

    :catchall_62
    move-exception p1

    goto :goto_6a

    :catch_64
    move-exception p2

    .line 233
    :try_start_65
    invoke-static {v0, v1, p2}, Lorg/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_62

    goto :goto_5e

    .line 243
    :goto_69
    :try_start_69
    throw p1

    .line 237
    :goto_6a
    invoke-direct {p0, v1}, Lorg/conscrypt/FileClientSessionCache$Impl;->delete(Ljava/io/File;)V

    .line 240
    throw p1

    :catch_6e
    move-exception p1

    .line 209
    invoke-static {v0, v1, p1}, Lorg/conscrypt/FileClientSessionCache$Impl;->logWriteError(Ljava/lang/String;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_72
    .catchall {:try_start_69 .. :try_end_72} :catchall_7c

    .line 210
    monitor-exit p0

    return-void

    .line 195
    :cond_74
    :try_start_74
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "sessionData == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catchall {:try_start_74 .. :try_end_7c} :catchall_7c

    :catchall_7c
    move-exception p1

    monitor-exit p0

    throw p1
.end method
