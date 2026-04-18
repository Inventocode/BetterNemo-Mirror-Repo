.class public Lnet/lingala/zip4j/headers/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field private final intBuff:[B

.field private final rawIO:Lnet/lingala/zip4j/util/RawIO;

.field private zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 64
    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    return-void
.end method

.method private getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J
    .registers 4

    .line 689
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 690
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()J

    move-result-wide v0

    return-wide v0

    .line 693
    :cond_f
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method private locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_25

    sub-long/2addr v0, v2

    .line 702
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 703
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_20

    return-wide v0

    .line 707
    :cond_20
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    return-wide v0

    .line 699
    :cond_25
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private locateOffsetOfEndOfCentralDirectoryByReverseSeek(Ljava/io/RandomAccessFile;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    .line 713
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v6, v2, v4

    if-gez v6, :cond_16

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    :cond_16
    :goto_16
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_3a

    cmp-long v6, v0, v2

    if-lez v6, :cond_3a

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 716
    invoke-direct {p0, p1, v0, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 717
    iget-object v6, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v6, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v8}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-nez v10, :cond_38

    return-wide v0

    :cond_38
    sub-long/2addr v4, v2

    goto :goto_16

    .line 723
    :cond_3a
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseExtraDataRecords([BI)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, p2, :cond_34

    .line 312
    new-instance v3, Lnet/lingala/zip4j/model/ExtraDataRecord;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/ExtraDataRecord;-><init>()V

    .line 313
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    int-to-long v4, v4

    .line 314
    invoke-virtual {v3, v4, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setHeader(J)V

    add-int/lit8 v2, v2, 0x2

    .line 317
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1, v2}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v4

    .line 318
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setSizeOfData(I)V

    add-int/lit8 v2, v2, 0x2

    if-lez v4, :cond_2f

    .line 322
    new-array v5, v4, [B

    .line 323
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 324
    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/ExtraDataRecord;->setData([B)V

    :cond_2f
    add-int/2addr v2, v4

    .line 327
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 329
    :cond_34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    return-object v0
.end method

.method private readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            ")",
            "Lnet/lingala/zip4j/model/AESExtraDataRecord;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 656
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_79

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v1, :cond_17

    goto :goto_8

    .line 661
    :cond_17
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v2

    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->AES_EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_8

    .line 663
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object p1

    if-eqz p1, :cond_71

    .line 667
    new-instance p1, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    .line 669
    invoke-virtual {p1, v4}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 670
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    .line 672
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 673
    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result v2

    invoke-static {v2}, Lnet/lingala/zip4j/model/enums/AesVersion;->getFromVersionNumber(I)Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesVersion(Lnet/lingala/zip4j/model/enums/AesVersion;)V

    const/4 v2, 0x2

    new-array v3, v2, [B

    .line 675
    invoke-static {v0, v2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 677
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getAesKeyStrengthFromRawCode(I)Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesKeyStrength(Lnet/lingala/zip4j/model/enums/AesKeyStrength;)V

    const/4 v1, 0x5

    .line 679
    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian([BI)I

    move-result p2

    invoke-static {p2}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    .line 678
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    return-object p1

    .line 664
    :cond_71
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "corrupt AES extra data records"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_79
    return-object v0
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 626
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_23

    .line 630
    :cond_11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 632
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 633
    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 638
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_23

    .line 642
    :cond_11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p2

    if-eqz p2, :cond_23

    .line 644
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    .line 645
    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_23
    :goto_23
    return-void
.end method

.method private readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 134
    new-instance v4, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v4}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v6, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-static {v6}, Lnet/lingala/zip4j/headers/HeaderUtil;->getOffsetStartOfCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v6

    .line 138
    iget-object v8, v0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0, v8}, Lnet/lingala/zip4j/headers/HeaderReader;->getNumberOfEntriesInCentralDirectory(Lnet/lingala/zip4j/model/ZipModel;)J

    move-result-wide v8

    .line 140
    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v6, 0x2

    new-array v7, v6, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_29
    int-to-long v14, v13

    cmp-long v16, v14, v8

    if-gez v16, :cond_18b

    .line 146
    new-instance v14, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v14}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    .line 147
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v15

    move-object/from16 v17, v11

    int-to-long v10, v15

    sget-object v15, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v15}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v18

    const/16 v20, 0x1

    cmp-long v21, v10, v18

    if-nez v21, :cond_16d

    .line 150
    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 151
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    .line 152
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setVersionNeededToExtract(I)V

    new-array v10, v6, [B

    .line 155
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    aget-byte v11, v10, v12

    invoke-static {v11, v12}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncrypted(Z)V

    .line 157
    aget-byte v11, v10, v12

    const/4 v15, 0x3

    invoke-static {v11, v15}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDataDescriptorExists(Z)V

    .line 158
    aget-byte v11, v10, v20

    invoke-static {v11, v15}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v11

    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 159
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setGeneralPurposeFlag([B)V

    .line 161
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    invoke-static {v10}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v10

    invoke-virtual {v14, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 163
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v14, v10, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setLastModifiedTime(J)V

    move-object/from16 v10, v17

    .line 165
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-object v15, v7

    .line 166
    invoke-virtual {v2, v10, v12}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    const/4 v6, 0x4

    .line 168
    invoke-virtual {v2, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 169
    invoke-virtual {v2, v1, v6}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;I)J

    move-result-wide v11

    invoke-virtual {v14, v11, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 171
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v11

    .line 172
    invoke-virtual {v14, v11}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameLength(I)V

    .line 174
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v12

    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraFieldLength(I)V

    .line 176
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v12

    .line 177
    invoke-virtual {v14, v12}, Lnet/lingala/zip4j/model/FileHeader;->setFileCommentLength(I)V

    .line 179
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v6

    invoke-virtual {v14, v6}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    move-object v6, v15

    .line 181
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 182
    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setInternalFileAttributes([B)V

    .line 184
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 185
    invoke-virtual {v10}, [B->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    invoke-virtual {v14, v15}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttributes([B)V

    .line 187
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    move-wide/from16 v18, v8

    const/4 v7, 0x0

    .line 188
    invoke-virtual {v2, v10, v7}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v14, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    if-lez v11, :cond_119

    .line 191
    new-array v8, v11, [B

    .line 192
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 193
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v9

    invoke-static {v8, v9, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ":\\"

    .line 195
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_114

    .line 196
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v11, 0x2

    add-int/2addr v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_115

    :cond_114
    const/4 v11, 0x2

    .line 199
    :goto_115
    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    goto :goto_11e

    :cond_119
    const/4 v11, 0x2

    const/4 v8, 0x0

    .line 201
    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    .line 204
    :goto_11e
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v8

    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/headers/HeaderReader;->isDirectory([BLjava/lang/String;)Z

    move-result v8

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    .line 205
    invoke-direct {v0, v1, v14}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 206
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 207
    invoke-direct {v0, v14, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    if-lez v12, :cond_148

    .line 210
    new-array v8, v12, [B

    .line 211
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 212
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v9

    invoke-static {v8, v9, v3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/FileHeader;->setFileComment(Ljava/lang/String;)V

    .line 215
    :cond_148
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v8

    if-eqz v8, :cond_15f

    .line 216
    invoke-virtual {v14}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v8

    if-eqz v8, :cond_15a

    .line 217
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_15f

    .line 219
    :cond_15a
    sget-object v8, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v14, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    .line 223
    :cond_15f
    :goto_15f
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object v7, v6

    move-object v11, v10

    move-wide/from16 v8, v18

    const/4 v6, 0x2

    const/4 v10, 0x4

    const/4 v12, 0x0

    goto/16 :goto_29

    .line 148
    :cond_16d
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected central directory entry not found (#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_18b
    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/List;)V

    .line 228
    new-instance v3, Lnet/lingala/zip4j/model/DigitalSignature;

    invoke-direct {v3}, Lnet/lingala/zip4j/model/DigitalSignature;-><init>()V

    .line 229
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v5

    int-to-long v5, v5

    sget-object v7, Lnet/lingala/zip4j/headers/HeaderSignature;->DIGITAL_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v7}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v8

    cmp-long v10, v5, v8

    if-nez v10, :cond_1c3

    .line 230
    invoke-virtual {v3, v7}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 231
    invoke-virtual {v2, v1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-virtual {v3, v2}, Lnet/lingala/zip4j/model/DigitalSignature;->setSizeOfData(I)V

    .line 233
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v2

    if-lez v2, :cond_1c3

    .line 234
    invoke-virtual {v3}, Lnet/lingala/zip4j/model/DigitalSignature;->getSizeOfData()I

    move-result v2

    new-array v2, v2, [B

    .line 235
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 236
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v1}, Lnet/lingala/zip4j/model/DigitalSignature;->setSignatureData(Ljava/lang/String;)V

    :cond_1c3
    return-object v4
.end method

.method private readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->locateOffsetOfEndOfCentralDirectory(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    .line 111
    invoke-direct {p0, p1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    .line 113
    new-instance v2, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    .line 114
    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 115
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 116
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDir(I)V

    .line 118
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 117
    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V

    .line 119
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(I)V

    .line 120
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(I)V

    .line 121
    invoke-virtual {v2, v0, v1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfEndOfCentralDirectory(J)V

    .line 123
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 124
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->intBuff:[B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setOffsetOfStartOfCentralDirectory(J)V

    .line 126
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p2

    .line 127
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/HeaderReader;->readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->setComment(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result p2

    if-lez p2, :cond_61

    const/4 v1, 0x1

    :cond_61
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    return-object v2
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_b

    if-lez p2, :cond_9

    int-to-long v0, p2

    .line 291
    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 297
    :cond_b
    new-array v0, p2, [B

    .line 298
    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 301
    :try_start_10
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    return-object p1

    .line 304
    :catch_15
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p2, v0, :cond_a

    if-lez p2, :cond_8

    .line 269
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_8
    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_a
    new-array v0, p2, [B

    .line 276
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 279
    :try_start_f
    invoke-direct {p0, v0, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->parseExtraDataRecords([BI)Ljava/util/List;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    return-object p1

    .line 282
    :catch_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    .line 260
    :cond_7
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    return-void
.end method

.method private readExtraDataRecords(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraFieldLength()I

    move-result v0

    if-gtz v0, :cond_7

    return-void

    .line 250
    :cond_7
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/RandomAccessFile;I)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraDataRecords(Ljava/util/List;)V

    return-void
.end method

.method private readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 364
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->getOffsetZip64EndOfCentralDirectoryRecord()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_8e

    .line 371
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 373
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    .line 375
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    int-to-long v4, v1

    .line 376
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_86

    .line 379
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 380
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfZip64EndCentralDirectoryRecord(J)V

    .line 381
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionMadeBy(I)V

    .line 382
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setVersionNeededToExtract(I)V

    .line 383
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDisk(I)V

    .line 384
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setNumberOfThisDiskStartOfCentralDirectory(I)V

    .line 386
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 385
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V

    .line 387
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setTotalNumberOfEntriesInCentralDirectory(J)V

    .line 388
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setSizeOfCentralDirectory(J)V

    .line 390
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide v4

    .line 389
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V

    .line 394
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getSizeOfZip64EndCentralDirectoryRecord()J

    move-result-wide v4

    const-wide/16 v6, 0x2c

    sub-long/2addr v4, v6

    cmp-long p2, v4, v2

    if-lez p2, :cond_85

    long-to-int p2, v4

    .line 396
    new-array p2, p2, [B

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 398
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->setExtensibleDataSector([B)V

    :cond_85
    return-object v0

    .line 377
    :cond_86
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid signature for zip64 end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :cond_8e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid offset for start of end of central directory record"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 361
    :cond_96
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "invalid zip64 end of central directory locator"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    .line 337
    invoke-direct {p0, p1, p3, p4}, Lnet/lingala/zip4j/headers/HeaderReader;->setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V

    .line 339
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p3

    int-to-long p3, p3

    .line 340
    sget-object v1, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_END_CENTRAL_DIRECTORY_LOCATOR:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v1}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v2

    cmp-long v4, p3, v2

    if-nez v4, :cond_36

    .line 341
    iget-object p3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    .line 342
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 349
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p3

    .line 348
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V

    .line 351
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/RandomAccessFile;)J

    move-result-wide p3

    .line 350
    invoke-virtual {v0, p3, p4}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setOffsetZip64EndOfCentralDirectoryRecord(J)V

    .line 352
    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/RandomAccessFile;)I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->setTotalNumberOfDiscs(I)V

    return-object v0

    .line 344
    :cond_36
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/ZipModel;->setZip64Format(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;",
            "Lnet/lingala/zip4j/util/RawIO;",
            "JJJI)",
            "Lnet/lingala/zip4j/model/Zip64ExtendedInfo;"
        }
    .end annotation

    move-object v0, p2

    .line 467
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/lingala/zip4j/model/ExtraDataRecord;

    if-nez v2, :cond_15

    goto :goto_5

    .line 472
    :cond_15
    sget-object v4, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v4}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v4

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_87

    .line 474
    new-instance v1, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    invoke-direct {v1}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;-><init>()V

    .line 475
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getData()[B

    move-result-object v4

    .line 477
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-gtz v5, :cond_33

    return-object v3

    :cond_33
    const/4 v3, 0x0

    .line 482
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    const-wide v6, 0xffffffffL

    if-lez v5, :cond_4c

    cmp-long v5, p3, v6

    if-nez v5, :cond_4c

    .line 483
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setUncompressedSize(J)V

    const/16 v3, 0x8

    .line 487
    :cond_4c
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_5f

    cmp-long v5, p5, v6

    if-nez v5, :cond_5f

    .line 488
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setCompressedSize(J)V

    add-int/lit8 v3, v3, 0x8

    .line 492
    :cond_5f
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v5

    if-ge v3, v5, :cond_72

    cmp-long v5, p7, v6

    if-nez v5, :cond_72

    .line 493
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setOffsetLocalHeader(J)V

    add-int/lit8 v3, v3, 0x8

    .line 497
    :cond_72
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getSizeOfData()I

    move-result v2

    if-ge v3, v2, :cond_86

    const v2, 0xffff

    move/from16 v5, p9

    if-ne v5, v2, :cond_86

    .line 498
    invoke-virtual {p2, v4, v3}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian([BI)I

    move-result v0

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->setDiskNumberStart(I)V

    :cond_86
    return-object v1

    :cond_87
    move/from16 v5, p9

    goto/16 :goto_5

    :cond_8b
    return-object v3
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .registers 14

    .line 405
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_6e

    .line 409
    :cond_11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 410
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v8

    .line 411
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v10

    move-object v1, p0

    move-object v3, p2

    .line 409
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p2

    if-nez p2, :cond_2e

    return-void

    .line 417
    :cond_2e
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 419
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_42

    .line 420
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 423
    :cond_42
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_51

    .line 424
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 427
    :cond_51
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_60

    .line 428
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getOffsetLocalHeader()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    .line 431
    :cond_60
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6e

    .line 432
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getDiskNumberStart()I

    move-result p2

    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    :cond_6e
    :goto_6e
    return-void
.end method

.method private readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p1, :cond_4f

    .line 441
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    goto :goto_4e

    .line 445
    :cond_13
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    .line 445
    invoke-direct/range {v1 .. v10}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Ljava/util/List;Lnet/lingala/zip4j/util/RawIO;JJJI)Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    move-result-object p2

    if-nez p2, :cond_2b

    return-void

    .line 452
    :cond_2b
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V

    .line 454
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3f

    .line 455
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getUncompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 458
    :cond_3f
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4e

    .line 459
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip64ExtendedInfo;->getCompressedSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    :cond_4e
    :goto_4e
    return-void

    .line 438
    :cond_4f
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file header is null in reading Zip64 Extended Info"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readZipComment(Ljava/io/RandomAccessFile;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-gtz p2, :cond_4

    return-object v0

    .line 740
    :cond_4
    :try_start_4
    new-array p2, p2, [B

    .line 741
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x0

    if-eqz p3, :cond_d

    goto :goto_f

    .line 742
    :cond_d
    sget-object p3, Lnet/lingala/zip4j/util/InternalZipConstants;->ZIP4J_DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_f
    invoke-static {p2, p1, p3}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p1

    :catch_14
    return-object v0
.end method

.method private seekInCurrentPart(Ljava/io/RandomAccessFile;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 727
    instance-of v0, p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    if-eqz v0, :cond_a

    .line 728
    check-cast p1, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;

    invoke-virtual {p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitRandomAccessFile;->seekInCurrentPart(J)V

    goto :goto_d

    .line 730
    :cond_a
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_d
    return-void
.end method

.method private setFilePointerToReadZip64EndCentralDirLoc(Ljava/io/RandomAccessFile;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x4

    sub-long/2addr p2, v0

    const-wide/16 v2, 0x8

    sub-long/2addr p2, v2

    sub-long/2addr p2, v0

    sub-long/2addr p2, v0

    .line 516
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/headers/HeaderReader;->seekInCurrentPart(Ljava/io/RandomAccessFile;J)V

    return-void
.end method


# virtual methods
.method public isDirectory([BLjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 753
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    aget-byte v1, p1, v0

    const/4 v3, 0x4

    invoke-static {v1, v3}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x3

    .line 755
    aget-byte v3, p1, v1

    if-eqz v3, :cond_1f

    aget-byte p1, p1, v1

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    :cond_1f
    if-eqz p2, :cond_32

    const-string p1, "/"

    .line 759
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_31

    const-string p1, "\\"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    :cond_31
    const/4 v0, 0x1

    :cond_32
    return v0
.end method

.method public readAllHeaders(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/ZipModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v4, v0, v2

    if-ltz v4, :cond_90

    .line 73
    new-instance v0, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 76
    :try_start_11
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Lnet/lingala/zip4j/model/Zip4jConfig;)Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    :try_end_1a
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_11 .. :try_end_1a} :catch_8e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_82

    .line 84
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getTotalNumberOfEntriesInCentralDirectory()I

    move-result v0

    if-nez v0, :cond_29

    .line 85
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1

    .line 89
    :cond_29
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 90
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getOffsetOfEndOfCentralDirectory()J

    move-result-wide v2

    .line 89
    invoke-direct {p0, p1, v1, v2, v3}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndOfCentralDirectoryLocator(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;J)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V

    .line 92
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 93
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, p1, v1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64EndCentralDirRec(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;)Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V

    .line 94
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 95
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v0

    if-lez v0, :cond_6a

    .line 96
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    goto :goto_70

    .line 98
    :cond_6a
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    .line 102
    :cond_70
    :goto_70
    iget-object v0, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {p0, p1, v1, p2}, Lnet/lingala/zip4j/headers/HeaderReader;->readCentralDirectory(Ljava/io/RandomAccessFile;Lnet/lingala/zip4j/util/RawIO;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    .line 104
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object p1

    :catch_82
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "Zip headers not found. Probably not a zip file or a corrupted zip file"

    invoke-direct {p2, v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_8e
    move-exception p1

    .line 78
    throw p1

    .line 69
    :cond_90
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    new-instance v0, Lnet/lingala/zip4j/model/DataDescriptor;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/DataDescriptor;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    .line 600
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 601
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v4

    .line 606
    sget-object v2, Lnet/lingala/zip4j/headers/HeaderSignature;->EXTRA_DATA_RECORD:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v2}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2c

    .line 607
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 608
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 609
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, v1, v3}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    goto :goto_2f

    .line 611
    :cond_2c
    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/DataDescriptor;->setCrc(J)V

    :goto_2f
    if-eqz p2, :cond_44

    .line 615
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 616
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    goto :goto_58

    .line 618
    :cond_44
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/DataDescriptor;->setCompressedSize(J)V

    .line 619
    iget-object p2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {p2, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {v0, p1, p2}, Lnet/lingala/zip4j/model/DataDescriptor;->setUncompressedSize(J)V

    :goto_58
    return-object v0
.end method

.method public readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 524
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    int-to-long v4, v3

    .line 525
    sget-object v6, Lnet/lingala/zip4j/headers/HeaderSignature;->TEMPORARY_SPANNING_MARKER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v6}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1f

    .line 526
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    :cond_1f
    int-to-long v3, v3

    .line 528
    sget-object v5, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v5}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v6

    const/4 v8, 0x0

    cmp-long v9, v3, v6

    if-eqz v9, :cond_2c

    return-object v8

    .line 531
    :cond_2c
    invoke-virtual {v0, v5}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    .line 532
    iget-object v3, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v3, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setVersionNeededToExtract(I)V

    const/4 v3, 0x2

    new-array v4, v3, [B

    .line 535
    invoke-static {p1, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    move-result v5

    if-ne v5, v3, :cond_148

    const/4 v5, 0x0

    .line 538
    aget-byte v6, v4, v5

    invoke-static {v6, v5}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncrypted(Z)V

    .line 539
    aget-byte v6, v4, v5

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v6

    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDataDescriptorExists(Z)V

    const/4 v6, 0x1

    .line 540
    aget-byte v9, v4, v6

    invoke-static {v9, v7}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v7

    invoke-virtual {v0, v7}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameUTF8Encoded(Z)V

    .line 541
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setGeneralPurposeFlag([B)V

    .line 543
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    .line 544
    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    .line 543
    invoke-static {v4}, Lnet/lingala/zip4j/model/enums/CompressionMethod;->getCompressionMethodFromCode(I)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressionMethod(Lnet/lingala/zip4j/model/enums/CompressionMethod;)V

    .line 545
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, p1}, Lnet/lingala/zip4j/util/RawIO;->readIntLittleEndian(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v9, v4

    invoke-virtual {v0, v9, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setLastModifiedTime(J)V

    .line 547
    invoke-static {p1, v2}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 548
    iget-object v4, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v4, v2, v5}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian([BI)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    .line 550
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 551
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1, v1}, Lnet/lingala/zip4j/util/RawIO;->readLongLittleEndian(Ljava/io/InputStream;I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 553
    iget-object v1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v1

    .line 554
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileNameLength(I)V

    .line 556
    iget-object v2, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-virtual {v2, p1}, Lnet/lingala/zip4j/util/RawIO;->readShortLittleEndian(Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setExtraFieldLength(I)V

    if-lez v1, :cond_110

    .line 559
    new-array v1, v1, [B

    .line 560
    invoke-static {p1, v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->readFully(Ljava/io/InputStream;[B)I

    .line 562
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isFileNameUTF8Encoded()Z

    move-result v2

    invoke-static {v1, v2, p2}, Lnet/lingala/zip4j/headers/HeaderUtil;->decodeStringWithCharset([BZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "file.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 568
    :cond_f7
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    const-string v1, "/"

    .line 569
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10c

    const-string v1, "\\"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_10b

    goto :goto_10c

    :cond_10b
    const/4 v6, 0x0

    :cond_10c
    :goto_10c
    invoke-virtual {v0, v6}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    goto :goto_113

    .line 571
    :cond_110
    invoke-virtual {v0, v8}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setFileName(Ljava/lang/String;)V

    .line 574
    :goto_113
    invoke-direct {p0, p1, v0}, Lnet/lingala/zip4j/headers/HeaderReader;->readExtraDataRecords(Ljava/io/InputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 575
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readZip64ExtendedInfo(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 576
    iget-object p1, p0, Lnet/lingala/zip4j/headers/HeaderReader;->rawIO:Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/headers/HeaderReader;->readAesExtraDataRecord(Lnet/lingala/zip4j/model/LocalFileHeader;Lnet/lingala/zip4j/util/RawIO;)V

    .line 578
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_147

    .line 580
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object p2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne p1, p2, :cond_12f

    goto :goto_147

    .line 583
    :cond_12f
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object p1

    aget-byte p1, p1, v5

    const/4 p2, 0x6

    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    if-eqz p1, :cond_142

    .line 584
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD_VARIANT_STRONG:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    goto :goto_147

    .line 586
    :cond_142
    sget-object p1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setEncryptionMethod(Lnet/lingala/zip4j/model/enums/EncryptionMethod;)V

    :cond_147
    :goto_147
    return-object v0

    .line 536
    :cond_148
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not read enough bytes for generalPurposeFlags"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
