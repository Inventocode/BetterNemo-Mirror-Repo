.class public Lnet/lingala/zip4j/headers/HeaderWriter;
.super Ljava/lang/Object;
.source "HeaderWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lnet/lingala/zip4j/util/RawIO;

    invoke-direct {v0}, Lnet/lingala/zip4j/util/RawIO;-><init>()V

    return-void
.end method
