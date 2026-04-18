.class public Lio/socket/engineio/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/socket/engineio/parser/Parser$DecodePayloadCallback;,
        Lio/socket/engineio/parser/Parser$EncodeCallback;
    }
.end annotation


# static fields
.field private static final MAX_INT_CHAR_LENGTH:I

.field private static err:Lio/socket/engineio/parser/Packet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/socket/engineio/parser/Packet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final packets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final packetslist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static utf8Options:Lio/socket/utf8/UTF8$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v0, 0x7fffffff

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lio/socket/engineio/parser/Parser;->MAX_INT_CHAR_LENGTH:I

    .line 19
    new-instance v0, Lio/socket/engineio/parser/Parser$1;

    invoke-direct {v0}, Lio/socket/engineio/parser/Parser$1;-><init>()V

    sput-object v0, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    .line 31
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    sget-object v2, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 36
    :cond_3d
    new-instance v0, Lio/socket/engineio/parser/Packet;

    const-string v1, "error"

    const-string v2, "parser error"

    invoke-direct {v0, v1, v2}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    .line 38
    new-instance v0, Lio/socket/utf8/UTF8$Options;

    invoke-direct {v0}, Lio/socket/utf8/UTF8$Options;-><init>()V

    sput-object v0, Lio/socket/engineio/parser/Parser;->utf8Options:Lio/socket/utf8/UTF8$Options;

    const/4 v1, 0x0

    .line 40
    iput-boolean v1, v0, Lio/socket/utf8/UTF8$Options;->strict:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 13
    invoke-static {p0}, Lio/socket/engineio/parser/Parser;->setLengthHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)[B
    .registers 1

    .line 13
    invoke-static {p0}, Lio/socket/engineio/parser/Parser;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .registers 5

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_13

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 311
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 313
    :cond_13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodePacket(Ljava/lang/String;)Lio/socket/engineio/parser/Packet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/socket/engineio/parser/Packet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, v0}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object p0

    return-object p0
.end method

.method public static decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/socket/engineio/parser/Packet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 85
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    return-object p0

    :cond_5
    const/4 v0, 0x0

    .line 90
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    const/4 v0, -0x1

    :goto_10
    if-eqz p1, :cond_1c

    .line 97
    :try_start_12
    sget-object p1, Lio/socket/engineio/parser/Parser;->utf8Options:Lio/socket/utf8/UTF8$Options;

    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->decode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Lio/socket/utf8/UTF8Exception; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_1c

    .line 99
    :catch_19
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    return-object p0

    :cond_1c
    :goto_1c
    if-ltz v0, :cond_52

    .line 103
    sget-object p1, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt v0, v1, :cond_27

    goto :goto_52

    .line 107
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    .line 108
    new-instance v1, Lio/socket/engineio/parser/Packet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 110
    :cond_42
    new-instance p0, Lio/socket/engineio/parser/Packet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 104
    :cond_52
    :goto_52
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    return-object p0
.end method

