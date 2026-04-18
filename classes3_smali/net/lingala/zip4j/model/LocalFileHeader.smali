.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Lnet/lingala/zip4j/model/AbstractFileHeader;
.source "LocalFileHeader.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lnet/lingala/zip4j/model/AbstractFileHeader;-><init>()V

    .line 28
    sget-object v0, Lnet/lingala/zip4j/headers/HeaderSignature;->LOCAL_FILE_HEADER:Lnet/lingala/zip4j/headers/HeaderSignature;

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/model/ZipHeader;->setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V

    return-void
.end method
