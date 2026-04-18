.class public Lcom/codemao/midi/sun/SF2Soundbank;
.super Ljava/lang/Object;
.source "SF2Soundbank.java"

# interfaces
.implements Lcom/codemao/midi/javax/Soundbank;


# instance fields
.field private instruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2Instrument;",
            ">;"
        }
    .end annotation
.end field

.field private largeFormat:Z

.field private layers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2Layer;",
            ">;"
        }
    .end annotation
.end field

.field private sampleData:Lcom/codemao/midi/sun/ModelByteBuffer;

.field private sampleData24:Lcom/codemao/midi/sun/ModelByteBuffer;

.field private sampleFile:Ljava/io/File;

.field private samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/midi/sun/SF2Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 81
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData24:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 82
    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleFile:Ljava/io/File;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->largeFormat:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->instruments:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->layers:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->samples:Ljava/util/List;

    .line 113
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SF2Soundbank;->readSoundbank(Ljava/io/InputStream;)V

    return-void
.end method

.method private readInfoChunk(Lcom/codemao/midi/sun/RIFFReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 141
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ifil"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 144
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    .line 145
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    goto :goto_0

    :cond_1d
    const-string v2, "isng"

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 147
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto :goto_0

    :cond_2d
    const-string v2, "INAM"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 149
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto :goto_0

    :cond_3d
    const-string v2, "irom"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 151
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto :goto_0

    :cond_4d
    const-string v2, "iver"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 153
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    .line 154
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    goto :goto_0

    :cond_5c
    const-string v2, "ICRD"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 156
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto :goto_0

    :cond_6c
    const-string v2, "IENG"

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 158
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto :goto_0

    :cond_7c
    const-string v2, "IPRD"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 160
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto/16 :goto_0

    :cond_8d
    const-string v2, "ICOP"

    .line 161
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 162
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto/16 :goto_0

    :cond_9e
    const-string v2, "ICMT"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 164
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto/16 :goto_0

    :cond_af
    const-string v2, "ISFT"

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    goto/16 :goto_0

    :cond_c0
    return-void
.end method

.method private readPdtaChunk(Lcom/codemao/midi/sun/RIFFReader;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 238
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    :goto_2a
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_429

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object v9

    .line 243
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v11

    const-string v12, "phdr"

    .line 244
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x14

    const/4 v14, 0x0

    if-eqz v12, :cond_9d

    .line 246
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v10

    rem-int/lit8 v10, v10, 0x26

    if-nez v10, :cond_97

    .line 248
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v10

    div-int/lit8 v10, v10, 0x26

    :goto_52
    if-ge v14, v10, :cond_8e

    .line 250
    new-instance v11, Lcom/codemao/midi/sun/SF2Instrument;

    invoke-direct {v11, v0}, Lcom/codemao/midi/sun/SF2Instrument;-><init>(Lcom/codemao/midi/sun/SF2Soundbank;)V

    .line 251
    invoke-virtual {v9, v13}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/codemao/midi/sun/SF2Instrument;->name:Ljava/lang/String;

    .line 252
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v12

    iput v12, v11, Lcom/codemao/midi/sun/SF2Instrument;->preset:I

    .line 253
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v12

    iput v12, v11, Lcom/codemao/midi/sun/SF2Instrument;->bank:I

    .line 254
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    .line 256
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    .line 257
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    .line 258
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v10, -0x1

    if-eq v14, v12, :cond_8b

    .line 260
    iget-object v12, v0, Lcom/codemao/midi/sun/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8b
    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    :cond_8e
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    :cond_92
    move-object/from16 v19, v3

    :cond_94
    move-object v15, v4

    goto/16 :goto_420

    .line 247
    :cond_97
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_9d
    const-string v12, "pbag"

    .line 262
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17f

    .line 264
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v11

    rem-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_179

    .line 266
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    .line 270
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v12

    .line 271
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v13

    .line 272
    :goto_bb
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v12, :cond_c5

    .line 273
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 274
    :cond_c5
    :goto_c5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v13, :cond_cf

    .line 275
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c5

    :cond_cf
    add-int/lit8 v11, v11, -0x1

    .line 279
    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    :goto_dc
    if-ge v13, v12, :cond_10c

    if-eqz v11, :cond_106

    .line 284
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 285
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v14

    move/from16 v17, v12

    .line 286
    :goto_ea
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v15, :cond_f4

    .line 287
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ea

    .line 288
    :cond_f4
    :goto_f4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v14, :cond_fe

    .line 289
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f4

    :cond_fe
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v17

    const/4 v14, 0x0

    goto :goto_dc

    .line 283
    :cond_106
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_10c
    const/4 v10, 0x0

    .line 293
    :goto_10d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v10, v12, :cond_8e

    add-int/lit8 v12, v10, 0x1

    .line 294
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 295
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    .line 296
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/midi/sun/SF2Instrument;

    const/4 v14, 0x0

    :goto_133
    if-ge v14, v13, :cond_174

    if-eqz v11, :cond_16e

    .line 300
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v15

    move-object/from16 v17, v1

    .line 301
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    move-object/from16 v18, v2

    .line 302
    new-instance v2, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SF2InstrumentRegion;-><init>()V

    move/from16 v19, v12

    .line 303
    iget-object v12, v10, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_14f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v15, :cond_159

    .line 305
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14f

    .line 306
    :cond_159
    :goto_159
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v1, :cond_163

    .line 307
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_159

    :cond_163
    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v12, v19

    goto :goto_133

    .line 299
    :cond_16e
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_174
    move/from16 v19, v12

    move/from16 v10, v19

    goto :goto_10d

    .line 265
    :cond_179
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_17f
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const-string v1, "pmod"

    .line 311
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c5

    const/4 v14, 0x0

    .line 313
    :goto_18c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_92

    .line 314
    new-instance v1, Lcom/codemao/midi/sun/SF2Modulator;

    invoke-direct {v1}, Lcom/codemao/midi/sun/SF2Modulator;-><init>()V

    .line 315
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->sourceOperator:I

    .line 316
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->destinationOperator:I

    .line 317
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->amount:S

    .line 318
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->amountSourceOperator:I

    .line 319
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->transportOperator:I

    .line 320
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    if-eqz v2, :cond_1c2

    .line 322
    iget-object v2, v2, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c2
    add-int/lit8 v14, v14, 0x1

    goto :goto_18c

    :cond_1c5
    const-string v1, "pgen"

    .line 324
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    const/4 v14, 0x0

    .line 326
    :goto_1ce
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_92

    .line 327
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    .line 328
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readShort()S

    move-result v2

    .line 329
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    if-eqz v10, :cond_1f1

    .line 331
    iget-object v10, v10, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1ce

    :cond_1f4
    const-string v1, "inst"

    .line 333
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_238

    .line 335
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x16

    if-nez v1, :cond_232

    .line 337
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x16

    const/4 v14, 0x0

    :goto_20b
    if-ge v14, v1, :cond_92

    .line 339
    new-instance v2, Lcom/codemao/midi/sun/SF2Layer;

    invoke-direct {v2, v0}, Lcom/codemao/midi/sun/SF2Layer;-><init>(Lcom/codemao/midi/sun/SF2Soundbank;)V

    .line 340
    invoke-virtual {v9, v13}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v2, Lcom/codemao/midi/sun/SF2Layer;->name:Ljava/lang/String;

    .line 341
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v1, -0x1

    if-eq v14, v10, :cond_22f

    .line 344
    iget-object v10, v0, Lcom/codemao/midi/sun/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22f
    add-int/lit8 v14, v14, 0x1

    goto :goto_20b

    .line 336
    :cond_232
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_238
    const-string v1, "ibag"

    .line 346
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30e

    .line 348
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_308

    .line 350
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    .line 354
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    .line 355
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v11

    .line 356
    :goto_256
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    if-ge v12, v2, :cond_260

    .line 357
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_256

    .line 358
    :cond_260
    :goto_260
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v11, :cond_26a

    .line 359
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_260

    :cond_26a
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    .line 363
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x0

    :goto_278
    if-ge v12, v11, :cond_2a3

    if-eqz v1, :cond_29d

    .line 368
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v13

    .line 369
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v14

    .line 370
    :goto_284
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v15, v13, :cond_28e

    .line 371
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_284

    .line 372
    :cond_28e
    :goto_28e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v13, v14, :cond_298

    .line 373
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28e

    :cond_298
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_278

    .line 367
    :cond_29d
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_2a3
    const/4 v10, 0x0

    .line 377
    :goto_2a4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_92

    add-int/lit8 v11, v10, 0x1

    .line 378
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v12, v13

    .line 379
    iget-object v13, v0, Lcom/codemao/midi/sun/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/codemao/midi/sun/SF2Layer;

    const/4 v13, 0x0

    :goto_2cc
    if-ge v13, v12, :cond_306

    if-eqz v1, :cond_300

    .line 383
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v14

    .line 384
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v15

    .line 385
    new-instance v2, Lcom/codemao/midi/sun/SF2LayerRegion;

    invoke-direct {v2}, Lcom/codemao/midi/sun/SF2LayerRegion;-><init>()V

    move-object/from16 v19, v3

    .line 386
    iget-object v3, v10, Lcom/codemao/midi/sun/SF2Layer;->regions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :goto_2e4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v14, :cond_2ee

    .line 388
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e4

    .line 389
    :cond_2ee
    :goto_2ee
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v15, :cond_2f8

    .line 390
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2ee

    :cond_2f8
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v19

    const/4 v2, 0x0

    goto :goto_2cc

    .line 382
    :cond_300
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_306
    move v10, v11

    goto :goto_2a4

    .line 349
    :cond_308
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :cond_30e
    move-object/from16 v19, v3

    const-string v1, "imod"

    .line 395
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_352

    const/4 v14, 0x0

    .line 397
    :goto_319
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_94

    .line 398
    new-instance v1, Lcom/codemao/midi/sun/SF2Modulator;

    invoke-direct {v1}, Lcom/codemao/midi/sun/SF2Modulator;-><init>()V

    .line 399
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->sourceOperator:I

    .line 400
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->destinationOperator:I

    .line 401
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readShort()S

    move-result v2

    iput-short v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->amount:S

    .line 402
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->amountSourceOperator:I

    .line 403
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v2

    iput v2, v1, Lcom/codemao/midi/sun/SF2Modulator;->transportOperator:I

    .line 404
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2LayerRegion;

    if-eqz v2, :cond_34f

    .line 406
    iget-object v2, v2, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34f
    add-int/lit8 v14, v14, 0x1

    goto :goto_319

    :cond_352
    const-string v1, "igen"

    .line 408
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_381

    const/4 v14, 0x0

    .line 410
    :goto_35b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_94

    .line 411
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    move-result v1

    .line 412
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readShort()S

    move-result v2

    .line 413
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/midi/sun/SF2LayerRegion;

    if-eqz v3, :cond_37e

    .line 415
    iget-object v3, v3, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37e
    add-int/lit8 v14, v14, 0x1

    goto :goto_35b

    :cond_381
    const-string v1, "shdr"

    .line 417
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 419
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2e

    if-nez v1, :cond_41a

    .line 421
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    div-int/lit8 v1, v1, 0x2e

    const/4 v14, 0x0

    :goto_398
    if-ge v14, v1, :cond_94

    .line 423
    new-instance v2, Lcom/codemao/midi/sun/SF2Sample;

    invoke-direct {v2, v0}, Lcom/codemao/midi/sun/SF2Sample;-><init>(Lcom/codemao/midi/javax/Soundbank;)V

    .line 424
    invoke-virtual {v9, v13}, Lcom/codemao/midi/sun/RIFFReader;->readString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/midi/sun/SF2Sample;->name:Ljava/lang/String;

    .line 425
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v10

    .line 426
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v23

    .line 427
    iget-object v3, v0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData:Lcom/codemao/midi/sun/ModelByteBuffer;

    const-wide/16 v15, 0x2

    mul-long v26, v10, v15

    mul-long v28, v23, v15

    const/16 v30, 0x1

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v30}, Lcom/codemao/midi/sun/ModelByteBuffer;->subbuffer(JJZ)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/midi/sun/SF2Sample;->data:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 428
    iget-object v3, v0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData24:Lcom/codemao/midi/sun/ModelByteBuffer;

    if-eqz v3, :cond_3cf

    const/16 v25, 0x1

    move-object/from16 v20, v3

    move-wide/from16 v21, v10

    .line 429
    invoke-virtual/range {v20 .. v25}, Lcom/codemao/midi/sun/ModelByteBuffer;->subbuffer(JJZ)Lcom/codemao/midi/sun/ModelByteBuffer;

    move-result-object v3

    iput-object v3, v2, Lcom/codemao/midi/sun/SF2Sample;->data24:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 437
    :cond_3cf
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v15

    move v12, v14

    sub-long v13, v15, v10

    iput-wide v13, v2, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    .line 438
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v13

    sub-long/2addr v13, v10

    iput-wide v13, v2, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    .line 439
    iget-wide v10, v2, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    move-object v15, v4

    const-wide/16 v3, -0x1

    const-wide/16 v20, 0x0

    cmp-long v22, v10, v20

    if-gez v22, :cond_3ec

    .line 440
    iput-wide v3, v2, Lcom/codemao/midi/sun/SF2Sample;->startLoop:J

    :cond_3ec
    cmp-long v10, v13, v20

    if-gez v10, :cond_3f2

    .line 442
    iput-wide v3, v2, Lcom/codemao/midi/sun/SF2Sample;->endLoop:J

    .line 443
    :cond_3f2
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedInt()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/codemao/midi/sun/SF2Sample;->sampleRate:J

    .line 444
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/codemao/midi/sun/SF2Sample;->originalPitch:I

    .line 445
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/codemao/midi/sun/SF2Sample;->pitchCorrection:B

    .line 446
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    .line 447
    invoke-virtual {v9}, Lcom/codemao/midi/sun/RIFFReader;->readUnsignedShort()I

    add-int/lit8 v3, v1, -0x1

    if-eq v12, v3, :cond_413

    .line 449
    iget-object v3, v0, Lcom/codemao/midi/sun/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_413
    add-int/lit8 v14, v12, 0x1

    move-object v4, v15

    const/16 v13, 0x14

    goto/16 :goto_398

    .line 420
    :cond_41a
    new-instance v1, Lcom/codemao/midi/sun/RIFFInvalidDataException;

    invoke-direct {v1}, Lcom/codemao/midi/sun/RIFFInvalidDataException;-><init>()V

    throw v1

    :goto_420
    move-object v4, v15

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    goto/16 :goto_2a

    .line 454
    :cond_429
    iget-object v1, v0, Lcom/codemao/midi/sun/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    :cond_42f
    :goto_42f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49c

    .line 456
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Layer;

    .line 457
    iget-object v3, v2, Lcom/codemao/midi/sun/SF2Layer;->regions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v10

    .line 459
    :goto_442
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_482

    .line 460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/sun/SF2LayerRegion;

    .line 461
    iget-object v6, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    const/16 v7, 0x35

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_480

    .line 462
    iget-object v6, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    .line 463
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 462
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 464
    iget-object v8, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object v7, v0, Lcom/codemao/midi/sun/SF2Soundbank;->samples:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/sun/SF2Sample;

    iput-object v6, v5, Lcom/codemao/midi/sun/SF2LayerRegion;->sample:Lcom/codemao/midi/sun/SF2Sample;

    goto :goto_442

    :cond_480
    move-object v4, v5

    goto :goto_442

    :cond_482
    if-eqz v4, :cond_42f

    .line 471
    invoke-virtual {v2}, Lcom/codemao/midi/sun/SF2Layer;->getRegions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 472
    new-instance v3, Lcom/codemao/midi/sun/SF2GlobalRegion;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SF2GlobalRegion;-><init>()V

    .line 473
    iget-object v5, v4, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    iput-object v5, v3, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    .line 474
    iget-object v4, v4, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    iput-object v4, v3, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    .line 475
    invoke-virtual {v2, v3}, Lcom/codemao/midi/sun/SF2Layer;->setGlobalZone(Lcom/codemao/midi/sun/SF2GlobalRegion;)V

    goto :goto_42f

    .line 480
    :cond_49c
    iget-object v1, v0, Lcom/codemao/midi/sun/SF2Soundbank;->instruments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    :cond_4a2
    :goto_4a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50f

    .line 482
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/midi/sun/SF2Instrument;

    .line 483
    iget-object v3, v2, Lcom/codemao/midi/sun/SF2Instrument;->regions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v10

    .line 485
    :goto_4b5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f5

    .line 486
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/midi/sun/SF2InstrumentRegion;

    .line 487
    iget-object v6, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    const/16 v7, 0x29

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4f3

    .line 488
    iget-object v6, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    .line 489
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 488
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Short;

    invoke-virtual {v6}, Ljava/lang/Short;->shortValue()S

    move-result v6

    .line 490
    iget-object v8, v5, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    iget-object v7, v0, Lcom/codemao/midi/sun/SF2Soundbank;->layers:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/midi/sun/SF2Layer;

    iput-object v6, v5, Lcom/codemao/midi/sun/SF2InstrumentRegion;->layer:Lcom/codemao/midi/sun/SF2Layer;

    goto :goto_4b5

    :cond_4f3
    move-object v4, v5

    goto :goto_4b5

    :cond_4f5
    if-eqz v4, :cond_4a2

    .line 498
    invoke-virtual {v2}, Lcom/codemao/midi/sun/SF2Instrument;->getRegions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 499
    new-instance v3, Lcom/codemao/midi/sun/SF2GlobalRegion;

    invoke-direct {v3}, Lcom/codemao/midi/sun/SF2GlobalRegion;-><init>()V

    .line 500
    iget-object v5, v4, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    iput-object v5, v3, Lcom/codemao/midi/sun/SF2Region;->generators:Ljava/util/Map;

    .line 501
    iget-object v4, v4, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    iput-object v4, v3, Lcom/codemao/midi/sun/SF2Region;->modulators:Ljava/util/List;

    .line 502
    invoke-virtual {v2, v3}, Lcom/codemao/midi/sun/SF2Instrument;->setGlobalZone(Lcom/codemao/midi/sun/SF2GlobalRegion;)V

    goto :goto_4a2

    :cond_50f
    return-void
.end method

.method private readSdtaChunk(Lcom/codemao/midi/sun/RIFFReader;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 174
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "smpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    if-eqz v1, :cond_53

    .line 176
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SF2Soundbank;->largeFormat:Z

    if-nez v1, :cond_40

    .line 177
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 180
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v4

    const/4 v5, 0x0

    :goto_28
    if-eq v5, v4, :cond_38

    sub-int v6, v4, v5

    if-le v6, v3, :cond_33

    .line 183
    invoke-virtual {v0, v1, v5, v3}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    add-int/2addr v5, v3

    goto :goto_28

    .line 186
    :cond_33
    invoke-virtual {v0, v1, v5, v6}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    move v5, v4

    goto :goto_28

    .line 191
    :cond_38
    new-instance v4, Lcom/codemao/midi/sun/ModelByteBuffer;

    invoke-direct {v4, v1}, Lcom/codemao/midi/sun/ModelByteBuffer;-><init>([B)V

    iput-object v4, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData:Lcom/codemao/midi/sun/ModelByteBuffer;

    goto :goto_53

    .line 194
    :cond_40
    new-instance v1, Lcom/codemao/midi/sun/ModelByteBuffer;

    iget-object v6, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 195
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v4

    int-to-long v9, v4

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/codemao/midi/sun/ModelByteBuffer;-><init>(Ljava/io/File;JJ)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData:Lcom/codemao/midi/sun/ModelByteBuffer;

    .line 198
    :cond_53
    :goto_53
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v4, "sm24"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-boolean v1, p0, Lcom/codemao/midi/sun/SF2Soundbank;->largeFormat:Z

    if-nez v1, :cond_86

    .line 200
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 204
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v4

    :goto_6d
    if-eq v2, v4, :cond_7d

    sub-int v5, v4, v2

    if-le v5, v3, :cond_78

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    add-int/2addr v2, v3

    goto :goto_6d

    .line 210
    :cond_78
    invoke-virtual {v0, v1, v2, v5}, Lcom/codemao/midi/sun/RIFFReader;->readFully([BII)V

    move v2, v4

    goto :goto_6d

    .line 215
    :cond_7d
    new-instance v0, Lcom/codemao/midi/sun/ModelByteBuffer;

    invoke-direct {v0, v1}, Lcom/codemao/midi/sun/ModelByteBuffer;-><init>([B)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData24:Lcom/codemao/midi/sun/ModelByteBuffer;

    goto/16 :goto_0

    .line 217
    :cond_86
    new-instance v1, Lcom/codemao/midi/sun/ModelByteBuffer;

    iget-object v3, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleFile:Ljava/io/File;

    .line 218
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->available()I

    move-result v0

    int-to-long v6, v0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/codemao/midi/sun/ModelByteBuffer;-><init>(Ljava/io/File;JJ)V

    iput-object v1, p0, Lcom/codemao/midi/sun/SF2Soundbank;->sampleData24:Lcom/codemao/midi/sun/ModelByteBuffer;

    goto/16 :goto_0

    :cond_9b
    return-void
.end method

.method private readSoundbank(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/codemao/midi/sun/RIFFReader;

    invoke-direct {v0, p1}, Lcom/codemao/midi/sun/RIFFReader;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RIFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 122
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v1, "sfbk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 126
    :cond_1d
    :goto_1d
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->hasNextChunk()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 127
    invoke-virtual {v0}, Lcom/codemao/midi/sun/RIFFReader;->nextChunk()Lcom/codemao/midi/sun/RIFFReader;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 129
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INFO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 130
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SF2Soundbank;->readInfoChunk(Lcom/codemao/midi/sun/RIFFReader;)V

    .line 131
    :cond_42
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 132
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SF2Soundbank;->readSdtaChunk(Lcom/codemao/midi/sun/RIFFReader;)V

    .line 133
    :cond_51
    invoke-virtual {p1}, Lcom/codemao/midi/sun/RIFFReader;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pdta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 134
    invoke-direct {p0, p1}, Lcom/codemao/midi/sun/SF2Soundbank;->readPdtaChunk(Lcom/codemao/midi/sun/RIFFReader;)V

    goto :goto_1d

    :cond_61
    return-void

    .line 123
    :cond_62
    new-instance p1, Lcom/codemao/midi/sun/RIFFInvalidFormatException;

    const-string v0, "Input stream is not a valid SoundFont!"

    invoke-direct {p1, v0}, Lcom/codemao/midi/sun/RIFFInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 119
    :cond_6a
    new-instance p1, Lcom/codemao/midi/sun/RIFFInvalidFormatException;

    const-string v0, "Input stream is not a valid RIFF stream!"

    invoke-direct {p1, v0}, Lcom/codemao/midi/sun/RIFFInvalidFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic getInstruments()[Lcom/codemao/midi/javax/Instrument;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SF2Soundbank;->getInstruments()[Lcom/codemao/midi/sun/SF2Instrument;

    move-result-object v0

    return-object v0
.end method

.method public getInstruments()[Lcom/codemao/midi/sun/SF2Instrument;
    .registers 3

    .line 857
    iget-object v0, p0, Lcom/codemao/midi/sun/SF2Soundbank;->instruments:Ljava/util/List;

    .line 858
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/codemao/midi/sun/SF2Instrument;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codemao/midi/sun/SF2Instrument;

    .line 859
    new-instance v1, Lcom/codemao/midi/sun/ModelInstrumentComparator;

    invoke-direct {v1}, Lcom/codemao/midi/sun/ModelInstrumentComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method
