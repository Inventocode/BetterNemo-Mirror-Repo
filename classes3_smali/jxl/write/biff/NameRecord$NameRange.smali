.class Ljxl/write/biff/NameRecord$NameRange;
.super Ljava/lang/Object;
.source "NameRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/NameRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NameRange"
.end annotation


# instance fields
.field private columnFirst:I

.field private columnLast:I

.field private externalSheet:I

.field private rowFirst:I

.field private rowLast:I


# direct methods
.method constructor <init>(IIIII)V
    .registers 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p4, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 99
    iput p2, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 100
    iput p5, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 101
    iput p3, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 102
    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return-void
.end method

.method constructor <init>(Ljxl/read/biff/NameRecord$NameRange;)V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getFirstColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    .line 83
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getFirstRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    .line 84
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getLastColumn()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    .line 85
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getLastRow()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    .line 86
    invoke-virtual {p1}, Ljxl/read/biff/NameRecord$NameRange;->getExternalSheet()I

    move-result p1

    iput p1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    return-void
.end method


# virtual methods
.method getData()[B
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 125
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->externalSheet:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 128
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowFirst:I

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 131
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->rowLast:I

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 134
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnFirst:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x6

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 137
    iget v1, p0, Ljxl/write/biff/NameRecord$NameRange;->columnLast:I

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    invoke-static {v1, v0, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-object v0
.end method
