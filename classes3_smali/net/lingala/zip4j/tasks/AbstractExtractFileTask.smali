.class public abstract Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;
.super Lnet/lingala/zip4j/tasks/AsyncZipTask;
.source "AbstractExtractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/lingala/zip4j/tasks/AsyncZipTask<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

.field private final zipModel:Lnet/lingala/zip4j/model/ZipModel;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/UnzipParameters;Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V
    .registers 4

    .line 32
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/tasks/AsyncZipTask;-><init>(Lnet/lingala/zip4j/tasks/AsyncZipTask$AsyncTaskParameters;)V

    .line 33
    iput-object p1, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    .line 34
    iput-object p2, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    return-void
.end method

.method private checkOutputDirectoryStructure(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_30

    .line 157
    :cond_15
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create parent directories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    return-void
.end method

.method private createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 110
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_26

    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_26

    .line 111
    :cond_1e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not create parent directories"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    :try_start_27
    new-array p2, p1, [Ljava/lang/String;

    .line 115
    invoke-static {v0, p2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    .line 116
    invoke-virtual {p3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    new-array p1, p1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p4, p2, p1}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodError; {:try_start_27 .. :try_end_36} :catch_37

    goto :goto_46

    .line 118
    :catch_37
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 119
    :try_start_3c
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_47

    .line 120
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :goto_46
    return-void

    :catchall_47
    move-exception p2

    .line 118
    :try_start_48
    throw p2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p3

    .line 120
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw p3
.end method

.method private determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 163
    invoke-static {p3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_f

    .line 167
    :cond_7
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 170
    :goto_f
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private getFileNameWithSystemFileSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 174
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[/\\\\]"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z
    .registers 4

    .line 78
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object p1

    if-eqz p1, :cond_14

    .line 80
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    goto :goto_14

    :cond_b
    const/4 v0, 0x3

    .line 84
    aget-byte p1, p1, v0

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result p1

    return p1

    :cond_14
    :goto_14
    const/4 p1, 0x0

    return p1
.end method

.method private readCompleteEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Lnet/lingala/zip4j/progress/ProgressMonitor;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getUncompressedSize()J

    move-result-wide v0

    long-to-int p2, v0

    new-array v0, p2, [B

    .line 127
    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result p1

    if-ne p1, p2, :cond_12

    int-to-long p1, p2

    .line 133
    invoke-virtual {p3, p1, p2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    return-object v0

    .line 130
    :cond_12
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "Could not read complete entry"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_28

    .line 92
    :goto_5
    :try_start_5
    invoke-virtual {p1, p4}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, p4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v1, v1

    .line 94
    invoke-virtual {p3, v1, v2}, Lnet/lingala/zip4j/progress/ProgressMonitor;->updateWorkCompleted(J)V

    .line 95
    invoke-virtual {p0}, Lnet/lingala/zip4j/tasks/AsyncZipTask;->verifyIfTaskIsCancelled()V
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1c

    goto :goto_5

    .line 97
    :cond_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_28

    return-void

    :catchall_1c
    move-exception p1

    .line 91
    :try_start_1d
    throw p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p3

    .line 97
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p4

    :try_start_24
    invoke-virtual {p1, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p3
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_28

    :catch_28
    move-exception p1

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_32

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 101
    :cond_32
    throw p1
.end method

.method private verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getGeneralPurposeFlag()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/BitUtils;->isBitSet(BI)Z

    move-result v0

    if-nez v0, :cond_46

    .line 143
    invoke-virtual {p1, p2}, Lnet/lingala/zip4j/io/inputstream/ZipInputStream;->getNextEntry(Lnet/lingala/zip4j/model/FileHeader;)Lnet/lingala/zip4j/model/LocalFileHeader;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 150
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    return-void

    .line 151
    :cond_23
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "File header and local file header mismatch"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 146
    :cond_2b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not read corresponding local file header for file header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_46
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is encrypted with Strong Encryption. Zip4j does not support Strong Encryption, as this is patented."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected extractFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 41
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipParameters:Lnet/lingala/zip4j/model/UnzipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/UnzipParameters;->isExtractSymbolicLinks()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 45
    :cond_f
    sget-object v0, Lnet/lingala/zip4j/util/InternalZipConstants;->FILE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 49
    :cond_26
    invoke-direct {p0, p2, p3, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->determineOutputFile(Lnet/lingala/zip4j/model/FileHeader;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    .line 50
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lnet/lingala/zip4j/progress/ProgressMonitor;->setFileName(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 54
    invoke-virtual {p4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_96

    .line 59
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->verifyNextEntry(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;)V

    .line 61
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_82

    .line 62
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_92

    .line 63
    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_92

    .line 64
    :cond_6b
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not create directory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_82
    invoke-direct {p0, p2}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->isSymbolicLink(Lnet/lingala/zip4j/model/FileHeader;)Z

    move-result p3

    if-eqz p3, :cond_8c

    .line 68
    invoke-direct {p0, p1, p2, p4, p5}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->createSymLink(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;)V

    goto :goto_92

    .line 70
    :cond_8c
    invoke-direct {p0, p4}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->checkOutputDirectoryStructure(Ljava/io/File;)V

    .line 71
    invoke-direct {p0, p1, p4, p5, p6}, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->unzipFile(Lnet/lingala/zip4j/io/inputstream/ZipInputStream;Ljava/io/File;Lnet/lingala/zip4j/progress/ProgressMonitor;[B)V

    .line 74
    :cond_92
    :goto_92
    invoke-static {p2, p4}, Lnet/lingala/zip4j/util/UnzipUtil;->applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V

    return-void

    .line 55
    :cond_96
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "illegal file name that breaks out of the target directory: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getTask()Lnet/lingala/zip4j/progress/ProgressMonitor$Task;
    .registers 2

    .line 179
    sget-object v0, Lnet/lingala/zip4j/progress/ProgressMonitor$Task;->EXTRACT_ENTRY:Lnet/lingala/zip4j/progress/ProgressMonitor$Task;

    return-object v0
.end method

.method public getZipModel()Lnet/lingala/zip4j/model/ZipModel;
    .registers 2

    .line 183
    iget-object v0, p0, Lnet/lingala/zip4j/tasks/AbstractExtractFileTask;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    return-object v0
.end method
