.class public Lcom/umeng/analytics/pro/bl;
.super Lcom/umeng/analytics/pro/bs;
.source "TBinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bl$a;
    }
.end annotation


# static fields
.field protected static final a:I = -0x10000

.field protected static final b:I = -0x7fff0000

.field private static final h:Lcom/umeng/analytics/pro/bx;


# instance fields
.field protected c:Z

.field protected d:Z

.field protected e:I

.field protected f:Z

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    invoke-direct {v0}, Lcom/umeng/analytics/pro/bx;-><init>()V

    sput-object v0, Lcom/umeng/analytics/pro/bl;->h:Lcom/umeng/analytics/pro/bx;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cg;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/bl;-><init>(Lcom/umeng/analytics/pro/cg;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cg;ZZ)V
    .registers 8

    .line 88
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bs;-><init>(Lcom/umeng/analytics/pro/cg;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bl;->c:Z

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/umeng/analytics/pro/bl;->d:Z

    .line 43
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bl;->f:Z

    new-array p1, v0, [B

    .line 149
    iput-object p1, p0, Lcom/umeng/analytics/pro/bl;->i:[B

    const/4 p1, 0x2

    new-array v1, p1, [B

    .line 155
    iput-object v1, p0, Lcom/umeng/analytics/pro/bl;->j:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 162
    iput-object v2, p0, Lcom/umeng/analytics/pro/bl;->k:[B

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 171
    iput-object v3, p0, Lcom/umeng/analytics/pro/bl;->l:[B

    new-array v0, v0, [B

    .line 262
    iput-object v0, p0, Lcom/umeng/analytics/pro/bl;->m:[B

    new-array p1, p1, [B

    .line 273
    iput-object p1, p0, Lcom/umeng/analytics/pro/bl;->n:[B

    new-array p1, v1, [B

    .line 292
    iput-object p1, p0, Lcom/umeng/analytics/pro/bl;->o:[B

    new-array p1, v2, [B

    .line 311
    iput-object p1, p0, Lcom/umeng/analytics/pro/bl;->p:[B

    .line 89
    iput-boolean p2, p0, Lcom/umeng/analytics/pro/bl;->c:Z

    .line 90
    iput-boolean p3, p0, Lcom/umeng/analytics/pro/bl;->d:Z

    return-void
.end method

.method private a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 382
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/pro/bl;->d(I)V

    .line 383
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->d(I)V

    .line 370
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1

    if-lt v1, v0, :cond_25

    .line 371
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/cg;->a(I)V

    return-object v1

    .line 376
    :cond_25
    new-array v1, v0, [B

    .line 377
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    .line 378
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->i:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 152
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method public a(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 185
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/pro/bl;->a(J)V

    return-void
.end method

.method public a(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->k:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    .line 165
    aput-byte v1, v0, v3

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    .line 166
    aput-byte v1, v0, v3

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    .line 167
    aput-byte p1, v0, v1

    .line 168
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method public a(J)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->l:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x30

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x1

    .line 174
    aput-byte v1, v0, v5

    const/16 v1, 0x28

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x2

    .line 175
    aput-byte v1, v0, v5

    const/16 v1, 0x20

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x3

    .line 176
    aput-byte v1, v0, v5

    const/16 v1, 0x18

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x4

    .line 177
    aput-byte v1, v0, v5

    const/16 v1, 0x10

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v5, 0x5

    .line 178
    aput-byte v1, v0, v5

    const/16 v1, 0x8

    shr-long v5, p1, v1

    and-long/2addr v5, v3

    long-to-int v6, v5

    int-to-byte v5, v6

    const/4 v6, 0x6

    .line 179
    aput-byte v5, v0, v6

    and-long/2addr p1, v3

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x7

    .line 180
    aput-byte p1, v0, p2

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bn;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 113
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 114
    iget-short p1, p1, Lcom/umeng/analytics/pro/bn;->c:S

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(S)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 132
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bo;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 133
    iget p1, p1, Lcom/umeng/analytics/pro/bo;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 124
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bp;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 125
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bp;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 126
    iget p1, p1, Lcom/umeng/analytics/pro/bp;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/bl;->d:Z

    if-eqz v0, :cond_17

    const/high16 v0, -0x7fff0000

    .line 95
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bq;->b:B

    or-int/2addr v0, v1

    .line 96
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(I)V

    .line 97
    iget-object v0, p1, Lcom/umeng/analytics/pro/bq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(Ljava/lang/String;)V

    .line 98
    iget p1, p1, Lcom/umeng/analytics/pro/bq;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(I)V

    goto :goto_26

    .line 100
    :cond_17
    iget-object v0, p1, Lcom/umeng/analytics/pro/bq;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(Ljava/lang/String;)V

    .line 101
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bq;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 102
    iget p1, p1, Lcom/umeng/analytics/pro/bq;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(I)V

    :goto_26
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 139
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bw;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    .line 140
    iget p1, p1, Lcom/umeng/analytics/pro/bw;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bx;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 190
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 191
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(I)V

    .line 192
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/analytics/pro/cg;->b([BII)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    .line 194
    :catch_12
    new-instance p1, Lcom/umeng/analytics/pro/az;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 199
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 200
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(I)V

    .line 201
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method public a(S)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->j:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    .line 158
    aput-byte p1, v0, v1

    .line 159
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method public a(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->a(B)V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 357
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bl;->d(I)V

    .line 358
    new-array v0, p1, [B

    .line 359
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    .line 360
    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    .line 362
    :catch_13
    new-instance p1, Lcom/umeng/analytics/pro/az;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(I)V
    .registers 2

    .line 387
    iput p1, p0, Lcom/umeng/analytics/pro/bl;->e:I

    const/4 p1, 0x1

    .line 388
    iput-boolean p1, p0, Lcom/umeng/analytics/pro/bl;->f:Z

    return-void
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->a(B)V

    return-void
.end method

.method protected d(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    if-ltz p1, :cond_26

    .line 395
    iget-boolean v0, p0, Lcom/umeng/analytics/pro/bl;->f:Z

    if-eqz v0, :cond_25

    .line 396
    iget v0, p0, Lcom/umeng/analytics/pro/bl;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/analytics/pro/bl;->e:I

    if-ltz v0, :cond_e

    goto :goto_25

    .line 398
    :cond_e
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length exceeded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    return-void

    .line 393
    :cond_26
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()Lcom/umeng/analytics/pro/bq;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_27

    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    const/high16 v3, -0x7fff0000

    if-ne v2, v3, :cond_1f

    .line 215
    new-instance v1, Lcom/umeng/analytics/pro/bq;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->z()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;BI)V

    return-object v1

    .line 213
    :cond_1f
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    const-string v2, "Bad version in readMessageBegin"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/bt;-><init>(ILjava/lang/String;)V

    throw v0

    .line 217
    :cond_27
    iget-boolean v2, p0, Lcom/umeng/analytics/pro/bl;->c:Z

    if-nez v2, :cond_3d

    .line 220
    new-instance v1, Lcom/umeng/analytics/pro/bq;

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;BI)V

    return-object v1

    .line 218
    :cond_3d
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    const-string v2, "Missing version in readMessageBegin, old client?"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/bt;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public j()Lcom/umeng/analytics/pro/bx;
    .registers 2

    .line 227
    sget-object v0, Lcom/umeng/analytics/pro/bl;->h:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method public k()V
    .registers 1

    return-void
.end method

.method public l()Lcom/umeng/analytics/pro/bn;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 233
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    .line 234
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->v()S

    move-result v1

    .line 235
    :goto_c
    new-instance v2, Lcom/umeng/analytics/pro/bn;

    const-string v3, ""

    invoke-direct {v2, v3, v0, v1}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public m()V
    .registers 1

    return-void
.end method

.method public n()Lcom/umeng/analytics/pro/bp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/umeng/analytics/pro/bp;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bp;-><init>(BBI)V

    return-object v0
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()Lcom/umeng/analytics/pro/bo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/umeng/analytics/pro/bo;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/bo;-><init>(BI)V

    return-object v0
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()Lcom/umeng/analytics/pro/bw;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 253
    new-instance v0, Lcom/umeng/analytics/pro/bw;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/pro/bw;-><init>(BI)V

    return-object v0
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public u()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1d

    .line 265
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    aget-byte v0, v0, v2

    .line 266
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/cg;->a(I)V

    return v0

    .line 269
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->m:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/umeng/analytics/pro/bl;->a([BII)I

    .line 270
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->m:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public v()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->n:[B

    .line 278
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1e

    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    .line 281
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_23

    .line 283
    :cond_1e
    iget-object v1, p0, Lcom/umeng/analytics/pro/bl;->n:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/bl;->a([BII)I

    .line 286
    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->o:[B

    .line 297
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1e

    .line 298
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    .line 300
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_23

    .line 302
    :cond_1e
    iget-object v1, p0, Lcom/umeng/analytics/pro/bl;->o:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/bl;->a([BII)I

    .line 304
    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public x()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/umeng/analytics/pro/bl;->p:[B

    .line 316
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1f

    .line 317
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    .line 319
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1, v3}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_24

    .line 321
    :cond_1f
    iget-object v1, p0, Lcom/umeng/analytics/pro/bl;->p:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/analytics/pro/bl;->a([BII)I

    .line 324
    :goto_24
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x28

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x18

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x10

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long/2addr v0, v3

    return-wide v0
.end method

.method public y()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 340
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bl;->w()I

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1

    if-lt v1, v0, :cond_2d

    .line 344
    :try_start_c
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/cg;->a(I)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_24} :catch_25

    return-object v1

    .line 348
    :catch_25
    new-instance v0, Lcom/umeng/analytics/pro/az;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/pro/bl;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
