.class public Ljxl/write/WritableCellFormat;
.super Ljxl/write/biff/CellXFRecord;
.source "WritableCellFormat.java"


# direct methods
.method public constructor <init>(Ljxl/biff/DisplayFormat;)V
    .registers 3

    .line 74
    sget-object v0, Ljxl/write/WritableWorkbook;->ARIAL_10_PT:Ljxl/write/WritableFont;

    invoke-direct {p0, v0, p1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont;)V
    .registers 3

    .line 63
    sget-object v0, Ljxl/write/NumberFormats;->DEFAULT:Ljxl/biff/DisplayFormat;

    invoke-direct {p0, p1, v0}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V

    return-void
.end method

.method public constructor <init>(Ljxl/write/WritableFont;Ljxl/biff/DisplayFormat;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/CellXFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    return-void
.end method


# virtual methods
.method public setAlignment(Ljxl/format/Alignment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Ljxl/write/biff/CellXFRecord;->setAlignment(Ljxl/format/Alignment;)V

    return-void
.end method

.method public setBackground(Ljxl/format/Colour;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 179
    sget-object v0, Ljxl/format/Pattern;->SOLID:Ljxl/format/Pattern;

    invoke-virtual {p0, p1, v0}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    return-void
.end method

.method public setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 191
    invoke-super {p0, p1, p2}, Ljxl/write/biff/CellXFRecord;->setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    return-void
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 154
    sget-object v0, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, v0}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 168
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellXFRecord;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void
.end method
