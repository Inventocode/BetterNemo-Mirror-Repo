.class public final Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultTsPayloadReaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory$Flags;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_TAG_CAPTION_SERVICE:I = 0x86

.field public static final FLAG_ALLOW_NON_IDR_KEYFRAMES:I = 0x1

.field public static final FLAG_DETECT_ACCESS_UNITS:I = 0x8

.field public static final FLAG_ENABLE_HDMV_DTS_AUDIO_STREAMS:I = 0x40

.field public static final FLAG_IGNORE_AAC_STREAM:I = 0x2

.field public static final FLAG_IGNORE_H264_STREAM:I = 0x4

.field public static final FLAG_IGNORE_SPLICE_INFO_STREAM:I = 0x10

.field public static final FLAG_OVERRIDE_CAPTION_DESCRIPTORS:I = 0x20


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final flags:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 113
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    .line 128
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;
    .registers 3

    .line 203
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/SeiReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;
    .registers 3

    .line 216
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private getClosedCaptionFormats(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x20

    .line 229
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 230
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    return-object p1

    .line 232
    :cond_b
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->descriptorBytes:[B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 233
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->closedCaptionFormats:Ljava/util/List;

    .line 234
    :goto_14
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-lez v1, :cond_8d

    .line 235
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 236
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 237
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x86

    if-ne v1, v2, :cond_89

    .line 240
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_38
    if-ge v4, v1, :cond_89

    const/4 v5, 0x3

    .line 243
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    and-int/lit16 v7, v6, 0x80

    const/4 v8, 0x1

    if-eqz v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v7, 0x0

    :goto_4b
    if-eqz v7, :cond_52

    and-int/lit8 v6, v6, 0x3f

    const-string v9, "application/cea-708"

    goto :goto_55

    :cond_52
    const-string v9, "application/cea-608"

    const/4 v6, 0x1

    .line 257
    :goto_55
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v10

    int-to-byte v10, v10

    .line 259
    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v11, 0x0

    if-eqz v7, :cond_6a

    and-int/lit8 v7, v10, 0x40

    if-eqz v7, :cond_65

    goto :goto_66

    :cond_65
    const/4 v8, 0x0

    .line 266
    :goto_66
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->buildCea708InitializationData(Z)Ljava/util/List;

    move-result-object v11

    .line 269
    :cond_6a
    new-instance v7, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v7}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 271
    invoke-virtual {v7, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v7

    .line 272
    invoke-virtual {v7, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 273
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAccessibilityChannel(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 274
    invoke-virtual {v5, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 275
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    .line 269
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 280
    :cond_89
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_14

    :cond_8d
    return-object p1
.end method

.method private isSet(I)Z
    .registers 3

    .line 287
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method


# virtual methods
.method public createInitialPayloadReaders()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public createPayloadReader(ILcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader;
    .registers 7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_115

    const/4 v1, 0x3

    if-eq p1, v1, :cond_108

    const/4 v1, 0x4

    if-eq p1, v1, :cond_108

    const/16 v2, 0x15

    if-eq p1, v2, :cond_fd

    const/16 v2, 0x1b

    const/4 v3, 0x0

    if-eq p1, v2, :cond_dc

    const/16 v1, 0x24

    if-eq p1, v1, :cond_cd

    const/16 v1, 0x59

    if-eq p1, v1, :cond_c0

    const/16 v1, 0x8a

    if-eq p1, v1, :cond_b3

    const/16 v1, 0xac

    if-eq p1, v1, :cond_a6

    const/16 v1, 0x101

    if-eq p1, v1, :cond_99

    const/16 v1, 0x86

    if-eq p1, v1, :cond_83

    const/16 v1, 0x87

    if-eq p1, v1, :cond_76

    packed-switch p1, :pswitch_data_124

    packed-switch p1, :pswitch_data_12e

    return-object v3

    :pswitch_35  #0x82
    const/16 p1, 0x40

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-nez p1, :cond_b3

    return-object v3

    .line 148
    :pswitch_3e  #0x11
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_51

    .line 150
    :cond_45
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/LatmReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_51
    return-object v3

    .line 167
    :pswitch_52  #0x10
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H263Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 144
    :pswitch_61  #0xf
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_68

    goto :goto_75

    .line 146
    :cond_68
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v0, 0x0

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(ZLjava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_75
    return-object v3

    .line 153
    :cond_76
    :pswitch_76  #0x81
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :cond_83
    const/16 p1, 0x10

    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_8c

    goto :goto_98

    .line 181
    :cond_8c
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string p2, "application/x-scte35"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    :goto_98
    return-object v3

    .line 187
    :cond_99
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;

    const-string v0, "application/vnd.dvb.ait"

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/SectionReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;)V

    return-object p1

    .line 155
    :cond_a6
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/Ac4Reader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 162
    :cond_b3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DtsReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 185
    :cond_c0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->dvbSubtitleInfos:Ljava/util/List;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DvbSubtitleReader;-><init>(Ljava/util/List;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 177
    :cond_cd
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H265Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 169
    :cond_dc
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result p1

    if-eqz p1, :cond_e3

    goto :goto_fc

    .line 171
    :cond_e3
    new-instance v3, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;

    .line 173
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildSeiReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/SeiReader;

    move-result-object p2

    const/4 v0, 0x1

    .line 174
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v0

    const/16 v1, 0x8

    .line 175
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->isSet(I)Z

    move-result v1

    invoke-direct {p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/ts/H264Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/SeiReader;ZZ)V

    invoke-direct {v3, p1}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    :goto_fc
    return-object v3

    .line 183
    :cond_fd
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance p2, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/ts/Id3Reader;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 142
    :cond_108
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;->language:Ljava/lang/String;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    .line 165
    :cond_115
    :pswitch_115  #0x80
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/PesReader;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/extractor/ts/DefaultTsPayloadReaderFactory;->buildUserDataReader(Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$EsInfo;)Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/extractor/ts/H262Reader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/UserDataReader;)V

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/PesReader;-><init>(Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;)V

    return-object p1

    :pswitch_data_124
    .packed-switch 0xf
        :pswitch_61  #0000000f
        :pswitch_52  #00000010
        :pswitch_3e  #00000011
    .end packed-switch

    :pswitch_data_12e
    .packed-switch 0x80
        :pswitch_115  #00000080
        :pswitch_76  #00000081
        :pswitch_35  #00000082
    .end packed-switch
.end method
