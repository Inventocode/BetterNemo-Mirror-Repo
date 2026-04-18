.class public Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "Zip64EndOfCentralDirectoryLocator.java"


# instance fields
.field private offsetZip64EndOfCentralDirectoryRecord:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffsetZip64EndOfCentralDirectoryRecord()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-wide v0
.end method

.method public setNumberOfDiskStartOfZip64EndOfCentralDirectoryRecord(I)V
    .registers 2

    return-void
.end method

.method public setOffsetZip64EndOfCentralDirectoryRecord(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;->offsetZip64EndOfCentralDirectoryRecord:J

    return-void
.end method

.method public setTotalNumberOfDiscs(I)V
    .registers 2

    return-void
.end method
