.class public Ljxl/write/Label;
.super Ljxl/write/biff/LabelRecord;
.source "Label.java"

# interfaces
.implements Ljxl/LabelCell;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .registers 5

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Ljxl/write/biff/LabelRecord;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    return-void
.end method

.method public constructor <init>(Ljxl/LabelCell;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Ljxl/write/biff/LabelRecord;-><init>(Ljxl/LabelCell;)V

    return-void
.end method
