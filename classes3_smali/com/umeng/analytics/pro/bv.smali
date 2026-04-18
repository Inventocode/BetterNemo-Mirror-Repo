.class public Lcom/umeng/analytics/pro/bv;
.super Ljava/lang/Object;
.source "TProtocolUtil.java"


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLcom/umeng/analytics/pro/bu;)Lcom/umeng/analytics/pro/bu;
    .registers 4

    const/4 v0, 0x0

    .line 171
    aget-byte v0, p0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_d

    .line 172
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    .line 185
    :cond_d
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_1d

    .line 186
    new-instance p0, Lcom/umeng/analytics/pro/bm$a;

    invoke-direct {p0}, Lcom/umeng/analytics/pro/bm$a;-><init>()V

    return-object p0

    :cond_1d
    return-object p1
.end method

.method public static a(I)V
    .registers 1

    .line 49
    sput p0, Lcom/umeng/analytics/pro/bv;->a:I

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 60
    sget v0, Lcom/umeng/analytics/pro/bv;->a:I

    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    return-void
.end method

.method public static a(Lcom/umeng/analytics/pro/bs;BI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    if-lez p2, :cond_84

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8e

    :pswitch_6  #0x5, 0x7, 0x9
    goto/16 :goto_83

    .line 136
    :pswitch_8  #0xf
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->p()Lcom/umeng/analytics/pro/bo;

    move-result-object p1

    .line 137
    :goto_c
    iget v1, p1, Lcom/umeng/analytics/pro/bo;->b:I

    if-ge v0, v1, :cond_1a

    .line 138
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bo;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 140
    :cond_1a
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->q()V

    goto/16 :goto_83

    .line 128
    :pswitch_1f  #0xe
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->r()Lcom/umeng/analytics/pro/bw;

    move-result-object p1

    .line 129
    :goto_23
    iget v1, p1, Lcom/umeng/analytics/pro/bw;->b:I

    if-ge v0, v1, :cond_31

    .line 130
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bw;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 132
    :cond_31
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->s()V

    goto :goto_83

    .line 119
    :pswitch_35  #0xd
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->n()Lcom/umeng/analytics/pro/bp;

    move-result-object p1

    .line 120
    :goto_39
    iget v1, p1, Lcom/umeng/analytics/pro/bp;->c:I

    if-ge v0, v1, :cond_4c

    .line 121
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    .line 122
    iget-byte v1, p1, Lcom/umeng/analytics/pro/bp;->b:B

    invoke-static {p0, v1, v2}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 124
    :cond_4c
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->o()V

    goto :goto_83

    .line 106
    :pswitch_50  #0xc
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->j()Lcom/umeng/analytics/pro/bx;

    .line 108
    :goto_53
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->l()Lcom/umeng/analytics/pro/bn;

    move-result-object p1

    .line 109
    iget-byte p1, p1, Lcom/umeng/analytics/pro/bn;->b:B

    if-nez p1, :cond_5f

    .line 115
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->k()V

    goto :goto_83

    :cond_5f
    add-int/lit8 v0, p2, -0x1

    .line 112
    :try_start_61
    invoke-static {p0, p1, v0}, Lcom/umeng/analytics/pro/bv;->a(Lcom/umeng/analytics/pro/bs;BI)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_8c

    .line 113
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->m()V

    goto :goto_53

    .line 102
    :pswitch_68  #0xb
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->A()Ljava/nio/ByteBuffer;

    goto :goto_83

    .line 94
    :pswitch_6c  #0xa
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->x()J

    goto :goto_83

    .line 90
    :pswitch_70  #0x8
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->w()I

    goto :goto_83

    .line 86
    :pswitch_74  #0x6
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->v()S

    goto :goto_83

    .line 98
    :pswitch_78  #0x4
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->y()D

    goto :goto_83

    .line 82
    :pswitch_7c  #0x3
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->u()B

    goto :goto_83

    .line 78
    :pswitch_80  #0x2
    invoke-virtual {p0}, Lcom/umeng/analytics/pro/bs;->t()Z

    :goto_83
    return-void

    .line 74
    :cond_84
    new-instance p0, Lcom/umeng/analytics/pro/az;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/pro/az;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_8c
    move-exception p0

    .line 112
    throw p0

    :pswitch_data_8e
    .packed-switch 0x2
        :pswitch_80  #00000002
        :pswitch_7c  #00000003
        :pswitch_78  #00000004
        :pswitch_6  #00000005
        :pswitch_74  #00000006
        :pswitch_6  #00000007
        :pswitch_70  #00000008
        :pswitch_6  #00000009
        :pswitch_6c  #0000000a
        :pswitch_68  #0000000b
        :pswitch_50  #0000000c
        :pswitch_35  #0000000d
        :pswitch_1f  #0000000e
        :pswitch_8  #0000000f
    .end packed-switch
.end method
