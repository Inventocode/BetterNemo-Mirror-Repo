.class public Ljxl/write/biff/CellXFRecord;
.super Ljxl/biff/XFRecord;
.source "CellXFRecord.java"


# direct methods
.method protected constructor <init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/FontRecord;Ljxl/biff/DisplayFormat;)V

    .line 49
    sget-object p1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljxl/biff/XFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    return-void
.end method

.method constructor <init>(Ljxl/biff/XFRecord;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Ljxl/biff/XFRecord;-><init>(Ljxl/biff/XFRecord;)V

    .line 60
    sget-object p1, Ljxl/biff/XFRecord;->cell:Ljxl/biff/XFRecord$XFType;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljxl/biff/XFRecord;->setXFDetails(Ljxl/biff/XFRecord$XFType;I)V

    return-void
.end method


# virtual methods
.method public setAlignment(Ljxl/format/Alignment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFAlignment(Ljxl/format/Alignment;)V

    return-void

    .line 82
    :cond_a
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 100
    invoke-super {p0, p1, p2}, Ljxl/biff/XFRecord;->setXFBackground(Ljxl/format/Colour;Ljxl/format/Pattern;)V

    const/16 p1, 0x4000

    .line 101
    invoke-super {p0, p1}, Ljxl/biff/XFRecord;->setXFCellOptions(I)V

    return-void

    .line 98
    :cond_f
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object p2, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, p2}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method

.method public setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Ljxl/biff/XFRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_40

    .line 215
    sget-object v0, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    if-ne p1, v0, :cond_1f

    .line 218
    sget-object p1, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 219
    sget-object p1, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 220
    sget-object p1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 221
    sget-object p1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 225
    :cond_1f
    sget-object v0, Ljxl/format/Border;->NONE:Ljxl/format/Border;

    if-ne p1, v0, :cond_3c

    .line 228
    sget-object p1, Ljxl/format/Border;->LEFT:Ljxl/format/Border;

    sget-object p2, Ljxl/format/BorderLineStyle;->NONE:Ljxl/format/BorderLineStyle;

    sget-object p3, Ljxl/format/Colour;->BLACK:Ljxl/format/Colour;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 229
    sget-object p1, Ljxl/format/Border;->RIGHT:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 230
    sget-object p1, Ljxl/format/Border;->TOP:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    .line 231
    sget-object p1, Ljxl/format/Border;->BOTTOM:Ljxl/format/Border;

    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 235
    :cond_3c
    invoke-super {p0, p1, p2, p3}, Ljxl/biff/XFRecord;->setXFBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;Ljxl/format/Colour;)V

    return-void

    .line 212
    :cond_40
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object p2, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, p2}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method
