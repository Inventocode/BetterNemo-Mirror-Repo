.class public Lcom/codemao/midi/sun/RIFFInvalidDataException;
.super Lcom/codemao/midi/sun/InvalidDataException;
.source "RIFFInvalidDataException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Invalid Data!"

    .line 37
    invoke-direct {p0, v0}, Lcom/codemao/midi/sun/InvalidDataException;-><init>(Ljava/lang/String;)V

    return-void
.end method
