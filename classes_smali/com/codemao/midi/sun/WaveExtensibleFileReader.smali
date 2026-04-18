.class public Lcom/codemao/midi/sun/WaveExtensibleFileReader;
.super Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;
.source "WaveExtensibleFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;
    }
.end annotation


# static fields
.field private static SUBTYPE_IEEE_FLOAT:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

.field private static SUBTYPE_PCM:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

.field private static allchannelnames:[Ljava/lang/String;

.field private static channelnames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 65

    const-string v0, "FL"

    const-string v1, "FR"

    const-string v2, "FC"

    const-string v3, "LF"

    const-string v4, "BL"

    const-string v5, "BR"

    const-string v6, "FLC"

    const-string v7, "FLR"

    const-string v8, "BC"

    const-string v9, "SL"

    const-string v10, "SR"

    const-string v11, "TC"

    const-string v12, "TFL"

    const-string v13, "TFC"

    const-string v14, "TFR"

    const-string v15, "TBL"

    const-string v16, "TBC"

    const-string v17, "TBR"

    .line 143
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    const-string v1, "w1"

    const-string v2, "w2"

    const-string v3, "w3"

    const-string v4, "w4"

    const-string v5, "w5"

    const-string v6, "w6"

    const-string v7, "w7"

    const-string v8, "w8"

    const-string v9, "w9"

    const-string v10, "w10"

    const-string v11, "w11"

    const-string v12, "w12"

    const-string v13, "w13"

    const-string v14, "w14"

    const-string v15, "w15"

    const-string v16, "w16"

    const-string v17, "w17"

    const-string v18, "w18"

    const-string v19, "w19"

    const-string v20, "w20"

    const-string v21, "w21"

    const-string v22, "w22"

    const-string v23, "w23"

    const-string v24, "w24"

    const-string v25, "w25"

    const-string v26, "w26"

    const-string v27, "w27"

    const-string v28, "w28"

    const-string v29, "w29"

    const-string v30, "w30"

    const-string v31, "w31"

    const-string v32, "w32"

    const-string v33, "w33"

    const-string v34, "w34"

    const-string v35, "w35"

    const-string v36, "w36"

    const-string v37, "w37"

    const-string v38, "w38"

    const-string v39, "w39"

    const-string v40, "w40"

    const-string v41, "w41"

    const-string v42, "w42"

    const-string v43, "w43"

    const-string v44, "w44"

    const-string v45, "w45"

    const-string v46, "w46"

    const-string v47, "w47"

    const-string v48, "w48"

    const-string v49, "w49"

    const-string v50, "w50"

    const-string v51, "w51"

    const-string v52, "w52"

    const-string v53, "w53"

    const-string v54, "w54"

    const-string v55, "w55"

    const-string v56, "w56"

    const-string v57, "w57"

    const-string v58, "w58"

    const-string v59, "w59"

    const-string v60, "w60"

    const-string v61, "w61"

    const-string v62, "w62"

    const-string v63, "w63"

    const-string v64, "w64"

    .line 149
    filled-new-array/range {v1 .. v64}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xaa

    const/4 v10, 0x0

    const/16 v11, 0x38

    const/16 v12, 0x9b

    const/16 v13, 0x71

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;-><init>(JIIIIIIIIII)V

    sput-object v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->SUBTYPE_PCM:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    .line 161
    new-instance v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    const-wide/16 v15, 0x3

    const/16 v17, 0x0

    const/16 v18, 0x10

    const/16 v19, 0x80

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xaa

    const/16 v23, 0x0

    const/16 v24, 0x38

    const/16 v25, 0x9b

    const/16 v26, 0x71

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;-><init>(JIIIIIIIIII)V

    sput-object v0, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->SUBTYPE_IEEE_FLOAT:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/codemao/midi/javax/sampled/spi/AudioFileReader;-><init>()V

    return-void
.end method

.method private decodeChannelMask(J)Ljava/lang/String;
    .registers 13

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    .line 167
    :goto_9
    sget-object v5, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_51

    and-long v5, p1, v2

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_4a

    .line 169
    sget-object v5, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    array-length v5, v5

    const-string v6, " "

    if-ge v4, v5, :cond_34

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->channelnames:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4a

    .line 172
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->allchannelnames:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4a
    :goto_4a
    const-wide/16 v5, 0x2

    mul-long v2, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 177
    :cond_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-nez p1, :cond_59

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private internal_getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/codemao/midi/sun/RIFFReader;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 200
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 202
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-wide v9, v4

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    .line 217
    :cond_2a
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result v15

    if-eqz v15, :cond_9c

    .line 218
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object v15

    .line 220
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fmt "

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 223
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    const v2, 0xfffe

    if-ne v1, v2, :cond_83

    .line 227
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v13

    .line 228
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v1

    .line 229
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    .line 230
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v14

    .line 231
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v12

    .line 232
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v3

    const/16 v6, 0x16

    if-ne v3, v6, :cond_7d

    .line 235
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v3

    if-gt v3, v12, :cond_77

    .line 238
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v6

    .line 239
    invoke-static {v15}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->read(Lcom/codemao/midi/sun/RIFFReader;)Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    move-result-object v8

    move v11, v3

    move-wide v9, v6

    move-object v3, v8

    const/4 v8, 0x1

    goto :goto_89

    .line 237
    :cond_77
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 234
    :cond_7d
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 225
    :cond_83
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    .line 242
    :cond_89
    :goto_89
    invoke-virtual {v15}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    move v15, v12

    move/from16 v16, v13

    move/from16 v17, v14

    const/4 v6, 0x1

    goto :goto_a2

    :cond_9c
    move v15, v12

    move/from16 v16, v13

    move/from16 v17, v14

    const/4 v6, 0x0

    :goto_a2
    if-eqz v8, :cond_12b

    if-eqz v6, :cond_123

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v6, p0

    .line 254
    invoke-direct {v6, v9, v10}, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->decodeChannelMask(J)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b8

    const-string v8, "channelOrder"

    .line 256
    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b8
    cmp-long v7, v9, v4

    if-eqz v7, :cond_c5

    .line 258
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "channelMask"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_c5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "validBitsPerSample"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v4, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->SUBTYPE_PCM:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fc

    const/16 v3, 0x8

    if-ne v15, v3, :cond_eb

    .line 266
    new-instance v3, Lcom/codemao/midi/javax/sampled/AudioFormat;

    sget-object v13, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_UNSIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    long-to-float v1, v1

    const/16 v19, 0x0

    move-object v12, v3

    move v14, v1

    move/from16 v18, v1

    move-object/from16 v20, v0

    invoke-direct/range {v12 .. v20}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    goto :goto_114

    .line 270
    :cond_eb
    new-instance v3, Lcom/codemao/midi/javax/sampled/AudioFormat;

    sget-object v13, Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;->PCM_SIGNED:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    long-to-float v1, v1

    const/16 v19, 0x0

    move-object v12, v3

    move v14, v1

    move/from16 v18, v1

    move-object/from16 v20, v0

    invoke-direct/range {v12 .. v20}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    goto :goto_114

    .line 273
    :cond_fc
    sget-object v4, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->SUBTYPE_IEEE_FLOAT:Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;

    invoke-virtual {v3, v4}, Lcom/codemao/midi/sun/WaveExtensibleFileReader$GUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 274
    new-instance v3, Lcom/codemao/midi/javax/sampled/AudioFormat;

    sget-object v13, Lcom/codemao/midi/sun/AudioFloatConverter;->PCM_FLOAT:Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;

    long-to-float v1, v1

    const/16 v19, 0x0

    move-object v12, v3

    move v14, v1

    move/from16 v18, v1

    move-object/from16 v20, v0

    invoke-direct/range {v12 .. v20}, Lcom/codemao/midi/javax/sampled/AudioFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFormat$Encoding;FIIIFZLjava/util/Map;)V

    .line 279
    :goto_114
    new-instance v0, Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    sget-object v1, Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;->WAVE:Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;-><init>(Lcom/codemao/midi/javax/sampled/AudioFileFormat$Type;Lcom/codemao/midi/javax/sampled/AudioFormat;I)V

    return-object v0

    .line 277
    :cond_11d
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    :cond_123
    move-object/from16 v6, p0

    .line 251
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    :cond_12b
    move-object/from16 v6, p0

    .line 249
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    :cond_133
    move-object/from16 v6, p0

    .line 203
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0

    :cond_13b
    move-object/from16 v6, p0

    .line 201
    new-instance v0, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {v0}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc8

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 189
    :try_start_5
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->internal_getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 191
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    return-object v0

    :catchall_d
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 192
    throw v0
.end method

.method public getAudioInputStream(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lcom/codemao/midi/sun/WaveExtensibleFileReader;->getAudioFileFormat(Ljava/io/InputStream;)Lcom/codemao/midi/javax/sampled/AudioFileFormat;

    move-result-object v0

    .line 289
    new-instance v1, Lcom/codemao/midi/sun/RIFFReader;

    invoke-direct {v1, p1}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 290
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RIFF"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 292
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "WAVE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 294
    :cond_21
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 295
    invoke-virtual {v1}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 297
    new-instance v1, Lcom/codemao/midi/javax/sampled/AudioInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/javax/sampled/AudioFileFormat;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getSize()J

    move-result-wide v2

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/codemao/midi/javax/sampled/AudioInputStream;-><init>(Ljava/io/InputStream;Lcom/codemao/midi/javax/sampled/AudioFormat;J)V

    return-object v1

    .line 301
    :cond_45
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1

    .line 293
    :cond_4b
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1

    .line 291
    :cond_51
    new-instance p1, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;

    invoke-direct {p1}, Lcom/codemao/midi/javax/sampled/UnsupportedAudioFileException;-><init>()V

    throw p1
.end method
