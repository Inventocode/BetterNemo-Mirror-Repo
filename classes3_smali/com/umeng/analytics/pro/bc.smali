.class public Lcom/umeng/analytics/pro/bc;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lcom/umeng/analytics/pro/ce;

.field private c:Lcom/umeng/analytics/pro/bs;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    new-instance v0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bc;-><init>(Lcom/umeng/analytics/pro/bu;)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/bu;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/bc;->a:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, v0}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/umeng/analytics/pro/bc;->b:Lcom/umeng/analytics/pro/ce;

    .line 67
    invoke-interface {p1, v1}, Lcom/umeng/analytics/pro/bu;->a(Lcom/umeng/analytics/pro/cg;)Lcom/umeng/analytics/pro/bs;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/pro/bc;->c:Lcom/umeng/analytics/pro/bs;

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/pro/at;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 96
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bc;->a(Lcom/umeng/analytics/pro/at;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 98
    :catch_a
    new-instance p1, Lcom/umeng/analytics/pro/az;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/umeng/analytics/pro/at;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/pro/bc;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/pro/bc;->c:Lcom/umeng/analytics/pro/bs;

    invoke-interface {p1, v0}, Lcom/umeng/analytics/pro/at;->write(Lcom/umeng/analytics/pro/bs;)V

    .line 82
    iget-object p1, p0, Lcom/umeng/analytics/pro/bc;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/umeng/analytics/pro/at;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bc;->a(Lcom/umeng/analytics/pro/at;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
