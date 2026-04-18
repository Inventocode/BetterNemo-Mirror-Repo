.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "ZipModel.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

.field private isZip64Format:Z

.field private splitArchive:Z

.field private zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

.field private zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

.field private zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    new-instance v0, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;-><init>()V

    .line 28
    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    .line 29
    new-instance v0, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    .line 30
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    .line 31
    new-instance v0, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .registers 2

    .line 62
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public getEndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;
    .registers 2

    .line 70
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getZip64EndOfCentralDirectoryLocator()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;
    .registers 2

    .line 103
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    return-object v0
.end method

.method public getZip64EndOfCentralDirectoryRecord()Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;
    .registers 2

    .line 112
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    return-object v0
.end method

.method public getZipFile()Ljava/io/File;
    .registers 2

    .line 95
    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    return-object v0
.end method

.method public isSplitArchive()Z
    .registers 2

    .line 87
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return v0
.end method

.method public isZip64Format()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return v0
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-void
.end method

.method public setEndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->endOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/EndOfCentralDirectoryRecord;

    return-void
.end method

.method public setSplitArchive(Z)V
    .registers 2

    .line 91
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return-void
.end method

.method public setZip64EndOfCentralDirectoryLocator(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryLocator:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryLocator;

    return-void
.end method

.method public setZip64EndOfCentralDirectoryRecord(Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndOfCentralDirectoryRecord:Lnet/lingala/zip4j/model/Zip64EndOfCentralDirectoryRecord;

    return-void
.end method

.method public setZip64Format(Z)V
    .registers 2

    .line 125
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return-void
.end method

.method public setZipFile(Ljava/io/File;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/io/File;

    return-void
.end method
