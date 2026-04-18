.class public final Lcom/tencent/bugly/proguard/h;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/h$a;
    }
.end annotation


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 991
    iput-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GBK"

    .line 991
    iput-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    .line 50
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p2, "GBK"

    .line 991
    iput-object p2, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    const/4 p2, 0x4

    .line 55
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private a(DIZ)D
    .registers 5

    .line 318
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_36

    .line 319
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 320
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 321
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2e

    const/4 p2, 0x5

    if-eq p1, p2, :cond_27

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1f

    const-wide/16 p1, 0x0

    goto :goto_38

    .line 332
    :cond_1f
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_27
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide p1

    goto :goto_38

    .line 326
    :cond_2e
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    float-to-double p1, p1

    goto :goto_38

    :cond_36
    if-nez p4, :cond_39

    :goto_38
    return-wide p1

    .line 335
    :cond_39
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(FIZ)F
    .registers 4

    .line 298
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 299
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 300
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 301
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x4

    if-eq p1, p2, :cond_23

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1b

    const/4 p1, 0x0

    goto :goto_2c

    .line 309
    :cond_1b
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 306
    :cond_23
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p1

    goto :goto_2c

    :cond_2a
    if-nez p3, :cond_2d

    :goto_2c
    return p1

    .line 312
    :cond_2d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I
    .registers 4

    .line 73
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit8 v1, v0, 0xf

    int-to-byte v1, v1

    .line 74
    iput-byte v1, p0, Lcom/tencent/bugly/proguard/h$a;->a:B

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    .line 75
    iput v0, p0, Lcom/tencent/bugly/proguard/h$a;->b:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1b

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    iput p1, p0, Lcom/tencent/bugly/proguard/h$a;->b:I

    const/4 p0, 0x2

    return p0

    :cond_1b
    const/4 p0, 0x1

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    if-eqz p2, :cond_75

    .line 493
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_75

    .line 500
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 501
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 502
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 503
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 505
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_6a

    .line 506
    new-instance p3, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p3}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 507
    iget-object p4, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p3, p4}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 508
    iget-byte p3, p3, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p4, 0x8

    if-ne p3, p4, :cond_62

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 510
    invoke-virtual {p0, p3, p3, p4}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v1

    if-ltz v1, :cond_4e

    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v1, :cond_6c

    .line 514
    invoke-virtual {p0, v0, p3, p4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 515
    invoke-virtual {p0, p2, p4, p4}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v4

    .line 516
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 512
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 521
    :cond_62
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6a
    if-nez p4, :cond_6d

    :cond_6c
    return-object p1

    .line 524
    :cond_6d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 495
    :cond_75
    :goto_75
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method private a()V
    .registers 4

    .line 116
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 118
    :cond_5
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 119
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/h;->a(B)V

    .line 120
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    return-void
.end method

.method private a(B)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_ee

    .line 190
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string v0, "invalid type."

    invoke-direct {p1, v0}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :pswitch_d  #0xd
    new-instance v2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 175
    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 176
    iget-byte v3, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-nez v3, :cond_2a

    .line 179
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    .line 180
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 177
    :cond_2a
    new-instance v0, Lcom/tencent/bugly/proguard/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "skipField with invalid type, type value: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_48  #0xb, 0xc
    return-void

    .line 184
    :pswitch_49  #0xa
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/h;->a()V

    return-void

    .line 168
    :pswitch_4d  #0x9
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    :goto_51
    if-ge v1, p1, :cond_65

    .line 170
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/h;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_65
    return-void

    .line 162
    :pswitch_66  #0x8
    invoke-virtual {p0, v1, v1, v0}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    :goto_6a
    shl-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_80

    .line 164
    new-instance v2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    :cond_80
    return-void

    .line 158
    :pswitch_81  #0x7
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 151
    :pswitch_92  #0x6
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_9c

    add-int/lit16 p1, p1, 0x100

    .line 154
    :cond_9c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 148
    :pswitch_a7  #0x5
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 145
    :pswitch_b3  #0x4
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 142
    :pswitch_bf  #0x3
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 139
    :pswitch_cb  #0x2
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 136
    :pswitch_d7  #0x1
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 133
    :pswitch_e3  #0x0
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_e3  #00000000
        :pswitch_d7  #00000001
        :pswitch_cb  #00000002
        :pswitch_bf  #00000003
        :pswitch_b3  #00000004
        :pswitch_a7  #00000005
        :pswitch_92  #00000006
        :pswitch_81  #00000007
        :pswitch_66  #00000008
        :pswitch_4d  #00000009
        :pswitch_49  #0000000a
        :pswitch_48  #0000000b
        :pswitch_48  #0000000c
        :pswitch_d  #0000000d
    .end packed-switch
.end method

.method private a(I)Z
    .registers 8

    const/4 v0, 0x0

    .line 100
    :try_start_1
    new-instance v1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 102
    :goto_6
    iget-object v2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 103
    iget v3, v1, Lcom/tencent/bugly/proguard/h$a;->b:I

    if-le p1, v3, :cond_2b

    iget-byte v4, v1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1b

    goto :goto_2b

    .line 105
    :cond_1b
    iget-object v3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-byte v2, v1, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/h;->a(B)V
    :try_end_2a
    .catch Lcom/tencent/bugly/proguard/g; {:try_start_1 .. :try_end_2a} :catch_2f
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_2a} :catch_2f

    goto :goto_6

    :cond_2b
    :goto_2b
    if-ne p1, v3, :cond_2f

    const/4 p1, 0x1

    return p1

    :catch_2f
    :cond_2f
    return v0
