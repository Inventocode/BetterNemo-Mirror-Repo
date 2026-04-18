.class public Ljxl/read/biff/NameRecord;
.super Ljxl/biff/RecordData;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/read/biff/NameRecord$NameRange;,
        Ljxl/read/biff/NameRecord$Biff7;
    }
.end annotation


# static fields
.field public static biff7:Ljxl/read/biff/NameRecord$Biff7;

.field private static logger:Ljxl/common/Logger;


# instance fields
.field private builtInName:Ljxl/biff/BuiltInName;

.field private index:I

.field private isbiff8:Z

.field private name:Ljava/lang/String;

.field private ranges:Ljava/util/ArrayList;

.field private sheetRef:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    const-class v0, Ljxl/read/biff/NameRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    .line 74
    new-instance v0, Ljxl/read/biff/NameRecord$Biff7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljxl/read/biff/NameRecord$Biff7;-><init>(Ljxl/read/biff/NameRecord$1;)V

    sput-object v0, Ljxl/read/biff/NameRecord;->biff7:Ljxl/read/biff/NameRecord$Biff7;

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;I)V
    .registers 22

    move-object/from16 v7, p0

    .line 199
    invoke-direct/range {p0 .. p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 v8, 0x0

    .line 63
    iput v8, v7, Ljxl/read/biff/NameRecord;->sheetRef:I

    move/from16 v0, p3

    .line 200
    iput v0, v7, Ljxl/read/biff/NameRecord;->index:I

    const/4 v9, 0x1

    .line 201
    iput-boolean v9, v7, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 205
    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 207
    invoke-virtual/range {p0 .. p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v10

    .line 208
    aget-byte v0, v10, v8

    aget-byte v1, v10, v9

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    const/4 v1, 0x3

    .line 209
    aget-byte v1, v10, v1

    const/16 v2, 0x8

    .line 210
    aget-byte v2, v10, v2

    const/16 v3, 0x9

    aget-byte v3, v10, v3

    invoke-static {v2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    iput v2, v7, Ljxl/read/biff/NameRecord;->sheetRef:I

    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0xf

    if-eqz v2, :cond_46

    .line 214
    aget-byte v2, v10, v3

    invoke-static {v2}, Ljxl/biff/BuiltInName;->getBuiltInName(I)Ljxl/biff/BuiltInName;

    move-result-object v2

    iput-object v2, v7, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    goto :goto_4e

    :cond_46
    move-object/from16 v2, p2

    .line 218
    invoke-static {v10, v1, v3, v2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :goto_4e
    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_53

    return-void

    :cond_53
    add-int/2addr v1, v3

    .line 229
    aget-byte v0, v10, v1

    const/16 v11, 0x3a

    const/high16 v12, 0xc0000

    if-ne v0, v11, :cond_9a

    add-int/lit8 v0, v1, 0x1

    .line 231
    aget-byte v0, v10, v0

    add-int/lit8 v2, v1, 0x2

    aget-byte v2, v10, v2

    invoke-static {v0, v2}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v1, 0x3

    .line 232
    aget-byte v0, v10, v0

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, v10, v3

    invoke-static {v0, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 v0, v1, 0x5

    .line 233
    aget-byte v0, v10, v0

    add-int/lit8 v1, v1, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_86

    const/4 v8, 0x1

    .line 237
    :cond_86
    invoke-static {v8}, Ljxl/common/Assert;->verify(Z)V

    .line 239
    new-instance v8, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v8

    move-object/from16 v1, p0

    move v3, v5

    move v4, v6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 240
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ef

    .line 242
    :cond_9a
    aget-byte v0, v10, v1

    const/16 v13, 0x3b

    if-ne v0, v13, :cond_106

    move v11, v1

    .line 252
    :goto_a1
    array-length v0, v10

    if-ge v11, v0, :cond_1ef

    add-int/lit8 v0, v11, 0x1

    .line 254
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x2

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v11, 0x3

    .line 255
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x4

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 v0, v11, 0x5

    .line 256
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 v0, v11, 0x7

    .line 258
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0x8

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_db

    const/4 v0, 0x1

    goto :goto_dc

    :cond_db
    const/4 v0, 0x0

    .line 262
    :goto_dc
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    add-int/lit8 v0, v11, 0x9

    .line 264
    aget-byte v0, v10, v0

    add-int/lit8 v1, v11, 0xa

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_f2

    const/4 v0, 0x1

    goto :goto_f3

    :cond_f2
    const/4 v0, 0x0

    .line 268
    :goto_f3
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 270
    new-instance v13, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 271
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0xb

    goto :goto_a1

    .line 276
    :cond_106
    aget-byte v0, v10, v1

    const/16 v14, 0x29

    if-ne v0, v14, :cond_1ab

    .line 287
    array-length v0, v10

    const/16 v15, 0x10

    if-ge v1, v0, :cond_126

    aget-byte v0, v10, v1

    if-eq v0, v11, :cond_126

    aget-byte v0, v10, v1

    if-eq v0, v13, :cond_126

    .line 291
    aget-byte v0, v10, v1

    if-ne v0, v14, :cond_120

    add-int/lit8 v1, v1, 0x3

    goto :goto_126

    .line 295
    :cond_120
    aget-byte v0, v10, v1

    if-ne v0, v15, :cond_126

    add-int/lit8 v1, v1, 0x1

    :cond_126
    :goto_126
    move v6, v1

    .line 301
    :goto_127
    array-length v0, v10

    if-ge v6, v0, :cond_1ef

    add-int/lit8 v0, v6, 0x1

    .line 303
    aget-byte v0, v10, v0

    add-int/lit8 v1, v6, 0x2

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 v0, v6, 0x3

    .line 304
    aget-byte v0, v10, v0

    add-int/lit8 v1, v6, 0x4

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 v0, v6, 0x5

    .line 305
    aget-byte v0, v10, v0

    add-int/lit8 v1, v6, 0x6

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v16

    add-int/lit8 v0, v6, 0x7

    .line 307
    aget-byte v0, v10, v0

    add-int/lit8 v1, v6, 0x8

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v3, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_161

    const/4 v0, 0x1

    goto :goto_162

    :cond_161
    const/4 v0, 0x0

    .line 311
    :goto_162
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    add-int/lit8 v0, v6, 0x9

    .line 313
    aget-byte v0, v10, v0

    add-int/lit8 v1, v6, 0xa

    aget-byte v1, v10, v1

    invoke-static {v0, v1}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v0

    and-int/lit16 v5, v0, 0xff

    and-int/2addr v0, v12

    if-nez v0, :cond_178

    const/4 v0, 0x1

    goto :goto_179

    :cond_178
    const/4 v0, 0x0

    .line 317
    :goto_179
    invoke-static {v0}, Ljxl/common/Assert;->verify(Z)V

    .line 319
    new-instance v1, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, v1

    move-object v8, v1

    move-object/from16 v1, p0

    move/from16 v17, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 320
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v17, 0xb

    .line 325
    array-length v0, v10

    if-ge v6, v0, :cond_1a8

    aget-byte v0, v10, v6

    if-eq v0, v11, :cond_1a8

    aget-byte v0, v10, v6

    if-eq v0, v13, :cond_1a8

    .line 329
    aget-byte v0, v10, v6

    if-ne v0, v14, :cond_1a2

    add-int/lit8 v6, v6, 0x3

    goto :goto_1a8

    .line 333
    :cond_1a2
    aget-byte v0, v10, v6

    if-ne v0, v15, :cond_1a8

    add-int/lit8 v6, v6, 0x1

    :cond_1a8
    :goto_1a8
    const/4 v8, 0x0

    goto/16 :goto_127

    .line 342
    :cond_1ab
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    if-eqz v0, :cond_1b0

    goto :goto_1b6

    :cond_1b0
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    invoke-virtual {v0}, Ljxl/biff/BuiltInName;->getName()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_1b6
    sget-object v1, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot read name ranges for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - setting to empty"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 345
    new-instance v8, Ljxl/read/biff/NameRecord$NameRange;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 346
    iget-object v0, v7, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e3
    .catchall {:try_start_f .. :try_end_1e3} :catchall_1e4

    goto :goto_1ef

    .line 354
    :catchall_1e4
    sget-object v0, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot read name"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const-string v0, "ERROR"

    .line 355
    iput-object v0, v7, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :cond_1ef
    :goto_1ef
    return-void
.end method

.method constructor <init>(Ljxl/read/biff/Record;Ljxl/WorkbookSettings;ILjxl/read/biff/NameRecord$Biff7;)V
    .registers 16

    .line 369
    invoke-direct {p0, p1}, Ljxl/biff/RecordData;-><init>(Ljxl/read/biff/Record;)V

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    .line 370
    iput p3, p0, Ljxl/read/biff/NameRecord;->index:I

    .line 371
    iput-boolean p1, p0, Ljxl/read/biff/NameRecord;->isbiff8:Z

    .line 375
    :try_start_a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    .line 376
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    const/4 p3, 0x3

    .line 377
    aget-byte p3, p1, p3

    const/16 p4, 0x8

    .line 378
    aget-byte p4, p1, p4

    const/16 v0, 0x9

    aget-byte v0, p1, v0

    invoke-static {p4, v0}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result p4

    iput p4, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    const/16 p4, 0xe

    .line 379
    invoke-static {p1, p3, p4, p2}, Ljxl/biff/StringHelper;->getString([BIILjxl/WorkbookSettings;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    add-int/2addr p3, p4

    .line 383
    array-length p2, p1

    if-lt p3, p2, :cond_37

    return-void

    .line 389
    :cond_37
    aget-byte p2, p1, p3

    const/16 p4, 0x3a

    if-ne p2, p4, :cond_69

    add-int/lit8 p2, p3, 0xb

    .line 391
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0xc

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 p2, p3, 0xf

    .line 392
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x10

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p3, p3, 0x11

    .line 393
    aget-byte v5, p1, p3

    .line 395
    new-instance p1, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, p1

    move-object v1, p0

    move v3, v5

    move v4, v6

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 396
    iget-object p2, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_12a

    .line 398
    :cond_69
    aget-byte p2, p1, p3

    const/16 v0, 0x3b

    if-ne p2, v0, :cond_ad

    .line 407
    :goto_6f
    array-length p2, p1

    if-ge p3, p2, :cond_12a

    add-int/lit8 p2, p3, 0xb

    .line 409
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0xc

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v2

    add-int/lit8 p2, p3, 0xf

    .line 410
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x10

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v4

    add-int/lit8 p2, p3, 0x11

    .line 411
    aget-byte p2, p1, p2

    add-int/lit8 p4, p3, 0x12

    aget-byte p4, p1, p4

    invoke-static {p2, p4}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p2, p3, 0x13

    .line 413
    aget-byte v3, p1, p2

    add-int/lit8 p2, p3, 0x14

    .line 414
    aget-byte v5, p1, p2

    .line 416
    new-instance p2, Ljxl/read/biff/NameRecord$NameRange;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 417
    iget-object p4, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x15

    goto :goto_6f

    .line 422
    :cond_ad
    aget-byte p2, p1, p3

    const/16 v1, 0x29

    if-ne p2, v1, :cond_12a

    .line 433
    array-length p2, p1

    const/16 v2, 0x10

    if-ge p3, p2, :cond_cd

    aget-byte p2, p1, p3

    if-eq p2, p4, :cond_cd

    aget-byte p2, p1, p3

    if-eq p2, v0, :cond_cd

    .line 437
    aget-byte p2, p1, p3

    if-ne p2, v1, :cond_c7

    :goto_c4
    add-int/lit8 p3, p3, 0x3

    goto :goto_cd

    .line 441
    :cond_c7
    aget-byte p2, p1, p3

    if-ne p2, v2, :cond_cd

    :goto_cb
    add-int/lit8 p3, p3, 0x1

    .line 447
    :cond_cd
    :goto_cd
    array-length p2, p1

    if-ge p3, p2, :cond_12a

    add-int/lit8 p2, p3, 0xb

    .line 449
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0xc

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v6

    add-int/lit8 p2, p3, 0xf

    .line 450
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0x10

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v8

    add-int/lit8 p2, p3, 0x11

    .line 451
    aget-byte p2, p1, p2

    add-int/lit8 v3, p3, 0x12

    aget-byte v3, p1, v3

    invoke-static {p2, v3}, Ljxl/biff/IntegerHelper;->getInt(BB)I

    move-result v10

    add-int/lit8 p2, p3, 0x13

    .line 453
    aget-byte v7, p1, p2

    add-int/lit8 p2, p3, 0x14

    .line 454
    aget-byte v9, p1, p2

    .line 456
    new-instance p2, Ljxl/read/biff/NameRecord$NameRange;

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Ljxl/read/biff/NameRecord$NameRange;-><init>(Ljxl/read/biff/NameRecord;IIIII)V

    .line 457
    iget-object v3, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x15

    .line 462
    array-length p2, p1

    if-ge p3, p2, :cond_cd

    aget-byte p2, p1, p3

    if-eq p2, p4, :cond_cd

    aget-byte p2, p1, p3

    if-eq p2, v0, :cond_cd

    .line 466
    aget-byte p2, p1, p3

    if-ne p2, v1, :cond_11a

    goto :goto_c4

    .line 470
    :cond_11a
    aget-byte p2, p1, p3
    :try_end_11c
    .catchall {:try_start_a .. :try_end_11c} :catchall_11f

    if-ne p2, v2, :cond_cd

    goto :goto_cb

    .line 483
    :catchall_11f
    sget-object p1, Ljxl/read/biff/NameRecord;->logger:Ljxl/common/Logger;

    const-string p2, "Cannot read name."

    invoke-virtual {p1, p2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const-string p1, "ERROR"

    .line 484
    iput-object p1, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    :cond_12a
    :goto_12a
    return-void
.end method


# virtual methods
.method public getBuiltInName()Ljxl/biff/BuiltInName;
    .registers 2

    .line 505
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->builtInName:Ljxl/biff/BuiltInName;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .line 557
    invoke-virtual {p0}, Ljxl/biff/RecordData;->getRecord()Ljxl/read/biff/Record;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/Record;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method getIndex()I
    .registers 2

    .line 527
    iget v0, p0, Ljxl/read/biff/NameRecord;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 495
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRanges()[Ljxl/read/biff/NameRecord$NameRange;
    .registers 3

    .line 516
    iget-object v0, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljxl/read/biff/NameRecord$NameRange;

    .line 517
    iget-object v1, p0, Ljxl/read/biff/NameRecord;->ranges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/read/biff/NameRecord$NameRange;

    return-object v0
.end method

.method public getSheetRef()I
    .registers 2

    .line 538
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    return v0
.end method

.method public isBiff8()Z
    .registers 2

    .line 567
    iget-boolean v0, p0, Ljxl/read/biff/NameRecord;->isbiff8:Z

    return v0
.end method

.method public isGlobal()Z
    .registers 2

    .line 577
    iget v0, p0, Ljxl/read/biff/NameRecord;->sheetRef:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
