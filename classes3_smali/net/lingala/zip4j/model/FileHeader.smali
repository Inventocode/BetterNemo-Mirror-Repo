.class public Lnet/lingala/zip4j/model/FileHeader;
.super Lnet/lingala/zip4j/model/AbstractFileHeader;
.source "FileHeader.java"


# instance fields
.field private diskNumberStart:I

.field private externalFileAttributes:[B

.field private offsetLocalHeader:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;-><init>()V

    .line 32
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->CENTRAL_DIRECTORY:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    return-void
.end method


# virtual methods
.method public getDiskNumberStart()I
    .registers 2

    .line 52
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return v0
.end method

.method public getExternalFileAttributes()[B
    .registers 2

    .line 68
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttributes:[B

    return-object v0
.end method

.method public getOffsetLocalHeader()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-wide v0
.end method

.method public setDiskNumberStart(I)V
    .registers 2

    .line 56
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return-void
.end method

.method public setExternalFileAttributes([B)V
    .registers 2

    .line 72
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttributes:[B

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setFileCommentLength(I)V
    .registers 2

    return-void
.end method

.method public setInternalFileAttributes([B)V
    .registers 2

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .registers 3

    .line 80
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .registers 2

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 93
    invoke-virtual {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
