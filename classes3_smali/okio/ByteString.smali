.class public Lokio/ByteString;
.super Ljava/lang/Object;
.source "ByteString.kt"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/ByteString$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lokio/ByteString;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n1#1,419:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lokio/ByteString$Companion;

.field public static final EMPTY:Lokio/ByteString;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final data:[B

.field private transient hashCode:I

.field private transient utf8:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lokio/ByteString$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokio/ByteString$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 282
    invoke-static {}, Lokio/internal/ByteStringKt;->getCOMMON_EMPTY()Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/ByteString;->data:[B

    return-void
.end method

.method public static final encodeUtf8(Ljava/lang/String;)Lokio/ByteString;
    .registers 2

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs of([B)Lokio/ByteString;
    .registers 2

    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v0, p0}, Lokio/ByteString$Companion;->of([B)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 251
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v1, p1, v0}, Lokio/ByteString$Companion;->read(Ljava/io/InputStream;I)Lokio/ByteString;

    move-result-object p1

    .line 252
    const-class v0, Lokio/ByteString;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "field"

    .line 253
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 254
    iget-object p1, p1, Lokio/ByteString;->data:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 260
    iget-object v0, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public base64()Ljava/lang/String;
    .registers 2

    .line 88
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonBase64(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 70
    check-cast p1, Lokio/ByteString;

    invoke-virtual {p0, p1}, Lokio/ByteString;->compareTo(Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lokio/ByteString;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->commonCompareTo(Lokio/ByteString;Lokio/ByteString;)I

    move-result p1

    return p1
.end method

.method public digest$jvm(Ljava/lang/String;)Lokio/ByteString;
    .registers 4

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lokio/ByteString;

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iget-object v1, p0, Lokio/ByteString;->data:[B

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const-string v1, "MessageDigest.getInstance(algorithm).digest(data)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    .line 236
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->commonEquals(Lokio/ByteString;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getByte(I)B
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lokio/ByteString;->internalGet$jvm(I)B

    move-result p1

    return p1
.end method

.method public final getData$jvm()[B
    .registers 2

    .line 73
    iget-object v0, p0, Lokio/ByteString;->data:[B

    return-object v0
.end method

.method public final getHashCode$jvm()I
    .registers 2

    .line 75
    iget v0, p0, Lokio/ByteString;->hashCode:I

    return v0
.end method

.method public getSize$jvm()I
    .registers 2

    .line 167
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonGetSize(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public final getUtf8$jvm()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 238
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonHashCode(Lokio/ByteString;)I

    move-result v0

    return v0
.end method

.method public hex()Ljava/lang/String;
    .registers 2

    .line 128
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonHex(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public internalArray$jvm()[B
    .registers 2

    .line 173
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonInternalArray(Lokio/ByteString;)[B

    move-result-object v0

    return-object v0
.end method

.method public internalGet$jvm(I)B
    .registers 2

    .line 156
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->commonGetByte(Lokio/ByteString;I)B

    move-result p1

    return p1
.end method

.method public md5()Lokio/ByteString;
    .registers 2

    const-string v0, "MD5"

    .line 91
    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$jvm(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public rangeEquals(ILokio/ByteString;II)Z
    .registers 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {p0, p1, p2, p3, p4}, Lokio/internal/ByteStringKt;->commonRangeEquals(Lokio/ByteString;ILokio/ByteString;II)Z

    move-result p1

    return p1
.end method

.method public rangeEquals(I[BII)Z
    .registers 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p0, p1, p2, p3, p4}, Lokio/internal/ByteStringKt;->commonRangeEquals(Lokio/ByteString;I[BII)Z

    move-result p1

    return p1
.end method

.method public final setHashCode$jvm(I)V
    .registers 2

    .line 75
    iput p1, p0, Lokio/ByteString;->hashCode:I

    return-void
.end method

.method public final setUtf8$jvm(Ljava/lang/String;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lokio/ByteString;->utf8:Ljava/lang/String;

    return-void
.end method

.method public sha1()Lokio/ByteString;
    .registers 2

    const-string v0, "SHA-1"

    .line 94
    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$jvm(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public sha256()Lokio/ByteString;
    .registers 2

    const-string v0, "SHA-256"

    .line 97
    invoke-virtual {p0, v0}, Lokio/ByteString;->digest$jvm(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 164
    invoke-virtual {p0}, Lokio/ByteString;->getSize$jvm()I

    move-result v0

    return v0
.end method

.method public final startsWith(Lokio/ByteString;)Z
    .registers 3

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {p0, p1}, Lokio/internal/ByteStringKt;->commonStartsWith(Lokio/ByteString;Lokio/ByteString;)Z

    move-result p1

    return p1
.end method

.method public toAsciiLowercase()Lokio/ByteString;
    .registers 2

    .line 135
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonToAsciiLowercase(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public toByteArray()[B
    .registers 2

    .line 170
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonToByteArray(Lokio/ByteString;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 246
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonToString(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utf8()Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p0}, Lokio/internal/ByteStringKt;->commonUtf8(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write$jvm(Lokio/Buffer;)V
    .registers 5

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lokio/ByteString;->data:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method
