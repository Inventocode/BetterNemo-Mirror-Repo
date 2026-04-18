.class final Lorg/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "OpenSSLBIOSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;
    }
.end annotation


# instance fields
.field private source:Lorg/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method private constructor <init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    return-void
.end method

.method private declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_f

    .line 44
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 47
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static wrap(Ljava/nio/ByteBuffer;)Lorg/conscrypt/OpenSSLBIOSource;
    .registers 4

    .line 30
    new-instance v0, Lorg/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lorg/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;

    invoke-direct {v2, p0}, Lorg/conscrypt/OpenSSLBIOSource$ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p0, 0x0

    invoke-direct {v1, v2, p0}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    invoke-direct {v0, v1}, Lorg/conscrypt/OpenSSLBIOSource;-><init>(Lorg/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getContext()J
    .registers 3

    .line 39
    iget-object v0, p0, Lorg/conscrypt/OpenSSLBIOSource;->source:Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method
