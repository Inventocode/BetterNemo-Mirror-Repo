.class public Lcom/umeng/analytics/pro/bm;
.super Lcom/umeng/analytics/pro/bs;
.source "TCompactProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/bm$b;,
        Lcom/umeng/analytics/pro/bm$a;
    }
.end annotation


# static fields
.field private static final d:Lcom/umeng/analytics/pro/bx;

.field private static final e:Lcom/umeng/analytics/pro/bn;

.field private static final f:[B

.field private static final h:B = -0x7et

.field private static final i:B = 0x1t

.field private static final j:B = 0x1ft

.field private static final k:B = -0x20t

.field private static final l:I = 0x5


# instance fields
.field a:[B

.field b:[B

.field c:[B

.field private m:Lcom/umeng/analytics/pro/ar;

.field private n:S

.field private o:Lcom/umeng/analytics/pro/bn;

.field private p:Ljava/lang/Boolean;

.field private final q:J

.field private r:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/pro/bm;->d:Lcom/umeng/analytics/pro/bx;

    .line 43
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/pro/bm;->e:Lcom/umeng/analytics/pro/bn;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 45
    sput-object v0, Lcom/umeng/analytics/pro/bm;->f:[B

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v3, 0x5

    const/16 v4, 0x8

    aput-byte v3, v0, v4

    const/16 v3, 0xa

    aput-byte v1, v0, v3

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    aput-byte v4, v0, v1

    const/16 v2, 0xf

    const/16 v4, 0x9

    aput-byte v4, v0, v2

    const/16 v2, 0xe

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v1, 0xc

    aput-byte v1, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cg;)V
    .registers 4

    const-wide/16 v0, -0x1

    .line 151
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;J)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/pro/cg;J)V
    .registers 5

    .line 141
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bs;-><init>(Lcom/umeng/analytics/pro/cg;)V

    .line 110
    new-instance p1, Lcom/umeng/analytics/pro/ar;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/ar;-><init>(I)V

    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    const/4 p1, 0x0

    .line 112
    iput-short p1, p0, Lcom/umeng/analytics/pro/bm;->n:S

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->o:Lcom/umeng/analytics/pro/bn;

    .line 124
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->p:Ljava/lang/Boolean;

    const/4 p1, 0x5

    new-array p1, p1, [B

    .line 379
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->a:[B

    const/16 p1, 0xa

    new-array p1, p1, [B

    .line 400
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->b:[B

    const/4 p1, 0x1

    new-array v0, p1, [B

    .line 450
    iput-object v0, p0, Lcom/umeng/analytics/pro/bm;->r:[B

    new-array p1, p1, [B

    .line 593
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->c:[B

    .line 142
    iput-wide p2, p0, Lcom/umeng/analytics/pro/bm;->q:J

    return-void
.end method

.method private E()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x5

    if-lt v0, v3, :cond_32

    .line 718
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    .line 719
    iget-object v3, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1a
    add-int v6, v3, v1

    .line 722
    aget-byte v6, v0, v6

    and-int/lit8 v7, v6, 0x7f

    shl-int/2addr v7, v5

    or-int/2addr v4, v7

    and-int/2addr v6, v2

    if-eq v6, v2, :cond_2d

    .line 728
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_3f

    :cond_2d
    add-int/lit8 v5, v5, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_32
    const/4 v0, 0x0

    .line 731
    :goto_33
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v0

    or-int/2addr v1, v4

    and-int/2addr v3, v2

    if-eq v3, v2, :cond_40

    move v4, v1

    :goto_3f
    return v4

    :cond_40
    add-int/lit8 v0, v0, 0x7

    goto :goto_33
.end method

.method private F()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 747
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    const-wide/16 v3, 0x0

    const/16 v5, 0xa

    if-lt v0, v5, :cond_36

    .line 748
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    .line 749
    iget-object v5, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v5}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v5

    move-wide v6, v3

    const/4 v3, 0x0

    :goto_1d
    add-int v4, v5, v1

    .line 752
    aget-byte v4, v0, v4

    and-int/lit8 v8, v4, 0x7f

    int-to-long v8, v8

    shl-long/2addr v8, v3

    or-long/2addr v6, v8

    and-int/2addr v4, v2

    if-eq v4, v2, :cond_31

    .line 758
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_43

    :cond_31
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 761
    :cond_36
    :goto_36
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    and-int/lit8 v5, v0, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v3, v5

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_44

    move-wide v6, v3

    :goto_43
    return-wide v6

    :cond_44
    add-int/lit8 v1, v1, 0x7

    goto :goto_36
.end method

.method private a([B)J
    .registers 9

    const/4 v0, 0x7

    .line 794
    aget-byte v0, p1, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x3

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    const/4 v4, 0x0

    aget-byte p1, p1, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private a(J[BI)V
    .registers 10

    add-int/lit8 v0, p4, 0x0

    const-wide/16 v1, 0xff

    and-long v3, p1, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 436
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x1

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 437
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x2

    const/16 v3, 0x10

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 438
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x3

    const/16 v3, 0x18

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 439
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x4

    const/16 v3, 0x20

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 440
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x5

    const/16 v3, 0x28

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 441
    aput-byte v3, p3, v0

    add-int/lit8 v0, p4, 0x6

    const/16 v3, 0x30

    shr-long v3, p1, v3

    and-long/2addr v3, v1

    long-to-int v4, v3

    int-to-byte v3, v4

    .line 442
    aput-byte v3, p3, v0

    add-int/lit8 p4, p4, 0x7

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    and-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    .line 443
    aput-byte p1, p3, p4

    return-void
.end method

.method private a(Lcom/umeng/analytics/pro/bn;B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 218
    iget-byte p2, p1, Lcom/umeng/analytics/pro/bn;->b:B

    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bm;->e(B)B

    move-result p2

    .line 221
    :cond_9
    iget-short v0, p1, Lcom/umeng/analytics/pro/bn;->c:S

    iget-short v1, p0, Lcom/umeng/analytics/pro/bm;->n:S

    if-le v0, v1, :cond_1d

    sub-int v2, v0, v1

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1d

    sub-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x4

    or-int/2addr p2, v0

    .line 223
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bm;->d(I)V

    goto :goto_25

    .line 226
    :cond_1d
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bm;->b(B)V

    .line 227
    iget-short p2, p1, Lcom/umeng/analytics/pro/bn;->c:S

    invoke-virtual {p0, p2}, Lcom/umeng/analytics/pro/bm;->a(S)V

    .line 230
    :goto_25
    iget-short p1, p1, Lcom/umeng/analytics/pro/bn;->c:S

    iput-short p1, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-void
.end method

.method private a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 343
    invoke-direct {p0, p3}, Lcom/umeng/analytics/pro/bm;->b(I)V

    .line 344
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void
.end method

.method private b(B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->r:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 453
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cg;->b([B)V

    return-void
.end method

.method private b(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    and-int/lit8 v2, p1, -0x80

    if-nez v2, :cond_13

    .line 384
    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->a:[B

    add-int/lit8 v3, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    .line 394
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1, v2, v0, v3}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void

    .line 389
    :cond_13
    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->a:[B

    add-int/lit8 v3, v1, 0x1

    and-int/lit8 v4, p1, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    ushr-int/lit8 p1, p1, 0x7

    move v1, v3

    goto :goto_2
.end method

.method private b(J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const-wide/16 v2, -0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_19

    .line 405
    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->b:[B

    add-int/lit8 v3, v1, 0x1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v2, v1

    .line 412
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1, v2, v0, v3}, Lcom/umeng/analytics/pro/cg;->b([BII)V

    return-void

    .line 408
    :cond_19
    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->b:[B

    add-int/lit8 v3, v1, 0x1

    const-wide/16 v4, 0x7f

    and-long/2addr v4, p1

    const-wide/16 v6, 0x80

    or-long/2addr v4, v6

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v2, v1

    const/4 v1, 0x7

    ushr-long/2addr p1, v1

    move v1, v3

    goto :goto_2
.end method

.method private c(I)I
    .registers 3

    shl-int/lit8 v0, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, v0

    return p1
.end method

.method private c(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private c(B)Z
    .registers 4

    and-int/lit8 p1, p1, 0xf

    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method private d(B)B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bt;
        }
    .end annotation

    const/16 v0, 0xf

    and-int/2addr p1, v0

    int-to-byte p1, p1

    packed-switch p1, :pswitch_data_3c

    .line 846
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "don\'t know what type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e  #0xc
    const/16 p1, 0xc

    return p1

    :pswitch_21  #0xb
    const/16 p1, 0xd

    return p1

    :pswitch_24  #0xa
    const/16 p1, 0xe

    return p1

    :pswitch_27  #0x9
    return v0

    :pswitch_28  #0x8
    const/16 p1, 0xb

    return p1

    :pswitch_2b  #0x7
    const/4 p1, 0x4

    return p1

    :pswitch_2d  #0x6
    const/16 p1, 0xa

    return p1

    :pswitch_30  #0x5
    const/16 p1, 0x8

    return p1

    :pswitch_33  #0x4
    const/4 p1, 0x6

    return p1

    :pswitch_35  #0x3
    const/4 p1, 0x3

    return p1

    :pswitch_37  #0x1, 0x2
    const/4 p1, 0x2

    return p1

    :pswitch_39  #0x0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_39  #00000000
        :pswitch_37  #00000001
        :pswitch_37  #00000002
        :pswitch_35  #00000003
        :pswitch_33  #00000004
        :pswitch_30  #00000005
        :pswitch_2d  #00000006
        :pswitch_2b  #00000007
        :pswitch_28  #00000008
        :pswitch_27  #00000009
        :pswitch_24  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1e  #0000000c
    .end packed-switch
.end method

.method private d(J)J
    .registers 7

    const/4 v0, 0x1

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x1

    and-long/2addr p1, v2

    neg-long p1, p1

    xor-long/2addr p1, v0

    return-wide p1
.end method

.method private d(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    int-to-byte p1, p1

    .line 460
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->b(B)V

    return-void
.end method

.method private e(B)B
    .registers 3

    .line 854
    sget-object v0, Lcom/umeng/analytics/pro/bm;->f:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method private e(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_6

    new-array p1, v0, [B

    return-object p1

    .line 682
    :cond_6
    new-array v1, p1, [B

    .line 683
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v1, v0, p1}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    return-object v1
.end method

.method private f(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/bt;
        }
    .end annotation

    if-ltz p1, :cond_28

    .line 691
    iget-wide v0, p0, Lcom/umeng/analytics/pro/bm;->q:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_27

    int-to-long v2, p1

    cmp-long v4, v2, v0

    if-gtz v4, :cond_10

    goto :goto_27

    .line 692
    :cond_10
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length exceeded max allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    :goto_27
    return-void

    .line 689
    :cond_28
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

.method private g(I)I
    .registers 3

    ushr-int/lit8 v0, p1, 0x1

    and-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    xor-int/2addr p1, v0

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

    .line 667
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v0

    .line 668
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->f(I)V

    const/4 v1, 0x0

    if-nez v0, :cond_11

    new-array v0, v1, [B

    .line 669
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 671
    :cond_11
    new-array v2, v0, [B

    .line 672
    iget-object v3, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v3, v2, v1, v0}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    .line 673
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public B()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ar;->c()V

    const/4 v0, 0x0

    .line 157
    iput-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-void
.end method

.method public a()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public a(B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 289
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->b(B)V

    return-void
.end method

.method protected a(BI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0xe

    if-gt p2, v0, :cond_f

    shl-int/lit8 p2, p2, 0x4

    .line 368
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->e(B)B

    move-result p1

    or-int/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->d(I)V

    goto :goto_1b

    .line 370
    :cond_f
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->e(B)B

    move-result p1

    or-int/lit16 p1, p1, 0xf0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->d(I)V

    .line 371
    invoke-direct {p0, p2}, Lcom/umeng/analytics/pro/bm;->b(I)V

    :goto_1b
    return-void
.end method

.method public a(D)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 317
    fill-array-data v0, :array_16

    .line 318
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/umeng/analytics/pro/bm;->a(J[BI)V

    .line 319
    iget-object p1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/cg;->b([B)V

    return-void

    nop

    :array_16
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public a(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->b(I)V

    return-void
.end method

.method public a(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/bm;->c(J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/pro/bm;->b(J)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bn;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 201
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bn;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 203
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->o:Lcom/umeng/analytics/pro/bn;

    goto :goto_c

    :cond_8
    const/4 v0, -0x1

    .line 205
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/pro/bm;->a(Lcom/umeng/analytics/pro/bn;B)V

    :goto_c
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 258
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bo;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/bo;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/analytics/pro/bm;->a(BI)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bp;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 246
    iget v0, p1, Lcom/umeng/analytics/pro/bp;->c:I

    if-nez v0, :cond_9

    const/4 p1, 0x0

    .line 247
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->d(I)V

    goto :goto_1e

    .line 249
    :cond_9
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->b(I)V

    .line 250
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bp;->a:B

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->e(B)B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    iget-byte p1, p1, Lcom/umeng/analytics/pro/bp;->b:B

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->e(B)B

    move-result p1

    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->d(I)V

    :goto_1e
    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, -0x7e

    .line 169
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->b(B)V

    .line 170
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bq;->b:B

    shl-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, -0x20

    or-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->d(I)V

    .line 171
    iget v0, p1, Lcom/umeng/analytics/pro/bq;->c:I

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->b(I)V

    .line 172
    iget-object p1, p1, Lcom/umeng/analytics/pro/bq;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/pro/bm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 265
    iget-byte v0, p1, Lcom/umeng/analytics/pro/bw;->a:B

    iget p1, p1, Lcom/umeng/analytics/pro/bw;->b:I

    invoke-virtual {p0, v0, p1}, Lcom/umeng/analytics/pro/bm;->a(BI)V

    return-void
.end method

.method public a(Lcom/umeng/analytics/pro/bx;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 181
    iget-object p1, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    iget-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    invoke-virtual {p1, v0}, Lcom/umeng/analytics/pro/ar;->a(S)V

    const/4 p1, 0x0

    .line 182
    iput-short p1, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 328
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/pro/bm;->a([BII)V
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    .line 330
    :catch_c
    new-instance p1, Lcom/umeng/analytics/pro/az;

    const-string v0, "UTF-8 not supported!"

    invoke-direct {p1, v0}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 338
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    .line 339
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v2, p1

    invoke-direct {p0, v1, v2, v0}, Lcom/umeng/analytics/pro/bm;->a([BII)V

    return-void
.end method

.method public a(S)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->c(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/bm;->b(I)V

    return-void
.end method

.method public a(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->o:Lcom/umeng/analytics/pro/bn;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_11

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x2

    .line 277
    :goto_a
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bm;->a(Lcom/umeng/analytics/pro/bn;B)V

    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/umeng/analytics/pro/bm;->o:Lcom/umeng/analytics/pro/bn;

    goto :goto_18

    :cond_11
    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x2

    .line 281
    :goto_15
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bm;->b(B)V

    :goto_18
    return-void
.end method

.method public b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ar;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-void
.end method

.method public c()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

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

    .line 238
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->b(B)V

    return-void
.end method

.method public e()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public g()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public h()Lcom/umeng/analytics/pro/bq;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    const/16 v1, -0x7e

    if-ne v0, v1, :cond_3c

    .line 476
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    and-int/lit8 v1, v0, 0x1f

    int-to-byte v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 482
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v1

    .line 483
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->z()Ljava/lang/String;

    move-result-object v2

    .line 484
    new-instance v3, Lcom/umeng/analytics/pro/bq;

    invoke-direct {v3, v2, v0, v1}, Lcom/umeng/analytics/pro/bq;-><init>(Ljava/lang/String;BI)V

    return-object v3

    .line 479
    :cond_25
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected version 1 but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_3c
    new-instance v2, Lcom/umeng/analytics/pro/bt;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected protocol id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public i()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public j()Lcom/umeng/analytics/pro/bx;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    iget-short v1, p0, Lcom/umeng/analytics/pro/bm;->n:S

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/pro/ar;->a(S)V

    const/4 v0, 0x0

    .line 493
    iput-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    .line 494
    sget-object v0, Lcom/umeng/analytics/pro/bm;->d:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method public k()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->m:Lcom/umeng/analytics/pro/ar;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/ar;->a()S

    move-result v0

    iput-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-void
.end method

.method public l()Lcom/umeng/analytics/pro/bn;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 510
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    if-nez v0, :cond_9

    .line 514
    sget-object v0, Lcom/umeng/analytics/pro/bm;->e:Lcom/umeng/analytics/pro/bn;

    return-object v0

    :cond_9
    and-int/lit16 v1, v0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    if-nez v1, :cond_15

    .line 523
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->v()S

    move-result v1

    goto :goto_19

    .line 526
    :cond_15
    iget-short v2, p0, Lcom/umeng/analytics/pro/bm;->n:S

    add-int/2addr v2, v1

    int-to-short v1, v2

    .line 529
    :goto_19
    new-instance v2, Lcom/umeng/analytics/pro/bn;

    and-int/lit8 v3, v0, 0xf

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/bm;->d(B)B

    move-result v4

    const-string v5, ""

    invoke-direct {v2, v5, v4, v1}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    .line 532
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->c(B)Z

    move-result v0

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    if-ne v3, v0, :cond_33

    .line 534
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_35

    :cond_33
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_35
    iput-object v0, p0, Lcom/umeng/analytics/pro/bm;->p:Ljava/lang/Boolean;

    .line 538
    :cond_37
    iget-short v0, v2, Lcom/umeng/analytics/pro/bn;->c:S

    iput-short v0, p0, Lcom/umeng/analytics/pro/bm;->n:S

    return-object v2
.end method

.method public m()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public n()Lcom/umeng/analytics/pro/bp;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    .line 549
    :cond_8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v1

    .line 550
    :goto_c
    new-instance v2, Lcom/umeng/analytics/pro/bp;

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    invoke-direct {p0, v3}, Lcom/umeng/analytics/pro/bm;->d(B)B

    move-result v3

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bm;->d(B)B

    move-result v1

    invoke-direct {v2, v3, v1, v0}, Lcom/umeng/analytics/pro/bp;-><init>(BBI)V

    return-object v2
.end method

.method public o()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public p()Lcom/umeng/analytics/pro/bo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    shr-int/lit8 v1, v0, 0x4

    const/16 v2, 0xf

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_f

    .line 563
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v1

    .line 565
    :cond_f
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->d(B)B

    move-result v0

    .line 566
    new-instance v2, Lcom/umeng/analytics/pro/bo;

    invoke-direct {v2, v0, v1}, Lcom/umeng/analytics/pro/bo;-><init>(BI)V

    return-object v2
.end method

.method public q()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public r()Lcom/umeng/analytics/pro/bw;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 576
    new-instance v0, Lcom/umeng/analytics/pro/bw;

    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->p()Lcom/umeng/analytics/pro/bo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bw;-><init>(Lcom/umeng/analytics/pro/bo;)V

    return-object v0
.end method

.method public s()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    return-void
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 586
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    .line 587
    iput-object v1, p0, Lcom/umeng/analytics/pro/bm;->p:Ljava/lang/Boolean;

    return v0

    .line 590
    :cond_c
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bm;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public u()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1d

    .line 600
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v0}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v2

    aget-byte v0, v0, v2

    .line 601
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/pro/cg;->a(I)V

    goto :goto_29

    .line 603
    :cond_1d
    iget-object v0, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    iget-object v2, p0, Lcom/umeng/analytics/pro/bm;->c:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    .line 604
    iget-object v0, p0, Lcom/umeng/analytics/pro/bm;->c:[B

    aget-byte v0, v0, v3

    :goto_29
    return v0
.end method

.method public v()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->g(I)I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->g(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->F()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/pro/bm;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()D
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 635
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/analytics/pro/cg;->d([BII)I

    .line 636
    invoke-direct {p0, v1}, Lcom/umeng/analytics/pro/bm;->a([B)J

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

    .line 643
    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm;->E()I

    move-result v0

    .line 644
    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->f(I)V

    if-nez v0, :cond_c

    const-string v0, ""

    return-object v0

    .line 651
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v1}, Lcom/umeng/analytics/pro/cg;->h()I

    move-result v1
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_12} :catch_37

    const-string v2, "UTF-8"

    if-lt v1, v0, :cond_2d

    .line 652
    :try_start_16
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v3}, Lcom/umeng/analytics/pro/cg;->f()[B

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v4}, Lcom/umeng/analytics/pro/cg;->g()I

    move-result v4

    invoke-direct {v1, v3, v4, v0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 653
    iget-object v2, p0, Lcom/umeng/analytics/pro/bs;->g:Lcom/umeng/analytics/pro/cg;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/pro/cg;->a(I)V

    return-object v1

    .line 656
    :cond_2d
    new-instance v1, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/pro/bm;->e(I)[B

    move-result-object v0

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_36} :catch_37

    return-object v1

    .line 659
    :catch_37
    new-instance v0, Lcom/umeng/analytics/pro/az;

    const-string v1, "UTF-8 not supported!"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw v0
.end method
