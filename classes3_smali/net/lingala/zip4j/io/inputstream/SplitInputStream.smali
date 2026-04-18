.class public abstract Lnet/lingala/zip4j/io/inputstream/SplitInputStream;
.super Ljava/io/InputStream;
.source "SplitInputStream.java"


# instance fields
.field private currentSplitFileCounter:I

.field private isSplitZipArchive:Z

.field protected randomAccessFile:Ljava/io/RandomAccessFile;

.field private singleByteArray:[B

.field protected zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 19
    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->singleByteArray:[B

    .line 22
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 23
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->zipFile:Ljava/io/File;

    .line 24
    iput-boolean p2, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->isSplitZipArchive:Z

    if-eqz p2, :cond_20

    .line 28
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    :cond_20
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_7

    .line 87
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    return-void
.end method

.method protected abstract getNextSplitFile(I)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected openRandomAccessFileForIndex(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->getNextSplitFile(I)Ljava/io/File;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 78
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 79
    new-instance v0, Ljava/io/RandomAccessFile;

    sget-object v1, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->READ:Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/enums/RandomAccessFileMode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    return-void

    .line 76
    :cond_1d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zip split file does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareExtractionForFileHeader(Lnet/lingala/zip4j/model/FileHeader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->isSplitZipArchive:Z

    if-eqz v0, :cond_19

    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v1

    if-eq v0, v1, :cond_19

    .line 66
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->openRandomAccessFileForIndex(I)V

    .line 67
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getDiskNumberStart()I

    move-result v0

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    .line 70
    :cond_19
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/FileHeader;->getOffsetLocalHeader()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->singleByteArray:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return v1

    .line 39
    :cond_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->singleByteArray:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p2

    if-ne p2, p3, :cond_b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_29

    .line 51
    :cond_b
    iget-boolean v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->isSplitZipArchive:Z

    if-eqz v0, :cond_29

    .line 52
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->openRandomAccessFileForIndex(I)V

    .line 53
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->currentSplitFileCounter:I

    if-gez p2, :cond_1f

    const/4 p2, 0x0

    .line 56
    :cond_1f
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/SplitInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    sub-int/2addr p3, p2

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_29

    add-int/2addr p2, p1

    :cond_29
    return p2
.end method
