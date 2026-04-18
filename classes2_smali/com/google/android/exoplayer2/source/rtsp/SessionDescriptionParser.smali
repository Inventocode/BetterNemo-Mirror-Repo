.class final Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;
.super Ljava/lang/Object;
.source "SessionDescriptionParser.java"


# static fields
.field private static final ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

.field private static final ATTRIBUTE_TYPE:Ljava/lang/String; = "a"

.field private static final BANDWIDTH_TYPE:Ljava/lang/String; = "b"

.field private static final CONNECTION_TYPE:Ljava/lang/String; = "c"

.field private static final EMAIL_TYPE:Ljava/lang/String; = "e"

.field private static final INFORMATION_TYPE:Ljava/lang/String; = "i"

.field private static final KEY_TYPE:Ljava/lang/String; = "k"

.field private static final MEDIA_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

.field private static final MEDIA_TYPE:Ljava/lang/String; = "m"

.field private static final ORIGIN_TYPE:Ljava/lang/String; = "o"

.field private static final PHONE_NUMBER_TYPE:Ljava/lang/String; = "p"

.field private static final REPEAT_TYPE:Ljava/lang/String; = "r"

.field private static final SDP_LINE_PATTERN:Ljava/util/regex/Pattern;

.field private static final SESSION_TYPE:Ljava/lang/String; = "s"

.field private static final TIMING_TYPE:Ljava/lang/String; = "t"

.field private static final URI_TYPE:Ljava/lang/String; = "u"

.field private static final VERSION_TYPE:Ljava/lang/String; = "v"

