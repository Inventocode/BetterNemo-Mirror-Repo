.class public final Lokio/ByteString$Companion;
.super Ljava/lang/Object;
.source "ByteString.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n*L\n1#1,419:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 277
    invoke-direct {p0}, Lokio/ByteString$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a

    .line 296
    array-length p3, p1

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lokio/ByteString$Companion;->of([BII)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final decodeBase64(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    invoke-static {p1}, Lokio/internal/ByteStringKt;->commonDecodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final decodeHex(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-static {p1}, Lokio/internal/ByteStringKt;->commonDecodeHex(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final encodeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;
    .registers 4

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-static {p1}, Lokio/internal/ByteStringKt;->commonEncodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final varargs of([B)Lokio/ByteString;
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-static {p1}, Lokio/internal/ByteStringKt;->commonOf([B)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final of([BII)Lokio/ByteString;
    .registers 11

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-Util;->checkOffsetAndCount(JJJ)V

    .line 299
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 300
    invoke-static {p1, p2, v0, v1, p3}, Lokio/-Platform;->arraycopy([BI[BII)V

    .line 301
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, v0}, Lokio/ByteString;-><init>([B)V

    return-object p1
.end method

.method public final read(Ljava/io/InputStream;I)Lokio/ByteString;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    if-eqz v1, :cond_28

    .line 344
    new-array v1, p2, [B

    :goto_f
    if-ge v0, p2, :cond_22

    sub-int v2, p2, v0

    .line 348
    invoke-virtual {p1, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    add-int/2addr v0, v2

    goto :goto_f

    .line 349
    :cond_1c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 352
    :cond_22
    new-instance p1, Lokio/ByteString;

    invoke-direct {p1, v1}, Lokio/ByteString;-><init>([B)V

    return-object p1

    .line 342
    :cond_28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
