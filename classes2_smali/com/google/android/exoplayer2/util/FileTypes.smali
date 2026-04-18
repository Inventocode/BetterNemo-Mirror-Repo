.class public final Lcom/google/android/exoplayer2/util/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/FileTypes$Type;
    }
.end annotation


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBVTT:I = 0xd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .registers 18

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 130
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x1

    const/16 v16, 0x0

    sparse-switch v2, :sswitch_data_174

    :goto_28
    const/4 v1, -0x1

    goto/16 :goto_161

    :sswitch_2b
    const-string v2, "video/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto :goto_28

    :cond_34
    const/16 v1, 0x17

    goto/16 :goto_161

    :sswitch_38
    const-string v2, "audio/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    goto :goto_28

    :cond_41
    const/16 v1, 0x16

    goto/16 :goto_161

    :sswitch_45
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_28

    :cond_4e
    const/16 v1, 0x15

    goto/16 :goto_161

    :sswitch_52
    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_28

    :cond_5b
    const/16 v1, 0x14

    goto/16 :goto_161

    :sswitch_5f
    const-string v2, "audio/eac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto :goto_28

    :cond_68
    const/16 v1, 0x13

    goto/16 :goto_161

    :sswitch_6c
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_28

    :cond_75
    const/16 v1, 0x12

    goto/16 :goto_161

    :sswitch_79
    const-string v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    goto :goto_28

    :cond_82
    const/16 v1, 0x11

    goto/16 :goto_161

    :sswitch_86
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    goto :goto_28

    :cond_8f
    const/16 v1, 0x10

    goto/16 :goto_161

    :sswitch_93
    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    goto :goto_28

    :cond_9c
    const/16 v1, 0xf

    goto/16 :goto_161

    :sswitch_a0
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto/16 :goto_28

    :cond_aa
    const/16 v1, 0xe

    goto/16 :goto_161

    :sswitch_ae
    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    goto/16 :goto_28

    :cond_b8
    const/16 v1, 0xd

    goto/16 :goto_161

    :sswitch_bc
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c6

    goto/16 :goto_28

    :cond_c6
    const/16 v1, 0xc

    goto/16 :goto_161

    :sswitch_ca
    const-string v2, "audio/ac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d4

    goto/16 :goto_28

    :cond_d4
    const/16 v1, 0xb

    goto/16 :goto_161

    :sswitch_d8
    const-string v2, "video/x-flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e2

    goto/16 :goto_28

    :cond_e2
    const/16 v1, 0xa

    goto/16 :goto_161

    :sswitch_e6
    const-string v2, "application/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f0

    goto/16 :goto_28

    :cond_f0
    const/16 v1, 0x9

    goto/16 :goto_161

    :sswitch_f4
    const-string v2, "audio/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    goto/16 :goto_28

    :cond_fe
    const/16 v1, 0x8

    goto/16 :goto_161

    :sswitch_102
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10c

    goto/16 :goto_28

    :cond_10c
    const/4 v1, 0x7

    goto :goto_161

    :sswitch_10e
    const-string v2, "application/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_118

    goto/16 :goto_28

    :cond_118
    const/4 v1, 0x6

    goto :goto_161

    :sswitch_11a
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_124

    goto/16 :goto_28

    :cond_124
    const/4 v1, 0x5

    goto :goto_161

    :sswitch_126
    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_130

    goto/16 :goto_28

    :cond_130
    const/4 v1, 0x4

    goto :goto_161

    :sswitch_132
    const-string v2, "video/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    goto/16 :goto_28

    :cond_13c
    const/4 v1, 0x3

    goto :goto_161

    :sswitch_13e
    const-string v2, "video/mp2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_148

    goto/16 :goto_28

    :cond_148
    const/4 v1, 0x2

    goto :goto_161

    :sswitch_14a
    const-string v2, "video/mp2p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_154

    goto/16 :goto_28

    :cond_154
    const/4 v1, 0x1

    goto :goto_161

    :sswitch_156
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_160

    goto/16 :goto_28

    :cond_160
    const/4 v1, 0x0

    :goto_161
    packed-switch v1, :pswitch_data_1d6

    return v0

    :pswitch_165  #0x15
    return v10

    :pswitch_166  #0x14
    return v13

    :pswitch_167  #0x10
    return v5

    :pswitch_168  #0xf
    return v8

    :pswitch_169  #0xc
    return v15

    :pswitch_16a  #0xa
    return v12

    :pswitch_16b  #0x7
    return v4

    :pswitch_16c  #0x6, 0xe, 0x11
    return v9

    :pswitch_16d  #0x5
    return v3

    :pswitch_16e  #0x4, 0xd, 0x12
    return v14

    :pswitch_16f  #0x3, 0x8, 0x9, 0x16, 0x17
    return v11

    :pswitch_170  #0x2
    return v6

    :pswitch_171  #0x1
    return v7

    :pswitch_172  #0x0, 0xb, 0x13
    return v16

    nop

    :sswitch_data_174
    .sparse-switch
        -0x7e929daa -> :sswitch_156
        -0x6315f78b -> :sswitch_14a
        -0x6315f787 -> :sswitch_13e
        -0x63118f53 -> :sswitch_132
        -0x5fc6f775 -> :sswitch_126
        -0x58a7d764 -> :sswitch_11a
        -0x4a681e4e -> :sswitch_10e
        -0x3be2f26c -> :sswitch_102
        -0x17118226 -> :sswitch_f4
        -0x2974308 -> :sswitch_e6
        0xd45707 -> :sswitch_d8
        0xb269698 -> :sswitch_ca
        0xb269699 -> :sswitch_bc
        0xb26980d -> :sswitch_ae
        0xb26c538 -> :sswitch_a0
        0xb26cbd6 -> :sswitch_93
        0xb26e933 -> :sswitch_86
        0x4f62635d -> :sswitch_79
        0x59976a2d -> :sswitch_6c
        0x59ae0c65 -> :sswitch_5f
        0x59aeaa01 -> :sswitch_52
        0x59b1e81e -> :sswitch_45
        0x59b64a32 -> :sswitch_38
        0x79909c15 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_172  #00000000
        :pswitch_171  #00000001
        :pswitch_170  #00000002
        :pswitch_16f  #00000003
        :pswitch_16e  #00000004
        :pswitch_16d  #00000005
        :pswitch_16c  #00000006
        :pswitch_16b  #00000007
        :pswitch_16f  #00000008
        :pswitch_16f  #00000009
        :pswitch_16a  #0000000a
        :pswitch_172  #0000000b
        :pswitch_169  #0000000c
        :pswitch_16e  #0000000d
        :pswitch_16c  #0000000e
        :pswitch_168  #0000000f
        :pswitch_167  #00000010
        :pswitch_16c  #00000011
        :pswitch_16e  #00000012
        :pswitch_172  #00000013
        :pswitch_166  #00000014
        :pswitch_165  #00000015
        :pswitch_16f  #00000016
        :pswitch_16f  #00000017
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 114
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_19

    .line 116
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x0

    .line 117
    :goto_1a
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .registers 7

    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string v1, ".ac3"

    .line 181
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13d

    const-string v1, ".ec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_13d

    :cond_1a
    const-string v1, ".ac4"

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string v1, ".adts"

    .line 185
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13b

    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_13b

    :cond_36
    const-string v1, ".amr"

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p0, 0x3

    return p0

    :cond_40
    const-string v1, ".flac"

    .line 189
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    const-string v1, ".flv"

    .line 191
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_54

    return v3

    .line 195
    :cond_54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v4, ".mk"

    .line 193
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_139

    const-string v1, ".webm"

    .line 196
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    goto/16 :goto_139

    :cond_6b
    const-string v1, ".mp3"

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    const/4 p0, 0x7

    return p0

    :cond_75
    const-string v1, ".mp4"

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_136

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const-string v5, ".m4"

    .line 201
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_136

    .line 206
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 204
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_136

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const-string v3, ".cmf"

    .line 207
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a4

    goto/16 :goto_136

    .line 213
    :cond_a4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ".og"

    .line 211
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_133

    const-string v1, ".opus"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    goto/16 :goto_133

    :cond_bb
    const-string v1, ".ps"

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, ".mpeg"

    .line 217
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, ".mpg"

    .line 218
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_130

    const-string v1, ".m2p"

    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    goto :goto_130

    :cond_dc
    const-string v1, ".ts"

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12d

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 222
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f0

    goto :goto_12d

    :cond_f0
    const-string v1, ".wav"

    .line 226
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string v1, ".wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_101

    goto :goto_12a

    :cond_101
    const-string v1, ".vtt"

    .line 228
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_127

    const-string v1, ".webvtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_112

    goto :goto_127

    :cond_112
    const-string v1, ".jpg"

    .line 230
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_124

    const-string v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_123

    goto :goto_124

    :cond_123
    return v0

    :cond_124
    :goto_124
    const/16 p0, 0xe

    return p0

    :cond_127
    :goto_127
    const/16 p0, 0xd

    return p0

    :cond_12a
    :goto_12a
    const/16 p0, 0xc

    return p0

    :cond_12d
    :goto_12d
    const/16 p0, 0xb

    return p0

    :cond_130
    :goto_130
    const/16 p0, 0xa

    return p0

    :cond_133
    :goto_133
    const/16 p0, 0x9

    return p0

    :cond_136
    :goto_136
    const/16 p0, 0x8

    return p0

    :cond_139
    :goto_139
    const/4 p0, 0x6

    return p0

    :cond_13b
    :goto_13b
    const/4 p0, 0x2

    return p0

    :cond_13d
    :goto_13d
    const/4 p0, 0x0

    return p0
.end method
