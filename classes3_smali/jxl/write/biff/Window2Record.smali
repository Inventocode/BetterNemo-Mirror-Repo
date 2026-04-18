.class Ljxl/write/biff/Window2Record;
.super Ljxl/biff/WritableRecordData;
.source "Window2Record.java"


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>(Ljxl/SheetSettings;)V
    .registers 5

    .line 42
    sget-object v0, Ljxl/biff/Type;->WINDOW2:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 48
    invoke-virtual {p1}, Ljxl/SheetSettings;->getShowGridLines()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    .line 57
    invoke-virtual {p1}, Ljxl/SheetSettings;->getDisplayZeroValues()Z

    move-result v2

    if-eqz v2, :cond_1a

    or-int/lit8 v0, v0, 0x10

    :cond_1a
    or-int/lit8 v0, v0, 0x20

    or-int/lit16 v0, v0, 0x80

    .line 67
    invoke-virtual {p1}, Ljxl/SheetSettings;->getHorizontalFreeze()I

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {p1}, Ljxl/SheetSettings;->getVerticalFreeze()I

    move-result v2

    if-eqz v2, :cond_2e

    :cond_2a
    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x100

    .line 75
    :cond_2e
    invoke-virtual {p1}, Ljxl/SheetSettings;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_36

    or-int/lit16 v0, v0, 0x600

    .line 81
    :cond_36
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageBreakPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_3e

    or-int/lit16 v0, v0, 0x800

    :cond_3e
    const/16 v2, 0x12

    new-array v2, v2, [B

    .line 87
    iput-object v2, p0, Ljxl/write/biff/Window2Record;->data:[B

    .line 88
    invoke-static {v0, v2, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    const/16 v0, 0x40

    .line 89
    iget-object v1, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 90
    invoke-virtual {p1}, Ljxl/SheetSettings;->getPageBreakPreviewMagnification()I

    move-result v0

    iget-object v1, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    .line 92
    invoke-virtual {p1}, Ljxl/SheetSettings;->getNormalMagnification()I

    move-result p1

    iget-object v0, p0, Ljxl/write/biff/Window2Record;->data:[B

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljxl/biff/IntegerHelper;->getTwoBytes(I[BI)V

    return-void
.end method


# virtual methods
.method public getData()[B
    .registers 2

    .line 104
    iget-object v0, p0, Ljxl/write/biff/Window2Record;->data:[B

    return-object v0
.end method
