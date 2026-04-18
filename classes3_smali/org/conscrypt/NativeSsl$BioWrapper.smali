.class final Lorg/conscrypt/NativeSsl$BioWrapper;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeSsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BioWrapper"
.end annotation


# instance fields
.field private volatile bio:J

.field final synthetic this$0:Lorg/conscrypt/NativeSsl;


# direct methods
.method private constructor <init>(Lorg/conscrypt/NativeSsl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 633
    iput-object p1, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 634
    invoke-static {p1}, Lorg/conscrypt/NativeSsl;->access$100(Lorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lorg/conscrypt/NativeCrypto;->SSL_BIO_new(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeSsl$1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1}, Lorg/conscrypt/NativeSsl$BioWrapper;-><init>(Lorg/conscrypt/NativeSsl;)V

    return-void
.end method


# virtual methods
.method close()V
    .registers 5

    .line 656
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    const-wide/16 v2, 0x0

    .line 657
    iput-wide v2, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 658
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-void
.end method

.method getPendingWrittenBytes()I
    .registers 6

    .line 638
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 639
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method readDirectByteBuffer(JI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    .line 652
    invoke-static {v0}, Lorg/conscrypt/NativeSsl;->access$100(Lorg/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    iget-wide v4, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    invoke-static {v0}, Lorg/conscrypt/NativeSsl;->access$200(Lorg/conscrypt/NativeSsl;)Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    move-wide v6, p1

    move v8, p3

    .line 651
    invoke-static/range {v1 .. v9}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JLorg/conscrypt/NativeSsl;JJILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1

    return p1
.end method

.method writeDirectByteBuffer(JI)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    .line 647
    invoke-static {v0}, Lorg/conscrypt/NativeSsl;->access$100(Lorg/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    iget-wide v4, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lorg/conscrypt/NativeSsl$BioWrapper;->this$0:Lorg/conscrypt/NativeSsl;

    invoke-static {v0}, Lorg/conscrypt/NativeSsl;->access$200(Lorg/conscrypt/NativeSsl;)Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    move-wide v6, p1

    move v8, p3

    .line 646
    invoke-static/range {v1 .. v9}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JLorg/conscrypt/NativeSsl;JJILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result p1

    return p1
.end method
