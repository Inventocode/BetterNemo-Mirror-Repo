.class public Lnet/lingala/zip4j/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static synthetic $r8$lambda$KfJeTuomSv5AZxJveUrJp8zPdIQ(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lnet/lingala/zip4j/util/FileUtils;->lambda$getAllSortedNumberedSplitFiles$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI",
            "Ljava/util/Set<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ")V"
        }
    .end annotation

    .line 567
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 568
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method private static applyPosixFileAttributes(Ljava/nio/file/Path;[B)V
    .registers 9

    const/4 v0, 0x2

    .line 473
    aget-byte v1, p1, v0

    const/4 v2, 0x3

    if-nez v1, :cond_b

    aget-byte v1, p1, v2

    if-nez v1, :cond_b

    return-void

    .line 479
    :cond_b
    :try_start_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 480
    aget-byte v3, p1, v2

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    const/4 v5, 0x0

    invoke-static {v3, v5, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 481
    aget-byte v3, p1, v0

    const/4 v4, 0x7

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v4, v1, v6}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 482
    aget-byte v3, p1, v0

    const/4 v4, 0x6

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v4, v1, v6}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 483
    aget-byte v3, p1, v0

    const/4 v4, 0x5

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v4, v1, v6}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 484
    aget-byte v3, p1, v0

    const/4 v4, 0x4

    sget-object v6, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v4, v1, v6}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 485
    aget-byte v3, p1, v0

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v3, v2, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 486
    aget-byte v2, p1, v0

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v2, v0, v1, v3}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 487
    aget-byte v2, p1, v0

    const/4 v3, 0x1

    sget-object v4, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {v2, v3, v1, v4}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 488
    aget-byte p1, p1, v0

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-static {p1, v5, v1, v0}, Lnet/lingala/zip4j/util/FileUtils;->addIfBitSet(BILjava/util/Set;Ljava/nio/file/attribute/PosixFilePermission;)V

    .line 489
    invoke-static {p0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method

.method private static applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V
    .registers 7

    const/4 v0, 0x0

    .line 456
    aget-byte v1, p1, v0

    if-nez v1, :cond_6

    return-void

    .line 461
    :cond_6
    const-class v1, Ljava/nio/file/attribute/DosFileAttributeView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v0

    invoke-static {p0, v1, v3}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    check-cast p0, Ljava/nio/file/attribute/DosFileAttributeView;

    .line 463
    :try_start_15
    aget-byte v1, p1, v0

    invoke-static {v1, v0}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {p0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setReadOnly(Z)V

    .line 464
    aget-byte v1, p1, v0

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {p0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setHidden(Z)V

    .line 465
    aget-byte v1, p1, v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v1

    invoke-interface {p0, v1}, Ljava/nio/file/attribute/DosFileAttributeView;->setSystem(Z)V

    .line 466
    aget-byte p1, p1, v0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    invoke-interface {p0, p1}, Ljava/nio/file/attribute/DosFileAttributeView;->setArchive(Z)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3b} :catch_3b

    :catch_3b
    return-void
.end method

.method public static getAllSortedNumberedSplitFiles(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    .line 384
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/FileUtils;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    new-instance v1, Lnet/lingala/zip4j/util/FileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lnet/lingala/zip4j/util/FileUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0

    .line 391
    :cond_1b
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method private static getExtensionZerosPrefix(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x9

    if-ge p0, v0, :cond_7

    const-string p0, "00"

    return-object p0

    :cond_7
    const/16 v0, 0x63

    if-ge p0, v0, :cond_e

    const-string p0, "0"

    return-object p0

    :cond_e
    const-string p0, ""

    return-object p0
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    .line 368
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    .line 370
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string p0, ""

    return-object p0

    .line 374
    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "."

    .line 137
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p0

    :cond_a
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNextNumberedSplitFileCounterAsExtension(I)Ljava/lang/String;
    .registers 3

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lnet/lingala/zip4j/util/FileUtils;->getExtensionZerosPrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSplitZipFiles(Lnet/lingala/zip4j/model/ZipModel;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/lingala/zip4j/model/ZipModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    if-eqz p0, :cond_95

    .line 165
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_a
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    .line 177
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    if-nez v2, :cond_27

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 182
    :cond_27
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object v2

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result v2

    if-nez v2, :cond_35

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_35
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_37
    if-gt v4, v2, :cond_8c

    if-ne v4, v2, :cond_43

    .line 190
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    :cond_43
    const/16 v5, 0x9

    if-lt v4, v5, :cond_4a

    const-string v5, ".z"

    goto :goto_4c

    :cond_4a
    const-string v5, ".z0"

    .line 196
    :goto_4c
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 197
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_6d

    :cond_69
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 198
    :goto_6d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_89
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_8c
    return-object v0

    .line 170
    :cond_8d
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip file does not exist"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_95
    new-instance p0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "cannot get split zip files: zipmodel is null"

    invoke-direct {p0, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isMac()Z
    .registers 2

    const-string v0, "os.name"

    .line 436
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mac"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumberedSplitFile(Ljava/io/File;)Z
    .registers 2

    .line 364
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, ".zip.001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUnix()Z
    .registers 2

    const-string v0, "os.name"

    .line 441
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nux"

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isWindows()Z
    .registers 2

    const-string v0, "os.name"

    .line 431
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "win"

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static synthetic lambda$getAllSortedNumberedSplitFiles$0(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static setFileAttributes(Ljava/nio/file/Path;[B)V
    .registers 3

    if-eqz p1, :cond_1f

    .line 48
    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1f

    .line 52
    :cond_6
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 53
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyWindowsFileAttributes(Ljava/nio/file/Path;[B)V

    goto :goto_1f

    .line 54
    :cond_10
    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isMac()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lnet/lingala/zip4j/util/FileUtils;->isUnix()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 55
    :cond_1c
    invoke-static {p0, p1}, Lnet/lingala/zip4j/util/FileUtils;->applyPosixFileAttributes(Ljava/nio/file/Path;[B)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public static setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1b

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/LinkOption;

    .line 60
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1b

    .line 65
    :cond_10
    :try_start_10
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Files;->setLastModifiedTime(Ljava/nio/file/Path;Ljava/nio/file/attribute/FileTime;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    :goto_1b
    return-void
.end method

.method public static setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V
    .registers 3

    .line 72
    invoke-static {p1, p2}, Lnet/lingala/zip4j/util/Zip4jUtil;->dosToExtendedEpochTme(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method
