.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64EndOfCentralDirectoryRecord.java"


# instance fields
.field private numberOfThisDisk:I

.field private offsetStartCentralDirectoryWRTStartDiskNumber:J

.field private sizeOfZip64EndCentralDirectoryRecord:J

.field private totalNumberOfEntriesInCentralDirectory:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-void
.end method


# virtual methods
.method public getNumberOfThisDisk()I
    .registers 2

    .line 57
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return v0
.end method

.method public getOffsetStartCentralDirectoryWRTStartDiskNumber()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirectoryRecord()J
    .registers 3

    .line 33
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    return-wide v0
.end method

.method public getTotalNumberOfEntriesInCentralDirectory()J
    .registers 3

    .line 82
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    return-wide v0
.end method

.method public setExtensibleDataSector([B)V
    .registers 2

    return-void
.end method

.method public setNumberOfThisDisk(I)V
    .registers 2

    .line 61
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->numberOfThisDisk:I

    return-void
.end method

.method public setNumberOfThisDiskStartOfCentralDirectory(I)V
    .registers 2

    return-void
.end method

.method public setOffsetStartCentralDirectoryWRTStartDiskNumber(J)V
    .registers 3

    .line 103
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->offsetStartCentralDirectoryWRTStartDiskNumber:J

    return-void
.end method

.method public setSizeOfCentralDirectory(J)V
    .registers 3

    return-void
.end method

.method public setSizeOfZip64EndCentralDirectoryRecord(J)V
    .registers 3

    .line 37
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->sizeOfZip64EndCentralDirectoryRecord:J

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectory(J)V
    .registers 3

    .line 86
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;->totalNumberOfEntriesInCentralDirectory:J

    return-void
.end method

.method public setTotalNumberOfEntriesInCentralDirectoryOnThisDisk(J)V
    .registers 3

    return-void
.end method

.method public setVersionMadeBy(I)V
    .registers 2

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .registers 2

    return-void
.end method