.field private static final ZONE_TYPE:Ljava/lang/String; = "z"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "([a-z])=\\s?(.+)"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->SDP_LINE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?"

    .line 40
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->MEDIA_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addMediaDescriptionToSession(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 205
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->build()Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->addMediaDescription(Lcom/google/android/exoplayer2/source/rtsp/MediaDescription;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    goto :goto_b

    :catch_a
    move-exception p0

    :goto_b
    const/4 p1, 0x0

    .line 207
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMessageUtil;->splitRtspMessageBody(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v1, :cond_1d7

    aget-object v6, p0, v4

    const-string v7, ""

    .line 76
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    goto/16 :goto_1d3

    .line 80
    :cond_1c
    sget-object v7, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->SDP_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 81
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_44

    const-string p0, "Malformed SDP line: "

    .line 82
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3f

    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_3f
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_44
    const/4 v8, 0x1

    .line 86
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v10, 0x2

    .line 87
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v11, -0x1

    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_1ea

    :pswitch_62  #0x64, 0x66, 0x67, 0x68, 0x6a, 0x6c, 0x6e, 0x71, 0x77, 0x78, 0x79
    goto/16 :goto_105

    :pswitch_64  #0x7a
    const-string v12, "z"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0xe

    goto/16 :goto_105

    :pswitch_70  #0x76
    const-string v12, "v"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x0

    goto/16 :goto_105

    :pswitch_7b  #0x75
    const-string v12, "u"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x4

    goto/16 :goto_105

    :pswitch_86  #0x74
    const-string v12, "t"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0x9

    goto/16 :goto_105

    :pswitch_92  #0x73
    const-string v12, "s"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x2

    goto/16 :goto_105

    :pswitch_9d  #0x72
    const-string v12, "r"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0xd

    goto :goto_105

    :pswitch_a8  #0x70
    const-string v12, "p"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x6

    goto :goto_105

    :pswitch_b2  #0x6f
    const-string v12, "o"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x1

    goto :goto_105

    :pswitch_bc  #0x6d
    const-string v12, "m"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0xc

    goto :goto_105

    :pswitch_c7  #0x6b
    const-string v12, "k"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0xa

    goto :goto_105

    :pswitch_d2  #0x69
    const-string v12, "i"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x3

    goto :goto_105

    :pswitch_dc  #0x65
    const-string v12, "e"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x5

    goto :goto_105

    :pswitch_e6  #0x63
    const-string v12, "c"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/4 v11, 0x7

    goto :goto_105

    :pswitch_f0  #0x62
    const-string v12, "b"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0x8

    goto :goto_105

    :pswitch_fb  #0x61
    const-string v12, "a"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    const/16 v11, 0xb

    :cond_105
    :goto_105
    packed-switch v11, :pswitch_data_222

    goto/16 :goto_1d3

    :pswitch_10a  #0xc
    if-eqz v5, :cond_10f

    .line 178
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->addMediaDescriptionToSession(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)V

    .line 180
    :cond_10f
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->parseMediaDescriptionLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    move-result-object v5

    goto/16 :goto_1d3

    .line 159
    :pswitch_115  #0xb
    sget-object v9, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->ATTRIBUTE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 160
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_13d

    const-string p0, "Malformed Attribute line: "

    .line 161
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_132

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_138

    :cond_132
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_138
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 165
    :cond_13d
    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 167
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/base/Strings;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_156

    .line 170
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto/16 :goto_1d3

    .line 172
    :cond_156
    invoke-virtual {v5, v6, v7}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    goto/16 :goto_1d3

    :pswitch_15b  #0xa
    if-nez v5, :cond_162

    .line 152
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto/16 :goto_1d3

    .line 154
    :cond_162
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    goto/16 :goto_1d3

    .line 147
    :pswitch_167  #0x9
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setTiming(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto/16 :goto_1d3

    :pswitch_16c  #0x8
    const-string v6, ":\\s?"

    .line 134
    invoke-static {v7, v6}, Lcom/google/android/exoplayer2/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 135
    array-length v7, v6

    if-ne v7, v10, :cond_177

    const/4 v7, 0x1

    goto :goto_178

    :cond_177
    const/4 v7, 0x0

    :goto_178
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 136
    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v5, :cond_189

    mul-int/lit16 v6, v6, 0x3e8

    .line 140
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setBitrate(I)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    :cond_189
    mul-int/lit16 v6, v6, 0x3e8

    .line 142
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->setBitrate(I)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    goto :goto_1d3

    :pswitch_18f  #0x7
    if-nez v5, :cond_195

    .line 127
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setConnection(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    .line 129
    :cond_195
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->setConnection(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    goto :goto_1d3

    .line 122
    :pswitch_199  #0x6
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    .line 118
    :pswitch_19d  #0x5
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setEmailAddress(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    .line 114
    :pswitch_1a1  #0x4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    :pswitch_1a9  #0x3
    if-nez v5, :cond_1af

    .line 107
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setSessionInfo(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    .line 109
    :cond_1af
    invoke-virtual {v5, v7}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;->setMediaTitle(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    goto :goto_1d3

    .line 102
    :pswitch_1b3  #0x2
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setSessionName(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    .line 98
    :pswitch_1b7  #0x1
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->setOrigin(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;

    goto :goto_1d3

    :pswitch_1bb  #0x0
    const-string v6, "0"

    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    goto :goto_1d3

    :cond_1c4
    new-array p0, v8, [Ljava/lang/Object;

    aput-object v7, p0, v2

    const-string v0, "SDP version %s is not supported."

    .line 93
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 92
    invoke-static {p0, v3}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :goto_1d3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    :cond_1d7
    if-eqz v5, :cond_1dc

    .line 190
    invoke-static {v0, v5}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->addMediaDescriptionToSession(Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;)V

    .line 194
    :cond_1dc
    :try_start_1dc
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/rtsp/SessionDescription$Builder;->build()Lcom/google/android/exoplayer2/source/rtsp/SessionDescription;

    move-result-object p0
    :try_end_1e0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1dc .. :try_end_1e0} :catch_1e3
    .catch Ljava/lang/IllegalStateException; {:try_start_1dc .. :try_end_1e0} :catch_1e1

    return-object p0

    :catch_1e1
    move-exception p0

    goto :goto_1e4

    :catch_1e3
    move-exception p0

    .line 196
    :goto_1e4
    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_1ea
    .packed-switch 0x61
        :pswitch_fb  #00000061
        :pswitch_f0  #00000062
        :pswitch_e6  #00000063
        :pswitch_62  #00000064
        :pswitch_dc  #00000065
        :pswitch_62  #00000066
        :pswitch_62  #00000067
        :pswitch_62  #00000068
        :pswitch_d2  #00000069
        :pswitch_62  #0000006a
        :pswitch_c7  #0000006b
        :pswitch_62  #0000006c
        :pswitch_bc  #0000006d
        :pswitch_62  #0000006e
        :pswitch_b2  #0000006f
        :pswitch_a8  #00000070
        :pswitch_62  #00000071
        :pswitch_9d  #00000072
        :pswitch_92  #00000073
        :pswitch_86  #00000074
        :pswitch_7b  #00000075
        :pswitch_70  #00000076
        :pswitch_62  #00000077
        :pswitch_62  #00000078
        :pswitch_62  #00000079
        :pswitch_64  #0000007a
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_1bb  #00000000
        :pswitch_1b7  #00000001
        :pswitch_1b3  #00000002
        :pswitch_1a9  #00000003
        :pswitch_1a1  #00000004
        :pswitch_19d  #00000005
        :pswitch_199  #00000006
        :pswitch_18f  #00000007
        :pswitch_16c  #00000008
        :pswitch_167  #00000009
        :pswitch_15b  #0000000a
        :pswitch_115  #0000000b
        :pswitch_10a  #0000000c
    .end packed-switch
.end method

.method private static parseMediaDescriptionLine(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/google/android/exoplayer2/source/rtsp/SessionDescriptionParser;->MEDIA_DESCRIPTION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Malformed SDP media description line: "

    if-nez v1, :cond_28

    .line 215
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    :cond_1d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_22
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_28
    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x2

    .line 219
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    .line 220
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x4

    .line 221
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    :try_start_54
    new-instance v5, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v5, v1, v3, v4, v0}, Lcom/google/android/exoplayer2/source/rtsp/MediaDescription$Builder;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_54 .. :try_end_61} :catch_62

    return-object v5

    :catch_62
    move-exception v0

    .line 230
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_77

    :cond_72
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_77
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method
