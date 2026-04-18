.class public Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "EndOfCentralDirectoryRecord.java"


# instance fields
.field private numberOfThisDisk:I

.field private offsetOfEndOfCentralDirectory:J

.field private offsetOfStartOfCentralDirectory:J

.field private totalNumberOfEntriesInCentralDirectory:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    .line 33
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->END_OF_CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    return-void
.end method


# virtual methods
.method public getNumberOfThisDisk()I
    .registers 2

    .line 37
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return v0
.end method

.method public getOffsetOfEndOfCentralDirectory()J
    .registers 3

    .line 86
    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfEndOfCentralDirectory:J

    return-wide v0
.end method

.method public getOffsetOfStartOfCentralDirectory()J
    .registers 3

    .line 78
    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfStartOfCentralDirectory:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectory()I
    .registers 2

    .line 62
    iget v0, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setNumberOfThisDisk(I)V
    .registers 2

    .line 41
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return-void
.end method

.method public setNumberOfThisDiskStartOfCentralDir(I)V
    .registers 2

    return-void
.end method

.method public setOffsetOfEndOfCentralDirectory(J)V
    .registers 3

    .line 90
    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfEndOfCentralDirectory:J

    return-void
.end method

.method public setOffsetOfStartOfCentralDirectory(J)V
    .registers 3

    .line 82
    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->offsetOfStartOfCentralDirectory:J

    return-void
.end method

.method public setSizeOfCentralDirectory(I)V
    .registers 2

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectory(I)V
    .registers 2

    .line 66
    iput p1, p0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:I

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(I)V
    .registers 2

    return-void
.end method
