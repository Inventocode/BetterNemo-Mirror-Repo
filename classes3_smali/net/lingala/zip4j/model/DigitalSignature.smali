.class public Lnet/lingala/zip4j/model/DigitalSignature;
.super Lnet/lingala/zip4j/model/ZipHeader;
.source "DigitalSignature.java"


# instance fields
.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lnet/lingala/zip4j/model/ZipHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getSizeOfData()I
    .registers 2

    .line 25
    iget v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    return v0
.end method

.method public setSignatureData(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setSizeOfData(I)V
    .registers 2

    .line 29
    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    return-void
.end method
