.class public abstract Ljxl/write/biff/LabelRecord;
.super Ljxl/write/biff/CellValue;
.source "LabelRecord.java"


# instance fields
.field private contents:Ljava/lang/String;

.field private index:I

.field private sharedStrings:Ljxl/write/biff/SharedStrings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Ljxl/write/biff/LabelRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Ljxl/format/CellFormat;)V
    .registers 6

    .line 85
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1, p2, p4}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;IILjxl/format/CellFormat;)V

    .line 86
    iput-object p3, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    if-nez p3, :cond_d

    const-string p1, ""

    .line 90
    iput-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    :cond_d
    return-void
.end method

.method protected constructor <init>(Ljxl/LabelCell;)V
    .registers 3

    .line 116
    sget-object v0, Ljxl/biff/Type;->LABELSST:Ljxl/biff/Type;

    invoke-direct {p0, v0, p1}, Ljxl/write/biff/CellValue;-><init>(Ljxl/biff/Type;Ljxl/Cell;)V

    .line 117
    invoke-interface {p1}, Ljxl/LabelCell;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    if-nez p1, :cond_11

    const-string p1, ""

    .line 120
    iput-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    :cond_11
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getData()[B
    .registers 5

    .line 141
    invoke-super {p0}, Ljxl/write/biff/CellValue;->getData()[B

    move-result-object v0

    .line 142
    array-length v1, v0

    add-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    .line 143
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iget v2, p0, Ljxl/write/biff/LabelRecord;->index:I

    array-length v0, v0

    invoke-static {v2, v1, v0}, Ljxl/biff/IntegerHelper;->getFourBytes(I[BI)V

    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljxl/CellType;
    .registers 2

    .line 131
    sget-object v0, Ljxl/CellType;->LABEL:Ljxl/CellType;

    return-object v0
.end method

.method setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V
    .registers 4

    .line 216
    invoke-super {p0, p1, p2, p3}, Ljxl/write/biff/CellValue;->setCellDetails(Ljxl/biff/FormattingRecords;Ljxl/write/biff/SharedStrings;Ljxl/write/biff/WritableSheetImpl;)V

    .line 218
    iput-object p2, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    .line 220
    iget-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljxl/write/biff/SharedStrings;->getIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljxl/write/biff/LabelRecord;->index:I

    .line 225
    iget-object p2, p0, Ljxl/write/biff/LabelRecord;->sharedStrings:Ljxl/write/biff/SharedStrings;

    invoke-virtual {p2, p1}, Ljxl/write/biff/SharedStrings;->get(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/LabelRecord;->contents:Ljava/lang/String;

    return-void
.end method
