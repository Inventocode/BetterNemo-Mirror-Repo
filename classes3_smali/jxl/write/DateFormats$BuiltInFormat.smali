.class Ljxl/write/DateFormats$BuiltInFormat;
.super Ljava/lang/Object;
.source "DateFormats.java"

# interfaces
.implements Ljxl/biff/DisplayFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/DateFormats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuiltInFormat"
.end annotation


# instance fields
.field private index:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 119
    :cond_4
    instance-of v1, p1, Ljxl/write/DateFormats$BuiltInFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 124
    :cond_a
    check-cast p1, Ljxl/write/DateFormats$BuiltInFormat;

    .line 126
    iget v1, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    iget p1, p1, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    if-ne v1, p1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public getFormatIndex()I
    .registers 2

    .line 62
    iget v0, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 136
    iget v0, p0, Ljxl/write/DateFormats$BuiltInFormat;->index:I

    return v0
.end method

.method public initialize(I)V
    .registers 2

    return-void
.end method

.method public isBuiltIn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
