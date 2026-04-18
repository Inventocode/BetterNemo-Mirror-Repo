.class public Lnet/lingala/zip4j/util/UnzipUtil;
.super Ljava/lang/Object;
.source "UnzipUtil.java"


# direct methods
.method public static applyFileAttributes(Lnet/lingala/zip4j/model/FileHeader;Ljava/io/File;)V
    .registers 5

    .line 46
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/FileHeader;->getExternalFileAttributes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lnet/lingala/zip4j/util/FileUtils;->setFileAttributes(Ljava/nio/file/Path;[B)V

    .line 48
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getLastModifiedTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTime(Ljava/nio/file/Path;J)V
    :try_end_12
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_1a

    .line 50
    :catch_13
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getLastModifiedTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lnet/lingala/zip4j/util/FileUtils;->setFileLastModifiedTimeWithoutNio(Ljava/io/File;J)V

    :goto_1a
    return-void
.end method

.method public static createSplitInputStream(Lnet/lingala/zip4j/model/ZipModel;)Lnet/lingala/zip4j/io/inputstream/SplitInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".zip.001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 58
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/NumberedSplitInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lnet/lingala/zip4j/io/inputstream/NumberedSplitInputStream;-><init>(Ljava/io/File;ZI)V

    return-object v0

    .line 62
    :cond_23
    new-instance v0, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getZipFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result v2

    .line 63
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/ZipModel;->getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    move-result-object p0

    invoke-virtual {p0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->getNumberOfThisDisk()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lnet/lingala/zip4j/io/inputstream/ZipStandardSplitInputStream;-><init>(Ljava/io/File;ZI)V

    return-object v0
.end method