.end method

.method private a([Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;IZ)[TT;"
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 797
    array-length v0, p1

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 799
    aget-object p1, p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 798
    :cond_d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "unable to get type of key and value."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;IZ)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)[TT;"
        }
    .end annotation

    .line 818
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 819
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 820
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 821
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p3, 0x9

    if-ne p2, p3, :cond_49

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 823
    invoke-virtual {p0, p2, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_35

    .line 826
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v0, :cond_34

    .line 828
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v3

    .line 829
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_34
    return-object v1

    .line 825
    :cond_35
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "size invalid: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 834
    :cond_49
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_51
    if-nez p3, :cond_55

    const/4 p1, 0x0

    return-object p1

    .line 837
    :cond_55
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(IZ)[Z
    .registers 7

    .line 616
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 617
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 618
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 619
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_45

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 621
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_31

    .line 624
    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_50

    .line 626
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    :goto_2c
    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 623
    :cond_31
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 630
    :cond_45
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    if-nez p2, :cond_51

    const/4 v1, 0x0

    :cond_50
    return-object v1

    .line 633
    :cond_51
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private e(IZ)[S
    .registers 7

    .line 677
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 678
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 679
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 680
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_42

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 682
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 685
    new-array v1, v0, [S

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_4d

    .line 687
    aget-short v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(SIZ)S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 684
    :cond_2e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 691
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    if-nez p2, :cond_4e

    const/4 v1, 0x0

    :cond_4d
    return-object v1

    .line 694
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(IZ)[I
    .registers 7

    .line 701
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 702
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 703
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 704
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_42

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 706
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 709
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_4d

    .line 711
    aget v3, v1, p1

    invoke-virtual {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 708
    :cond_2e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    if-nez p2, :cond_4e

    const/4 v1, 0x0

    :cond_4d
    return-object v1

    .line 718
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private g(IZ)[J
    .registers 8

    .line 725
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 726
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 727
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 728
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_42

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 730
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 733
    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_4d

    .line 735
    aget-wide v3, v1, p1

    invoke-virtual {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 732
    :cond_2e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 739
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    if-nez p2, :cond_4e

    const/4 v1, 0x0

    :cond_4d
    return-object v1

    .line 742
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(IZ)[F
    .registers 7

    .line 749
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 750
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 751
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 752
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_42

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 754
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 757
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_4d

    .line 759
    aget v3, v1, p1

    invoke-direct {p0, v3, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(FIZ)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 756
    :cond_2e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 763
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    if-nez p2, :cond_4e

    const/4 v1, 0x0

    :cond_4d
    return-object v1

    .line 766
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i(IZ)[D
    .registers 8

    .line 773
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 774
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 775
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 776
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p2, 0x9

    if-ne p1, p2, :cond_42

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 778
    invoke-virtual {p0, p1, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2e

    .line 781
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_21
    if-ge v2, v0, :cond_4d

    .line 783
    aget-wide v3, v1, p1

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(DIZ)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 780
    :cond_2e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :cond_42
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    if-nez p2, :cond_4e

    const/4 v1, 0x0

    :cond_4d
    return-object v1

    .line 790
    :cond_4e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(BIZ)B
    .registers 4

    .line 200
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 201
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 202
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 203
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_22

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1a

    const/4 p1, 0x0

    goto :goto_2b

    .line 211
    :cond_1a
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_22
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_2b

    :cond_29
    if-nez p3, :cond_2c

    :goto_2b
    return p1

    .line 214
    :cond_2c
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(IIZ)I
    .registers 4

    .line 243
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 244
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 245
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 246
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_36

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2f

    const/4 p2, 0x2

    if-eq p1, p2, :cond_28

    const/16 p2, 0xc

    if-ne p1, p2, :cond_20

    const/4 p1, 0x0

    goto :goto_3f

    .line 260
    :cond_20
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_28
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_3f

    .line 254
    :cond_2f
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_3f

    .line 251
    :cond_36
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    goto :goto_3f

    :cond_3d
    if-nez p3, :cond_40

    :goto_3f
    return p1

    .line 263
    :cond_40
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)I
    .registers 2

    .line 993
    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method public final a(JIZ)J
    .registers 5

    .line 269
    invoke-direct {p0, p3}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p3

    if-eqz p3, :cond_49

    .line 270
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 271
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 272
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_41

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_33

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2c

    const/16 p2, 0xc

    if-ne p1, p2, :cond_24

    const-wide/16 p1, 0x0

    goto :goto_4b

    .line 289
    :cond_24
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 286
    :cond_2c
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    goto :goto_4b

    .line 283
    :cond_33
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    goto :goto_47

    .line 280
    :cond_3a
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_47

    .line 277
    :cond_41
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    :goto_47
    int-to-long p1, p1

    goto :goto_4b

    :cond_49
    if-nez p4, :cond_4c

    :goto_4b
    return-wide p1

    .line 292
    :cond_4c
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;
    .registers 4

    .line 920
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 922
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/j;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_2f

    .line 927
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 928
    iget-object p3, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 929
    iget-byte p2, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 p3, 0xa

    if-ne p2, p3, :cond_27

    .line 931
    invoke-virtual {p1, p0}, Lcom/tencent/bugly/proguard/j;->a(Lcom/tencent/bugly/proguard/h;)V

    .line 932
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/h;->a()V

    goto :goto_3d

    .line 930
    :cond_27
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2f
    move-exception p1

    .line 924
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3a
    if-nez p3, :cond_3e

    const/4 p1, 0x0

    :goto_3d
    return-object p1

    .line 934
    :cond_3e
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Object;IZ)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 945
    instance-of v0, p1, Ljava/lang/Byte;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 946
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 947
    :cond_e
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1e

    .line 948
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 949
    :cond_1e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2b

    .line 950
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(SIZ)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 951
    :cond_2b
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_38

    .line 952
    invoke-virtual {p0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    .line 953
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 954
    :cond_38
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_47

    const-wide/16 v0, 0x0

    .line 955
    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 956
    :cond_47
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_55

    const/4 p1, 0x0

    .line 957
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(FIZ)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 958
    :cond_55
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_64

    const-wide/16 v0, 0x0

    .line 959
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(DIZ)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 960
    :cond_64
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 961
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 962
    :cond_71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_83

    .line 963
    check-cast p1, Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1

    .line 964
    :cond_83
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b5

    .line 965
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_af

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_92

    goto :goto_af

    :cond_92
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->b(Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9e

    const/4 p1, 0x0

    return-object p1

    :cond_9e
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :goto_a3
    array-length p3, p1

    if-ge v1, p3, :cond_ae

    aget-object p3, p1, v1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a3

    :cond_ae
    return-object p2

    :cond_af
    :goto_af
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 966
    :cond_b5
    instance-of v0, p1, Lcom/tencent/bugly/proguard/j;

    if-eqz v0, :cond_c0

    .line 967
    check-cast p1, Lcom/tencent/bugly/proguard/j;

    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object p1

    return-object p1

    .line 968
    :cond_c0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 969
    instance-of v0, p1, [B

    if-nez v0, :cond_110

    instance-of v0, p1, [Ljava/lang/Byte;

    if-eqz v0, :cond_d3

    goto :goto_110

    .line 971
    :cond_d3
    instance-of v0, p1, [Z

    if-eqz v0, :cond_dc

    .line 972
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->d(IZ)[Z

    move-result-object p1

    return-object p1

    .line 973
    :cond_dc
    instance-of v0, p1, [S

    if-eqz v0, :cond_e5

    .line 974
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->e(IZ)[S

    move-result-object p1

    return-object p1

    .line 975
    :cond_e5
    instance-of v0, p1, [I

    if-eqz v0, :cond_ee

    .line 976
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->f(IZ)[I

    move-result-object p1

    return-object p1

    .line 977
    :cond_ee
    instance-of v0, p1, [J

    if-eqz v0, :cond_f7

    .line 978
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->g(IZ)[J

    move-result-object p1

    return-object p1

    .line 979
    :cond_f7
    instance-of v0, p1, [F

    if-eqz v0, :cond_100

    .line 980
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->h(IZ)[F

    move-result-object p1

    return-object p1

    .line 981
    :cond_100
    instance-of v0, p1, [D

    if-eqz v0, :cond_109

    .line 982
    invoke-direct {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->i(IZ)[D

    move-result-object p1

    return-object p1

    .line 984
    :cond_109
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a([Ljava/lang/Object;IZ)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 970
    :cond_110
    :goto_110
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/h;->c(IZ)[B

    move-result-object p1

    return-object p1

    .line 987
    :cond_115
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "read object error: unsupport type."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/util/Map;IZ)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;IZ)",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/util/Map;Ljava/util/Map;IZ)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method public final a(SIZ)S
    .registers 4

    .line 220
    invoke-direct {p0, p2}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 221
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 222
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 223
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    if-eqz p1, :cond_2c

    const/4 p2, 0x1

    if-eq p1, p2, :cond_25

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1d

    const/4 p1, 0x0

    goto :goto_36

    .line 234
    :cond_1d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_25
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    goto :goto_36

    .line 228
    :cond_2c
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    int-to-short p1, p1

    goto :goto_36

    :cond_34
    if-nez p3, :cond_37

    :goto_36
    return p1

    .line 237
    :cond_37
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_7

    .line 61
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    :cond_7
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(IZ)Z
    .registers 4

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    return p1

    :cond_9
    return v0
.end method

.method public final b(IZ)Ljava/lang/String;
    .registers 5

    .line 416
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 417
    new-instance p1, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p1}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 418
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 419
    iget-byte p1, p1, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/4 p2, 0x6

    if-eq p1, p2, :cond_55

    const/4 p2, 0x7

    if-ne p1, p2, :cond_4d

    .line 435
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_39

    if-ltz p1, :cond_39

    .line 438
    new-array p1, p1, [B

    .line 439
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 441
    :try_start_2b
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_77

    .line 444
    :catch_33
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_77

    .line 437
    :cond_39
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String too long: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    .line 449
    :cond_4d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_55
    iget-object p1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-gez p1, :cond_5f

    add-int/lit16 p1, p1, 0x100

    .line 424
    :cond_5f
    new-array p1, p1, [B

    .line 425
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    :try_start_66
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->b:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_66 .. :try_end_6d} :catch_6e

    goto :goto_77

    .line 430
    :catch_6e
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_77

    :cond_74
    if-nez p2, :cond_78

    const/4 p2, 0x0

    :goto_77
    return-object p2

    .line 452
    :cond_78
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(IZ)[B
    .registers 10

    .line 640
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 641
    new-instance p2, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {p2}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 642
    iget-object v0, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {p2, v0}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 643
    iget-byte v0, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    const/16 v1, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_95

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8d

    .line 645
    new-instance v0, Lcom/tencent/bugly/proguard/h$a;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/h$a;-><init>()V

    .line 646
    iget-object v1, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/h$a;Ljava/nio/ByteBuffer;)I

    .line 647
    iget-byte v1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    const-string v4, ", "

    const-string v5, ", type: "

    if-nez v1, :cond_69

    .line 650
    invoke-virtual {p0, v3, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v1

    if-ltz v1, :cond_3d

    .line 653
    new-array p1, v1, [B

    .line 654
    iget-object p2, p0, Lcom/tencent/bugly/proguard/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_c4

    .line 652
    :cond_3d
    new-instance v2, Lcom/tencent/bugly/proguard/g;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "invalid size, tag: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_69
    new-instance v1, Lcom/tencent/bugly/proguard/g;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type mismatch, tag: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, p2, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte p1, v0, Lcom/tencent/bugly/proguard/h$a;->a:B

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    :cond_8d
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "type mismatch."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1

    .line 658
    :cond_95
    invoke-virtual {p0, v3, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result p1

    if-ltz p1, :cond_ad

    .line 661
    new-array p2, p1, [B

    const/4 v0, 0x0

    :goto_9e
    if-ge v0, p1, :cond_ab

    .line 663
    aget-byte v1, p2, v3

    invoke-virtual {p0, v1, v3, v2}, Lcom/tencent/bugly/proguard/h;->a(BIZ)B

    move-result v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    :cond_ab
    move-object p1, p2

    goto :goto_c4

    .line 660
    :cond_ad
    new-instance p2, Lcom/tencent/bugly/proguard/g;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size invalid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_c1
    if-nez p2, :cond_c5

    const/4 p1, 0x0

    :goto_c4
    return-object p1

    .line 670
    :cond_c5
    new-instance p1, Lcom/tencent/bugly/proguard/g;

    const-string p2, "require field not exist."

    invoke-direct {p1, p2}, Lcom/tencent/bugly/proguard/g;-><init>(Ljava/lang/String;)V

    throw p1
.end method
