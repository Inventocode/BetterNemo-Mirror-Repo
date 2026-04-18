.class public final Ljxl/read/biff/CompoundFile;
.super Ljxl/biff/BaseCompoundFile;
.source "CompoundFile.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private bigBlockChain:[I

.field private bigBlockDepotBlocks:[I

.field private data:[B

.field private extensionBlock:I

.field private numBigBlockDepotBlocks:I

.field private numExtensionBlocks:I

.field private propertySets:Ljava/util/ArrayList;

.field private rootEntry:[B

.field private rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

.field private rootStartBlock:I

.field private sbdStartBlock:I

.field private smallBlockChain:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Ljxl/read/biff/CompoundFile;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>([BLjxl/WorkbookSettings;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljxl/biff/BaseCompoundFile;-><init>()V

    .line 108
    iput-object p1, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 112
    :goto_7
    sget-object v1, Ljxl/biff/BaseCompoundFile;->IDENTIFIER:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 114
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v2, v2, v0

    aget-byte v1, v1, v0

    if-ne v2, v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 116
    :cond_17
    new-instance p1, Ljxl/read/biff/BiffException;

    sget-object p2, Ljxl/read/biff/BiffException;->unrecognizedOLEFile:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p1, p2}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw p1

    .line 120
    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    .line 121
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x2c

    aget-byte v1, v0, v1

    const/16 v2, 0x2d

    aget-byte v2, v0, v2

    const/16 v3, 0x2e

    aget-byte v3, v0, v3

    const/16 v4, 0x2f

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    .line 126
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x3c

    aget-byte v1, v0, v1

    const/16 v2, 0x3d

    aget-byte v2, v0, v2

    const/16 v3, 0x3e

    aget-byte v3, v0, v3

    const/16 v4, 0x3f

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->sbdStartBlock:I

    .line 131
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x30

    aget-byte v1, v0, v1

    const/16 v2, 0x31

    aget-byte v2, v0, v2

    const/16 v3, 0x32

    aget-byte v3, v0, v3

    const/16 v4, 0x33

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->rootStartBlock:I

    .line 136
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x44

    aget-byte v1, v0, v1

    const/16 v2, 0x45

    aget-byte v2, v0, v2

    const/16 v3, 0x46

    aget-byte v3, v0, v3

    const/16 v4, 0x47

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    .line 141
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->data:[B

    const/16 v1, 0x48

    aget-byte v1, v0, v1

    const/16 v2, 0x49

    aget-byte v2, v0, v2

    const/16 v3, 0x4a

    aget-byte v3, v0, v3

    const/16 v4, 0x4b

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->numExtensionBlocks:I

    .line 147
    iget v1, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    new-array v2, v1, [I

    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    const/16 v2, 0x4c

    if-eqz v0, :cond_aa

    const/16 v1, 0x6d

    :cond_aa
    const/4 v0, 0x0

    :goto_ab
    if-ge v0, v1, :cond_c8

    .line 160
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget-byte v4, p1, v2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p1, v6

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    invoke-static {v4, v5, v6, v7}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    .line 165
    :cond_c8
    :goto_c8
    iget v0, p0, Ljxl/read/biff/CompoundFile;->numExtensionBlocks:I

    if-ge p2, v0, :cond_117

    .line 167
    iget v0, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v0, v0, 0x200

    .line 168
    iget v2, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    sub-int/2addr v2, v1

    const/16 v3, 0x7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_dc
    add-int v4, v1, v2

    if-ge v3, v4, :cond_fb

    .line 173
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget-byte v5, p1, v0

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    add-int/lit8 v7, v0, 0x2

    aget-byte v7, p1, v7

    add-int/lit8 v8, v0, 0x3

    aget-byte v8, p1, v8

    invoke-static {v5, v6, v7, v8}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_dc

    .line 179
    :cond_fb
    iget v1, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ge v4, v1, :cond_113

    .line 181
    aget-byte v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    invoke-static {v1, v2, v3, v0}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v0

    iput v0, p0, Ljxl/read/biff/CompoundFile;->extensionBlock:I

    :cond_113
    add-int/lit8 p2, p2, 0x1

    move v1, v4

    goto :goto_c8

    .line 186
    :cond_117
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readBigBlockDepot()V

    .line 187
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readSmallBlockDepot()V

    .line 189
    iget p1, p0, Ljxl/read/biff/CompoundFile;->rootStartBlock:I

    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->readData(I)[B

    move-result-object p1

    iput-object p1, p0, Ljxl/read/biff/CompoundFile;->rootEntry:[B

    .line 190
    invoke-direct {p0}, Ljxl/read/biff/CompoundFile;->readPropertySets()V

    return-void
.end method

.method private findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .registers 6

    .line 381
    iget p2, p2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->child:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    const/4 p1, 0x0

    return-object p1

    .line 387
    :cond_7
    invoke-direct {p0, p2}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object p2

    .line 388
    iget-object v1, p2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-object p2

    :cond_14
    move-object v1, p2

    .line 395
    :cond_15
    iget v1, v1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->previous:I

    if-eq v1, v0, :cond_26

    .line 397
    invoke-direct {p0, v1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v1

    .line 398
    iget-object v2, v1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v1

    :cond_26
    move-object v1, p2

    .line 406
    :cond_27
    iget v1, v1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->next:I

    if-eq v1, v0, :cond_38

    .line 408
    invoke-direct {p0, v1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v1

    .line 409
    iget-object v2, v1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    return-object v1

    .line 415
    :cond_38
    invoke-direct {p0, p1, p2}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object p1

    return-object p1
.end method

.method private getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B
    .registers 9

    .line 475
    iget v0, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    div-int/lit16 v1, v0, 0x200

    const/16 v2, 0x200

    .line 476
    rem-int/2addr v0, v2

    if-eqz v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    :cond_b
    mul-int/lit16 v0, v1, 0x200

    .line 481
    new-array v0, v0, [B

    .line 483
    iget p1, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    const/4 v3, 0x0

    :goto_12
    const/4 v4, -0x2

    if-eq p1, v4, :cond_29

    if-ge v3, v1, :cond_29

    add-int/lit8 v4, p1, 0x1

    mul-int/lit16 v4, v4, 0x200

    .line 490
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->data:[B

    mul-int/lit16 v6, v3, 0x200

    invoke-static {v5, v4, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    .line 493
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget p1, v4, p1

    goto :goto_12

    :cond_29
    if-eq p1, v4, :cond_34

    if-ne v3, v1, :cond_34

    .line 498
    sget-object p1, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    const-string v1, "Property storage size inconsistent with block chain."

    invoke-virtual {p1, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_34
    return-object v0
.end method

.method private getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .registers 3

    .line 464
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    return-object p1
.end method

.method private getPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 433
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    .line 436
    iget-object v6, v5, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_a

    if-ne v4, v7, :cond_23

    const/4 v3, 0x1

    goto :goto_24

    :cond_23
    const/4 v3, 0x0

    :goto_24
    move-object v2, v5

    const/4 v4, 0x1

    goto :goto_a

    :cond_27
    if-eqz v3, :cond_3f

    .line 446
    sget-object v0, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found multiple copies of property set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    :cond_3f
    if-eqz v4, :cond_42

    return-object v2

    .line 451
    :cond_42
    new-instance p1, Ljxl/read/biff/BiffException;

    sget-object v0, Ljxl/read/biff/BiffException;->streamNotFound:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p1, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw p1
.end method

.method private getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 513
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iget v0, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->readData(I)[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [B

    .line 516
    iget v3, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->startBlock:I

    const/4 v4, 0x0

    .line 520
    :goto_e
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    array-length v6, v5

    if-gt v4, v6, :cond_4c

    const/4 v6, -0x2

    if-eq v3, v6, :cond_4c

    .line 524
    array-length v5, v2

    const/16 v7, 0x40

    add-int/2addr v5, v7

    new-array v5, v5, [B

    .line 525
    array-length v8, v2

    invoke-static {v2, v1, v5, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v8, v3, 0x40

    .line 529
    array-length v2, v2

    invoke-static {v0, v8, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 531
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_47

    .line 535
    sget-object v2, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect terminator for small block stream "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    const/4 v3, -0x2

    goto :goto_48

    :cond_47
    move v3, v2

    :goto_48
    add-int/lit8 v4, v4, 0x1

    move-object v2, v5

    goto :goto_e

    .line 540
    :cond_4c
    array-length p1, v5

    if-gt v4, p1, :cond_50

    return-object v2

    .line 544
    :cond_50
    new-instance p1, Ljxl/read/biff/BiffException;

    sget-object v0, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p1, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw p1
.end method

.method private readBigBlockDepot()V
    .registers 12

    .line 200
    iget v0, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    mul-int/lit16 v0, v0, 0x200

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 202
    :goto_d
    iget v3, p0, Ljxl/read/biff/CompoundFile;->numBigBlockDepotBlocks:I

    if-ge v1, v3, :cond_40

    .line 204
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->bigBlockDepotBlocks:[I

    aget v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0x200

    const/4 v4, 0x0

    :goto_1a
    const/16 v5, 0x80

    if-ge v4, v5, :cond_3d

    .line 208
    iget-object v5, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v7, v6, v3

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v6, v8

    add-int/lit8 v9, v3, 0x2

    aget-byte v9, v6, v9

    add-int/lit8 v10, v3, 0x3

    aget-byte v6, v6, v10

    invoke-static {v7, v8, v9, v6}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v6

    aput v6, v5, v2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_40
    return-void
.end method

.method private readData(I)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 564
    :goto_4
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    array-length v4, v3

    if-gt v2, v4, :cond_34

    const/4 v4, -0x2

    if-eq p1, v4, :cond_34

    .line 568
    array-length v3, v1

    const/16 v4, 0x200

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 569
    array-length v5, v1

    invoke-static {v1, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, p1, 0x1

    mul-int/lit16 v5, v5, 0x200

    .line 571
    iget-object v6, p0, Ljxl/read/biff/CompoundFile;->data:[B

    array-length v1, v1

    invoke-static {v6, v5, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    iget-object v1, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget v4, v1, p1

    if-eq v4, p1, :cond_2c

    .line 577
    aget p1, v1, p1

    add-int/lit8 v2, v2, 0x1

    move-object v1, v3

    goto :goto_4

    .line 575
    :cond_2c
    new-instance p1, Ljxl/read/biff/BiffException;

    sget-object v0, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p1, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw p1

    .line 580
    :cond_34
    array-length p1, v3

    if-gt v2, p1, :cond_38

    return-object v1

    .line 584
    :cond_38
    new-instance p1, Ljxl/read/biff/BiffException;

    sget-object v0, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {p1, v0}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw p1
.end method

.method private readPropertySets()V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 271
    :goto_2
    iget-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntry:[B

    array-length v3, v2

    if-ge v1, v3, :cond_7a

    const/16 v3, 0x80

    new-array v4, v3, [B

    .line 274
    invoke-static {v2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {v2, p0, v4}, Ljxl/biff/BaseCompoundFile$PropertyStorage;-><init>(Ljxl/biff/BaseCompoundFile;[B)V

    .line 279
    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    const-string v4, "Root Entry"

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_68

    .line 281
    :cond_1f
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_47

    .line 283
    iput-object v4, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    .line 284
    sget-object v3, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property storage name for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is empty - setting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_68

    .line 289
    :cond_47
    iget v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    if-eqz v3, :cond_68

    .line 291
    sget-object v3, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Property storage type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is non-empty and has no associated name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 296
    :cond_68
    :goto_68
    iget-object v3, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, v2, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 299
    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    :cond_77
    add-int/lit16 v1, v1, 0x80

    goto :goto_2

    .line 304
    :cond_7a
    iget-object v1, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    if-nez v1, :cond_88

    .line 306
    iget-object v1, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;

    iput-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    :cond_88
    return-void
.end method

.method private readSmallBlockDepot()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 223
    iget v0, p0, Ljxl/read/biff/CompoundFile;->sbdStartBlock:I

    const/4 v1, 0x0

    new-array v2, v1, [I

    .line 224
    iput-object v2, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 230
    sget-object v0, Ljxl/read/biff/CompoundFile;->logger:Ljxl/common/Logger;

    const-string v1, "invalid small block depot number"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 235
    :goto_14
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    array-length v5, v4

    if-gt v2, v5, :cond_57

    const/4 v5, -0x2

    if-eq v0, v5, :cond_57

    .line 238
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    .line 239
    array-length v5, v4

    const/16 v6, 0x80

    add-int/2addr v5, v6

    new-array v5, v5, [I

    iput-object v5, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    .line 240
    array-length v7, v4

    invoke-static {v4, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v0, 0x1

    mul-int/lit16 v4, v4, 0x200

    const/4 v5, 0x0

    :goto_2f
    if-ge v5, v6, :cond_50

    .line 246
    iget-object v7, p0, Ljxl/read/biff/CompoundFile;->smallBlockChain:[I

    iget-object v8, p0, Ljxl/read/biff/CompoundFile;->data:[B

    aget-byte v9, v8, v4

    add-int/lit8 v10, v4, 0x1

    aget-byte v10, v8, v10

    add-int/lit8 v11, v4, 0x2

    aget-byte v11, v8, v11

    add-int/lit8 v12, v4, 0x3

    aget-byte v8, v8, v12

    invoke-static {v9, v10, v11, v8}, Ljxl/biff/IntegerHelper;->getInt(BBBB)I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 252
    :cond_50
    iget-object v4, p0, Ljxl/read/biff/CompoundFile;->bigBlockChain:[I

    aget v0, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 255
    :cond_57
    array-length v0, v4

    if-gt v2, v0, :cond_5b

    return-void

    .line 259
    :cond_5b
    new-instance v0, Ljxl/read/biff/BiffException;

    sget-object v1, Ljxl/read/biff/BiffException;->corruptFileFormat:Ljxl/read/biff/BiffException$BiffMessage;

    invoke-direct {v0, v1}, Ljxl/read/biff/BiffException;-><init>(Ljxl/read/biff/BiffException$BiffMessage;)V

    throw v0
.end method


# virtual methods
.method public findPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .registers 3

    .line 371
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {p0, p1, v0}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object p1

    return-object p1
.end method

.method public getNumberOfPropertySets()I
    .registers 2

    .line 596
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->propertySets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPropertySet(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;
    .registers 2

    .line 608
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object p1

    return-object p1
.end method

.method public getStream(I)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(I)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object p1

    .line 352
    iget v0, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1a

    iget-object v0, p1, Ljxl/biff/BaseCompoundFile$PropertyStorage;->name:Ljava/lang/String;

    const-string v1, "Root Entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1a

    .line 359
    :cond_15
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object p1

    return-object p1

    .line 355
    :cond_1a
    :goto_1a
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object p1

    return-object p1
.end method

.method public getStream(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Ljxl/read/biff/CompoundFile;->rootEntryPropertyStorage:Ljxl/biff/BaseCompoundFile$PropertyStorage;

    invoke-direct {p0, p1, v0}, Ljxl/read/biff/CompoundFile;->findPropertyStorage(Ljava/lang/String;Ljxl/biff/BaseCompoundFile$PropertyStorage;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    if-nez v0, :cond_c

    .line 326
    invoke-direct {p0, p1}, Ljxl/read/biff/CompoundFile;->getPropertyStorage(Ljava/lang/String;)Ljxl/biff/BaseCompoundFile$PropertyStorage;

    move-result-object v0

    .line 329
    :cond_c
    iget v1, v0, Ljxl/biff/BaseCompoundFile$PropertyStorage;->size:I

    const/16 v2, 0x1000

    if-ge v1, v2, :cond_20

    const-string v1, "Root Entry"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_20

    .line 336
    :cond_1b
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getSmallBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object p1

    return-object p1

    .line 332
    :cond_20
    :goto_20
    invoke-direct {p0, v0}, Ljxl/read/biff/CompoundFile;->getBigBlockStream(Ljxl/biff/BaseCompoundFile$PropertyStorage;)[B

    move-result-object p1

    return-object p1
.end method
