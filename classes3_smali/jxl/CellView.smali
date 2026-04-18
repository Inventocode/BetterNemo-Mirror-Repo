.class public final Ljxl/CellView;
.super Ljava/lang/Object;
.source "CellView.java"


# instance fields
.field private autosize:Z

.field private depUsed:Z

.field private dimension:I

.field private format:Ljxl/format/CellFormat;

.field private hidden:Z

.field private size:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Ljxl/CellView;->hidden:Z

    .line 71
    iput-boolean v0, p0, Ljxl/CellView;->depUsed:Z

    const/4 v1, 0x1

    .line 72
    iput v1, p0, Ljxl/CellView;->dimension:I

    .line 73
    iput v1, p0, Ljxl/CellView;->size:I

    .line 74
    iput-boolean v0, p0, Ljxl/CellView;->autosize:Z

    return-void
.end method


# virtual methods
.method public depUsed()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Ljxl/CellView;->depUsed:Z

    return v0
.end method

.method public getDimension()I
    .registers 2

    .line 143
    iget v0, p0, Ljxl/CellView;->dimension:I

    return v0
.end method

.method public getFormat()Ljxl/format/CellFormat;
    .registers 2

    .line 175
    iget-object v0, p0, Ljxl/CellView;->format:Ljxl/format/CellFormat;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 154
    iget v0, p0, Ljxl/CellView;->size:I

    return v0
.end method

.method public isAutosize()Z
    .registers 2

    .line 208
    iget-boolean v0, p0, Ljxl/CellView;->autosize:Z

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 106
    iget-boolean v0, p0, Ljxl/CellView;->hidden:Z

    return v0
.end method

.method public setHidden(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Ljxl/CellView;->hidden:Z

    return-void
.end method

.method public setSize(I)V
    .registers 2

    .line 130
    iput p1, p0, Ljxl/CellView;->size:I

    const/4 p1, 0x0

    .line 131
    iput-boolean p1, p0, Ljxl/CellView;->depUsed:Z

    return-void
.end method
