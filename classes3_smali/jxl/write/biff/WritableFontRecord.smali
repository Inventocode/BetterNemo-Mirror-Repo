.class public Ljxl/write/biff/WritableFontRecord;
.super Ljxl/biff/FontRecord;
.source "WritableFontRecord.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIZIII)V
    .registers 8

    .line 46
    invoke-direct/range {p0 .. p7}, Ljxl/biff/FontRecord;-><init>(Ljava/lang/String;IIZIII)V

    return-void
.end method

.method protected constructor <init>(Ljxl/format/Font;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Ljxl/biff/FontRecord;-><init>(Ljxl/format/Font;)V

    return-void
.end method


# virtual methods
.method protected setColour(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Ljxl/biff/FontRecord;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 140
    invoke-super {p0, p1}, Ljxl/biff/FontRecord;->setFontColour(I)V

    return-void

    .line 137
    :cond_a
    new-instance p1, Ljxl/write/biff/JxlWriteException;

    sget-object v0, Ljxl/write/biff/JxlWriteException;->formatInitialized:Ljxl/write/biff/JxlWriteException$WriteMessage;

    invoke-direct {p1, v0}, Ljxl/write/biff/JxlWriteException;-><init>(Ljxl/write/biff/JxlWriteException$WriteMessage;)V

    throw p1
.end method
