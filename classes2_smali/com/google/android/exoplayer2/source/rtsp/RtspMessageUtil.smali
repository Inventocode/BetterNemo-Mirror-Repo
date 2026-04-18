.class final Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;
.super Ljava/lang/Object;
.source "RtspMessageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;,
        Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspSessionHeader;
    }
.end annotation


# static fields
.field private static final CONTENT_LENGTH_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CRLF:Ljava/lang/String;

.field public static final DEFAULT_RTSP_TIMEOUT_MS:J = 0xea60L

.field private static final LF:Ljava/lang/String;

.field private static final REQUEST_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final RTSP_VERSION:Ljava/lang/String; = "RTSP/1.0"

.field private static final SESSION_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final STATUS_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final WWW_AUTHENTICATION_HEADER_BASIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final WWW_AUTHENTICATION_HEADER_DIGEST_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "([A-Z_]+) (.*) RTSP/1\\.0"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->REQUEST_LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "RTSP/1\\.0 (\\d+) (.+)"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->STATUS_LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Content-Length:\\s?(\\d+)"

    const/4 v1, 0x2

    .line 93
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CONTENT_LENGTH_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([\\w$\\-_.+]+)(?:;\\s?timeout=(\\d+))?"

    .line 97
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->SESSION_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Digest realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\",\\s?(?:domain=\"(.+)\",\\s?)?nonce=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\"(?:,\\s?opaque=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\")?"

    .line 101
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->WWW_AUTHENTICATION_HEADER_DIGEST_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "Basic realm=\"([^\"\\x00-\\x08\\x0A-\\x1f\\x7f]+)\""

    .line 108
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->WWW_AUTHENTICATION_HEADER_BASIC_PATTERN:Ljava/util/regex/Pattern;

    .line 111
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0xa

    aput-byte v4, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->LF:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/String;

    new-array v1, v1, [B

    fill-array-data v1, :array_4e

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CRLF:Ljava/lang/String;

    return-void

    nop

    :array_4e
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertMessageToByteArray(Ljava/util/List;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .line 183
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CRLF:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method private static getRtspStatusReasonPhrase(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_58

    const/16 v0, 0x1cd

    if-eq p0, v0, :cond_55

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_52

    const/16 v0, 0x1f9

    if-eq p0, v0, :cond_4f

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_49

    const/16 v0, 0x190

    if-eq p0, v0, :cond_46

    const/16 v0, 0x191

    if-eq p0, v0, :cond_43

    const/16 v0, 0x194

    if-eq p0, v0, :cond_40

    const/16 v0, 0x195

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_5c

    .line 492
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_31  #0x1c9
    const-string p0, "Invalid Range"

    return-object p0

    :pswitch_34  #0x1c8
    const-string p0, "Header Field Not Valid"

    return-object p0

    :pswitch_37  #0x1c7
    const-string p0, "Method Not Valid In This State"

    return-object p0

    :pswitch_3a  #0x1c6
    const-string p0, "Session Not Found"

    return-object p0

    :cond_3d
    const-string p0, "Method Not Allowed"

    return-object p0

    :cond_40
    const-string p0, "Not Found"

    return-object p0

    :cond_43
    const-string p0, "Unauthorized"

    return-object p0

    :cond_46
    const-string p0, "Bad Request"

    return-object p0

    :cond_49
    const-string p0, "Move Temporarily"

    return-object p0

    :cond_4c
    const-string p0, "Move Permanently"

    return-object p0

    :cond_4f
    const-string p0, "RTSP Version Not Supported"

    return-object p0

    :cond_52
    const-string p0, "Internal Server Error"

    return-object p0

    :cond_55
    const-string p0, "Unsupported Transport"

    return-object p0

    :cond_58
    const-string p0, "OK"

    return-object p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1c6
        :pswitch_3a  #000001c6
        :pswitch_37  #000001c7
        :pswitch_34  #000001c8
        :pswitch_31  #000001c9
    .end packed-switch
.end method

.method public static getStringBytes(Ljava/lang/String;)[B
    .registers 2

    .line 221
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageChannel;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static isRtspResponse(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->STATUS_LINE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isRtspStartLine(Ljava/lang/String;)Z
    .registers 2

    .line 336
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->REQUEST_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->STATUS_LINE_PATTERN:Ljava/util/regex/Pattern;

    .line 337
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public static parseContentLengthHeader(Ljava/lang/String;)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 363
    :try_start_0
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CONTENT_LENGTH_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    .line 365
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_1b} :catch_1f

    return-wide v0

    :cond_1c
    const-wide/16 v0, -0x1

    return-wide v0

    :catch_1f
    move-exception v0

    .line 370
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 502
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    .line 504
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseMethodString(Ljava/lang/String;)I
    .registers 14

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, -0x1

    sparse-switch v0, :sswitch_data_c2

    goto/16 :goto_ab

    :sswitch_1c
    const-string v0, "DESCRIBE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_ab

    :cond_26
    const/16 v12, 0xb

    goto/16 :goto_ab

    :sswitch_2a
    const-string v0, "ANNOUNCE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_ab

    :cond_34
    const/16 v12, 0xa

    goto/16 :goto_ab

    :sswitch_38
    const-string v0, "SETUP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto/16 :goto_ab

    :cond_42
    const/16 v12, 0x9

    goto/16 :goto_ab

    :sswitch_46
    const-string v0, "PAUSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_ab

    :cond_50
    const/16 v12, 0x8

    goto/16 :goto_ab

    :sswitch_54
    const-string v0, "SET_PARAMETER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_ab

    :cond_5d
    const/4 v12, 0x7

    goto :goto_ab

    :sswitch_5f
    const-string v0, "REDIRECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    goto :goto_ab

    :cond_68
    const/4 v12, 0x6

    goto :goto_ab

    :sswitch_6a
    const-string v0, "PLAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto :goto_ab

    :cond_73
    const/4 v12, 0x5

    goto :goto_ab

    :sswitch_75
    const-string v0, "PLAY_NOTIFY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto :goto_ab

    :cond_7e
    const/4 v12, 0x4

    goto :goto_ab

    :sswitch_80
    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_89

    goto :goto_ab

    :cond_89
    const/4 v12, 0x3

    goto :goto_ab

    :sswitch_8b
    const-string v0, "GET_PARAMETER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto :goto_ab

    :cond_94
    const/4 v12, 0x2

    goto :goto_ab

    :sswitch_96
    const-string v0, "TEARDOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9f

    goto :goto_ab

    :cond_9f
    const/4 v12, 0x1

    goto :goto_ab

    :sswitch_a1
    const-string v0, "RECORD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v12, 0x0

    :goto_ab
    packed-switch v12, :pswitch_data_f4

    .line 285
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :pswitch_b4  #0xb
    return v10

    :pswitch_b5  #0xa
    return v11

    :pswitch_b6  #0x9
    return v2

    :pswitch_b7  #0x8
    return v7

    :pswitch_b8  #0x7
    return v1

    :pswitch_b9  #0x6
    return v3

    :pswitch_ba  #0x5
    return v6

    :pswitch_bb  #0x4
    return v5

    :pswitch_bc  #0x3
    return v8

    :pswitch_bd  #0x2
    return v9

    :pswitch_be  #0x1
    const/16 p0, 0xc

    return p0

    :pswitch_c1  #0x0
    return v4

    :sswitch_data_c2
    .sparse-switch
        -0x70269faf -> :sswitch_a1
        -0x3480a9fc -> :sswitch_96
        -0x29e53a40 -> :sswitch_8b
        -0x1faded82 -> :sswitch_80
        -0x5073d4c -> :sswitch_75
        0x258334 -> :sswitch_6a
        0x62e7dc -> :sswitch_5f
        0x43f13cc -> :sswitch_54
        0x4862dd6 -> :sswitch_46
        0x4b2425d -> :sswitch_38
        0x7ed8469 -> :sswitch_2a
        0x6b56a6cb -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c1  #00000000
        :pswitch_be  #00000001
        :pswitch_bd  #00000002
        :pswitch_bc  #00000003
        :pswitch_bb  #00000004
        :pswitch_ba  #00000005
        :pswitch_b9  #00000006
        :pswitch_b8  #00000007
        :pswitch_b7  #00000008
        :pswitch_b6  #00000009
        :pswitch_b5  #0000000a
        :pswitch_b4  #0000000b
    .end packed-switch
.end method

.method public static parsePublicHeader(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 383
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 386
    :cond_7
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const-string v1, ",\\s?"

    .line 387
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    .line 388
    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->parseMethodString(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 390
    :cond_26
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static parseRequest(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;"
        }
    .end annotation

    .line 318
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->REQUEST_LINE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x1

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->parseMethodString(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    .line 322
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, ""

    .line 324
    invoke-interface {p0, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_3b

    const/4 v1, 0x1

    .line 325
    :cond_3b
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 327
    invoke-interface {p0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 328
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;-><init>()V

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->addAll(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->build()Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    move-result-object v1

    .line 330
    sget-object v5, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CRLF:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v5

    add-int/2addr v4, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 331
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;

    invoke-direct {v2, v0, v3, v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;-><init>(Landroid/net/Uri;ILcom/google/android/exoplayer2/source/rtsp/RtspHeaders;Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseResponse(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->STATUS_LINE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    const/4 v2, 0x1

    .line 299
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, ""

    .line 301
    invoke-interface {p0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2c

    const/4 v1, 0x1

    .line 302
    :cond_2c
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 304
    invoke-interface {p0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 305
    new-instance v4, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;-><init>()V

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->addAll(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders$Builder;->build()Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    move-result-object v1

    .line 307
    sget-object v4, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CRLF:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v4

    add-int/2addr v3, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 308
    new-instance v2, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;-><init>(ILcom/google/android/exoplayer2/source/rtsp/RtspHeaders;Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseSessionHeader(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspSessionHeader;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->SESSION_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    .line 412
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/32 v2, 0xea60

    const/4 v4, 0x2

    .line 416
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 418
    :try_start_21
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_25} :catch_2b

    int-to-long v2, p0

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    goto :goto_31

    :catch_2b
    move-exception v0

    .line 420
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 424
    :cond_31
    :goto_31
    new-instance p0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspSessionHeader;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspSessionHeader;-><init>(Ljava/lang/String;J)V

    return-object p0

    :cond_37
    const/4 v0, 0x0

    .line 409
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseUserInfo(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;
    .registers 4

    .line 208
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const-string v1, ":"

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 213
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/util/Util;->splitAtFirst(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 214
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil$RtspAuthUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-object v0
.end method

.method public static parseWwwAuthenticateHeader(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/RtspAuthenticationInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 441
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->WWW_AUTHENTICATION_HEADER_DIGEST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    .line 443
    new-instance p0, Lcom/google/android/exoplayer2/source/rtsp/RtspAuthenticationInfo;

    const/4 v1, 0x2

    .line 445
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    .line 446
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    .line 447
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspAuthenticationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 449
    :cond_32
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->WWW_AUTHENTICATION_HEADER_BASIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 451
    new-instance p0, Lcom/google/android/exoplayer2/source/rtsp/RtspAuthenticationInfo;

    .line 453
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v2, v0, v1, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspAuthenticationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_50
    const-string v0, "Invalid WWW-Authenticate header "

    .line 457
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_66

    :cond_61
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_66
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static removeUserInfo(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 4

    .line 188
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    .line 193
    :cond_7
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "@"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 195
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 196
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static serializeRequest(Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;->headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 126
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 128
    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;->method:I

    .line 130
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->toMethodString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;->uri:Landroid/net/Uri;

    aput-object v4, v3, v1

    const-string v4, "RTSP/1.0"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "%s %s %s"

    .line 129
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 132
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;->headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->asMultiMap()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v3

    .line 133
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_42
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 134
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x0

    .line 135
    :goto_53
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_42

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v2

    .line 136
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "%s: %s"

    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    :cond_6f
    const-string v1, ""

    .line 140
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 141
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspRequest;->messageBody:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 142
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static serializeResponse(Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;)Lcom/google/common/collect/ImmutableList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;->headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    const-string v1, "CSeq"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 157
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "RTSP/1.0"

    aput-object v4, v3, v2

    .line 159
    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;->status:I

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;->status:I

    invoke-static {v4}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->getRtspStatusReasonPhrase(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const-string v4, "%s %s %s"

    .line 160
    invoke-static {v4, v3}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 163
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;->headers:Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/rtsp/RtspHeaders;->asMultiMap()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v3

    .line 164
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMultimap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :cond_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 165
    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableListMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x0

    .line 166
    :goto_57
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-ge v8, v9, :cond_46

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v6, v9, v2

    .line 167
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "%s: %s"

    invoke-static {v10, v9}, Lcom/google/android/exoplayer2/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_57

    :cond_73
    const-string v1, ""

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 172
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/rtsp/RtspResponse;->messageBody:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 173
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static splitRtspMessageBody(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 352
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->CRLF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_b

    :cond_9
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->LF:Ljava/lang/String;

    :goto_b
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toMethodString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_2e

    .line 253
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_9  #0xc
    const-string p0, "TEARDOWN"

    return-object p0

    :pswitch_c  #0xb
    const-string p0, "SET_PARAMETER"

    return-object p0

    :pswitch_f  #0xa
    const-string p0, "SETUP"

    return-object p0

    :pswitch_12  #0x9
    const-string p0, "REDIRECT"

    return-object p0

    :pswitch_15  #0x8
    const-string p0, "RECORD"

    return-object p0

    :pswitch_18  #0x7
    const-string p0, "PLAY_NOTIFY"

    return-object p0

    :pswitch_1b  #0x6
    const-string p0, "PLAY"

    return-object p0

    :pswitch_1e  #0x5
    const-string p0, "PAUSE"

    return-object p0

    :pswitch_21  #0x4
    const-string p0, "OPTIONS"

    return-object p0

    :pswitch_24  #0x3
    const-string p0, "GET_PARAMETER"

    return-object p0

    :pswitch_27  #0x2
    const-string p0, "DESCRIBE"

    return-object p0

    :pswitch_2a  #0x1
    const-string p0, "ANNOUNCE"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a  #00000001
        :pswitch_27  #00000002
        :pswitch_24  #00000003
        :pswitch_21  #00000004
        :pswitch_1e  #00000005
        :pswitch_1b  #00000006
        :pswitch_18  #00000007
        :pswitch_15  #00000008
        :pswitch_12  #00000009
        :pswitch_f  #0000000a
        :pswitch_c  #0000000b
        :pswitch_9  #0000000c
    .end packed-switch
.end method
