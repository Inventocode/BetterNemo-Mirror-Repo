.class public Ljxl/write/biff/CopyAdditionalPropertySetsException;
.super Ljxl/write/biff/JxlWriteException;
.source "CopyAdditionalPropertySetsException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    sget-object v0, Ljxl/write/biff/JxlWriteException;->copyPropertySets:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p0, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    return-void
.end method
