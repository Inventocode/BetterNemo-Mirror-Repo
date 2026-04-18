.class public Lnet/lingala/zip4j/io/inputstream/ZipInputStream;
.super Ljava/io/InputStream;
.source "ZipInputStream.java"


# instance fields
.field private canSkipExtendedLocalFileHeader:Z

.field private crc32:Ljava/util/zip/CRC32;

.field private decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

.field private endOfEntryBuffer:[B

.field private entryEOFReached:Z

.field private headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

.field private inputStream:Ljava/io/PushbackInputStream;

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private password:[C

.field private streamClosed:Z

.field private zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[CLnet/lingala/zip4j/model/Zip4jConfig;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    new-instance v0, Lnet/lingala/zip4j/headers/HeaderReader;

    invoke-direct {v0}, Lnet/lingala/zip4j/headers/HeaderReader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    .line 49
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 53
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    .line 54
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 73
    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    const/16 v1, 0x200

    if-lt v0, v1, :cond_30

    .line 77
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-virtual {p3}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v1

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    .line 78
    iput-object p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    .line 79
    iput-object p3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    return-void

    .line 74
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Buffer size cannot be less than 512 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private assertStreamOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    if-nez v0, :cond_5

    return-void

    .line 357
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lingala/zip4j/model/ExtraDataRecord;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 272
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lingala/zip4j/model/ExtraDataRecord;

    .line 273
    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ExtraDataRecord;->getHeader()J

    move-result-wide v1

    sget-object v3, Lnet/lingala/zip4j/headers/HeaderSignature;->ZIP64_EXTRA_FIELD_SIGNATURE:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {v3}, Lnet/lingala/zip4j/headers/HeaderSignature;->getValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_24
    return v0
.end method

.method private endOfCompressedDataReached()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->pushBackInputStreamIfNecessary(Ljava/io/PushbackInputStream;)V

    .line 205
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->endOfEntryReached(Ljava/io/InputStream;)V

    .line 207
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readExtendedLocalFileHeaderIfPresent()V

    .line 208
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyCrc()V

    .line 209
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->resetFields()V

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    return-void
.end method

.method private getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J
    .registers 6

    .line 310
    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 311
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v0

    return-wide v0

    .line 314
    :cond_11
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-nez v0, :cond_1e

    const-wide/16 v0, -0x1

    return-wide v0

    .line 318
    :cond_1e
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getEncryptionHeaderSize(Lnet/lingala/zip4j/model/LocalFileHeader;)I
    .registers 5

    .line 322
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 326
    :cond_8
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v2, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xc

    if-eqz v0, :cond_24

    .line 328
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesKeyStrength()Lnet/lingala/zip4j/model/enums/AesKeyStrength;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/enums/AesKeyStrength;->getSaltLength()I

    move-result p1

    add-int/2addr p1, v2

    return p1

    .line 329
    :cond_24
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v2

    :cond_31
    return v1
.end method

.method private initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_14

    .line 222
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/NoCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 225
    :cond_14
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_2a

    .line 226
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/AesCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    .line 227
    :cond_2a
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_40

    .line 228
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->password:[C

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v2

    invoke-direct {v0, p1, p2, v1, v2}, Lnet/lingala/zip4j/io/inputstream/ZipStandardCipherInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;[CI)V

    return-object v0

    :cond_40
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "Entry [%s] Strong Encryption not supported"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 231
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->UNSUPPORTED_ENCRYPTION:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2
.end method

.method private initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .registers 4

    .line 237
    invoke-static {p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->getCompressionMethod(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object p2

    .line 239
    sget-object v0, Lnet/lingala/zip4j/model/enums/CompressionMethod;->DEFLATE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne p2, v0, :cond_14

    .line 240
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/Zip4jConfig;->getBufferSize()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lnet/lingala/zip4j/io/inputstream/InflaterInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;I)V

    return-object p2

    .line 243
    :cond_14
    new-instance p2, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/io/inputstream/StoreInputStream;-><init>(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;)V

    return-object p2
.end method

.method private initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getCompressedSize(Lnet/lingala/zip4j/model/LocalFileHeader;)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 215
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeCipherInputStream(Lnet/lingala/zip4j/io/inputstream/ZipEntryInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/CipherInputStream;

    move-result-object v0

    .line 216
    invoke-direct {p0, v0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeDecompressorForThisEntry(Lnet/lingala/zip4j/io/inputstream/CipherInputStream;Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object p1

    return-object p1
.end method

.method private isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z
    .registers 3

    .line 352
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->ZIP_STANDARD:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method private isEntryDirectory(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "/"

    .line 306
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private readExtendedLocalFileHeaderIfPresent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    if-eqz v0, :cond_d

    goto :goto_3a

    .line 251
    :cond_d
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 252
    invoke-virtual {v2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getExtraDataRecords()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->checkIfZip64ExtraDataRecordPresentInLFH(Ljava/util/List;)Z

    move-result v2

    .line 251
    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readDataDescriptor(Ljava/io/InputStream;Z)Lnet/lingala/zip4j/model/DataDescriptor;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 254
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 255
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/DataDescriptor;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private readUntilEndOfEntry()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1d

    :cond_14
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 338
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDataDescriptorExists()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 342
    :cond_1d
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    if-nez v0, :cond_27

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 343
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    .line 347
    :cond_27
    :goto_27
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfEntryBuffer:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    goto :goto_27

    :cond_31
    const/4 v0, 0x1

    .line 348
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    return-void
.end method

.method private resetFields()V
    .registers 2

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 302
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    return-void
.end method

.method private verifyCrc()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getEncryptionMethod()Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/EncryptionMethod;->AES:Lnet/lingala/zip4j/model/enums/EncryptionMethod;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 283
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesVersion()Lnet/lingala/zip4j/model/enums/AesVersion;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/AesVersion;->TWO:Lnet/lingala/zip4j/model/enums/AesVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 288
    :cond_1d
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v0

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_56

    .line 289
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->CHECKSUM_MISMATCH:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 291
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, v1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 292
    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    .line 295
    :cond_39
    new-instance v1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reached end of entry, but crc verification failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw v1

    :cond_56
    return-void
.end method

.method private verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEntryDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 260
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressionMethod()Lnet/lingala/zip4j/model/enums/CompressionMethod;

    move-result-object v0

    sget-object v1, Lnet/lingala/zip4j/model/enums/CompressionMethod;->STORE:Lnet/lingala/zip4j/model/enums/CompressionMethod;

    if-ne v0, v1, :cond_3d

    .line 261
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1d

    goto :goto_3d

    .line 262
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid local file header for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Uncompressed size has to be set for entry of compression type store which is not a directory"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->assertStreamOpen()V

    .line 185
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {v0}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->close()V

    :cond_7
    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->streamClosed:Z

    return-void
.end method

.method public getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-eqz v0, :cond_7

    .line 88
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->readUntilEndOfEntry()V

    .line 91
    :cond_7
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->headerReader:Lnet/lingala/zip4j/headers/HeaderReader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->inputStream:Ljava/io/PushbackInputStream;

    iget-object v2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->zip4jConfig:Lnet/lingala/zip4j/model/Zip4jConfig;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/Zip4jConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/headers/HeaderReader;->readLocalFileHeader(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object v0

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    return-object p1

    .line 97
    :cond_1b
    invoke-direct {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->verifyLocalFileHeader(Lnet/lingala/zip4j/model/LocalFileHeader;)V

    .line 98
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    const/4 v0, 0x0

    if-eqz p1, :cond_4e

    .line 101
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCrc(J)V

    .line 102
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getCompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setCompressedSize(J)V

    .line 103
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setUncompressedSize(J)V

    .line 107
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory()Z

    move-result p1

    invoke-virtual {v1, p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->setDirectory(Z)V

    const/4 p1, 0x1

    .line 108
    iput-boolean p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    goto :goto_50

    .line 110
    :cond_4e
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->canSkipExtendedLocalFileHeader:Z

    .line 113
    :goto_50
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->initializeEntryInputStream(Lnet/lingala/zip4j/model/LocalFileHeader;)Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    .line 114
    iput-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->entryEOFReached:Z

    .line 115
    iget-object p1, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    return-object p1
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 121
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    return v2

    :cond_b
    const/4 v1, 0x0

    .line 127
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p3, :cond_3f

    if-nez p3, :cond_6

    const/4 p1, 0x0

    return p1

    .line 145
    :cond_6
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    .line 151
    :cond_c
    invoke-virtual {v0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 156
    :cond_13
    :try_start_13
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->decompressedInputStream:Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/DecompressedInputStream;->read([BII)I

    move-result p3

    if-ne p3, v1, :cond_1f

    .line 159
    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->endOfCompressedDataReached()V

    goto :goto_24

    .line 161
    :cond_1f
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->crc32:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_24} :catch_25

    :goto_24
    return p3

    :catch_25
    move-exception p1

    .line 166
    iget-object p2, p0, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->isEncryptionMethodZipStandard(Lnet/lingala/zip4j/model/LocalFileHeader;)Z

    move-result p2

    if-eqz p2, :cond_3e

    .line 167
    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lnet/lingala/zip4j/exception/ZipException$Type;->WRONG_PASSWORD:Lnet/lingala/zip4j/exception/ZipException$Type;

    invoke-direct {p2, p3, p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lnet/lingala/zip4j/exception/ZipException$Type;)V

    throw p2

    .line 170
    :cond_3e
    throw p1

    .line 138
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Negative read length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