.method public static decodePacket([B)Lio/socket/engineio/parser/Packet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lio/socket/engineio/parser/Packet<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 115
    aget-byte v1, p0, v0

    .line 116
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    .line 117
    invoke-static {p0, v3, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    new-instance p0, Lio/socket/engineio/parser/Packet;

    sget-object v0, Lio/socket/engineio/parser/Parser;->packetslist:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static decodePayload(Ljava/lang/String;Lio/socket/engineio/parser/Parser$DecodePayloadCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/socket/engineio/parser/Parser$DecodePayloadCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_87

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_87

    .line 209
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_7b

    .line 211
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3a

    if-eq v6, v5, :cond_24

    .line 214
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6d

    .line 220
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2c} :catch_75

    add-int/lit8 v5, v4, 0x1

    add-int v6, v5, v2

    .line 228
    :try_start_30
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_30 .. :try_end_34} :catch_6f

    .line 234
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_67

    .line 235
    invoke-static {v5, v1}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object v5

    .line 236
    sget-object v6, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    iget-object v7, v5, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    sget-object v6, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    iget-object v6, v6, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 237
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v1, v0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    return-void

    :cond_5e
    add-int v6, v4, v2

    .line 241
    invoke-interface {p1, v5, v6, v3}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    move-result v5

    if-nez v5, :cond_67

    return-void

    :cond_67
    add-int/2addr v4, v2

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6d
    add-int/2addr v4, v0

    goto :goto_16

    .line 230
    :catch_6f
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v1, v0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    return-void

    .line 222
    :catch_75
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v1, v0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    return-void

    .line 251
    :cond_7b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_86

    .line 252
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v1, v0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    :cond_86
    return-void

    .line 205
    :cond_87
    :goto_87
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v1, v0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    return-void
.end method

.method public static decodePayload([BLio/socket/engineio/parser/Parser$DecodePayloadCallback;)V
    .registers 12

    .line 257
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    :goto_9
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_7a

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/2addr v4, v5

    if-nez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_22

    :cond_21
    const/4 v4, 0x0

    :goto_22
    const/4 v6, 0x1

    .line 264
    :goto_23
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/2addr v7, v5

    if-ne v7, v5, :cond_66

    .line 274
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 275
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 277
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 279
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v1, v3

    .line 280
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 281
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    .line 282
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_58

    .line 284
    invoke-static {v2}, Lio/socket/engineio/parser/Parser;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 286
    :cond_58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :goto_5b
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 289
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_9

    .line 267
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sget v9, Lio/socket/engineio/parser/Parser;->MAX_INT_CHAR_LENGTH:I

    if-le v8, v9, :cond_74

    .line 268
    sget-object p0, Lio/socket/engineio/parser/Parser;->err:Lio/socket/engineio/parser/Packet;

    invoke-interface {p1, p0, v2, v3}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    return-void

    .line 271
    :cond_74
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 293
    :cond_7a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_7e
    if-ge v2, p0, :cond_a2

    .line 295
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 296
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_92

    .line 299
    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3}, Lio/socket/engineio/parser/Parser;->decodePacket(Ljava/lang/String;Z)Lio/socket/engineio/parser/Packet;

    move-result-object v1

    invoke-interface {p1, v1, v2, p0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    goto :goto_9f

    .line 300
    :cond_92
    instance-of v4, v1, [B

    if-eqz v4, :cond_9f

    .line 303
    check-cast v1, [B

    invoke-static {v1}, Lio/socket/engineio/parser/Parser;->decodePacket([B)Lio/socket/engineio/parser/Packet;

    move-result-object v1

    invoke-interface {p1, v1, v2, p0}, Lio/socket/engineio/parser/Parser$DecodePayloadCallback;->call(Lio/socket/engineio/parser/Packet;II)Z

    :cond_9f
    :goto_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    :cond_a2
    return-void
.end method

.method private static encodeByteArray(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/engineio/parser/Packet<",
            "[B>;",
            "Lio/socket/engineio/parser/Parser$EncodeCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    check-cast v0, [B

    .line 73
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 74
    sget-object v3, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    iget-object p0, p0, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->byteValue()B

    move-result p0

    const/4 v3, 0x0

    aput-byte p0, v1, v3

    .line 75
    array-length p0, v0

    invoke-static {v0, v3, v1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-interface {p1, v1}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static encodeOneBinaryPacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/socket/engineio/parser/Packet;",
            "Lio/socket/engineio/parser/Parser$EncodeCallback<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 175
    new-instance v0, Lio/socket/engineio/parser/Parser$4;

    invoke-direct {v0, p1}, Lio/socket/engineio/parser/Parser$4;-><init>(Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V

    return-void
.end method

.method public static encodePacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0, p1}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V

    return-void
.end method

.method public static encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_a

    .line 56
    invoke-static {p0, p2}, Lio/socket/engineio/parser/Parser;->encodeByteArray(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    return-void

    .line 60
    :cond_a
    sget-object v0, Lio/socket/engineio/parser/Parser;->packets:Ljava/util/Map;

    iget-object v1, p0, Lio/socket/engineio/parser/Packet;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    if-eqz v1, :cond_37

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_30

    sget-object p1, Lio/socket/engineio/parser/Parser;->utf8Options:Lio/socket/utf8/UTF8$Options;

    invoke-static {p0, p1}, Lio/socket/utf8/UTF8;->encode(Ljava/lang/String;Lio/socket/utf8/UTF8$Options;)Ljava/lang/String;

    move-result-object p0

    :cond_30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_37
    invoke-interface {p2, v0}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public static encodePayload([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 122
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_14

    aget-object v3, p0, v2

    .line 123
    iget-object v3, v3, Lio/socket/engineio/parser/Packet;->data:Ljava/lang/Object;

    instance-of v3, v3, [B

    if-eqz v3, :cond_11

    .line 126
    invoke-static {p0, p1}, Lio/socket/engineio/parser/Parser;->encodePayloadAsBinary([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    return-void

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 131
    :cond_14
    array-length v0, p0

    if-nez v0, :cond_1d

    const-string p0, "0:"

    .line 132
    invoke-interface {p1, p0}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void

    .line 136
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    array-length v2, p0

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_33

    aget-object v4, p0, v3

    .line 139
    new-instance v5, Lio/socket/engineio/parser/Parser$2;

    invoke-direct {v5, v0}, Lio/socket/engineio/parser/Parser$2;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v4, v1, v5}, Lio/socket/engineio/parser/Parser;->encodePacket(Lio/socket/engineio/parser/Packet;ZLio/socket/engineio/parser/Parser$EncodeCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 147
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static encodePayloadAsBinary([Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/socket/engineio/parser/Packet;",
            "Lio/socket/engineio/parser/Parser$EncodeCallback<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/socket/utf8/UTF8Exception;
        }
    .end annotation

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array p0, v1, [B

    .line 156
    invoke-interface {p1, p0}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    array-length v2, p0

    :goto_11
    if-ge v1, v2, :cond_20

    aget-object v3, p0, v1

    .line 163
    new-instance v4, Lio/socket/engineio/parser/Parser$3;

    invoke-direct {v4, v0}, Lio/socket/engineio/parser/Parser$3;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v3, v4}, Lio/socket/engineio/parser/Parser;->encodeOneBinaryPacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 171
    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [[B

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    invoke-static {p0}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    move-result-object p0

    invoke-interface {p1, p0}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private static setLengthHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .registers 5

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 318
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_13

    .line 320
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_13
    return-object v1
.end method
