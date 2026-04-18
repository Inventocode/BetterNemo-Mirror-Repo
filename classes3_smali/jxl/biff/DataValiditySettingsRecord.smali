.class public Ljxl/biff/DataValiditySettingsRecord;
.super Ljxl/biff/WritableRecordData;
.source "DataValiditySettingsRecord.java"


# instance fields
.field private data:[B

.field private dvParser:Ljxl/biff/DVParser;

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private workbook:Ljxl/biff/WorkbookMethods;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Ljxl/biff/DataValiditySettingsRecord;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DVParser;)V
    .registers 3

    .line 129
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 130
    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    return-void
.end method

.method constructor <init>(Ljxl/biff/DataValiditySettingsRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .registers 6

    .line 109
    sget-object v0, Ljxl/biff/Type;->DV:Ljxl/biff/Type;

    invoke-direct {p0, v0}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/biff/Type;)V

    .line 111
    iput-object p3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    .line 112
    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 113
    iput-object p4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_11

    const/4 p3, 0x1

    goto :goto_12

    :cond_11
    const/4 p3, 0x0

    .line 115
    :goto_12
    invoke-static {p3}, Ljxl/common/Assert;->verify(Z)V

    if-eqz p2, :cond_18

    goto :goto_19

    :cond_18
    const/4 p4, 0x0

    .line 116
    :goto_19
    invoke-static {p4}, Ljxl/common/Assert;->verify(Z)V

    .line 118
    iget-object p2, p1, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    array-length p2, p2

    new-array p2, p2, [B

    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    .line 119
    iget-object p1, p1, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    array-length p3, p2

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Ljxl/read/biff/Record;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .registers 5

    .line 81
    invoke-direct {p0, p1}, Ljxl/biff/WritableRecordData;-><init>(Ljxl/read/biff/Record;)V

    .line 83
    invoke-virtual {p1}, Ljxl/read/biff/Record;->getData()[B

    move-result-object p1

    iput-object p1, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    .line 84
    iput-object p2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 85
    iput-object p3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    .line 86
    iput-object p4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    return-void
.end method

.method private initialize()V
    .registers 6

    .line 138
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_13

    .line 140
    new-instance v0, Ljxl/biff/DVParser;

    iget-object v1, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    iget-object v2, p0, Ljxl/biff/DataValiditySettingsRecord;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v3, p0, Ljxl/biff/DataValiditySettingsRecord;->workbook:Ljxl/biff/WorkbookMethods;

    iget-object v4, p0, Ljxl/biff/DataValiditySettingsRecord;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v0, v1, v2, v3, v4}, Ljxl/biff/DVParser;-><init>([BLjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    :cond_13
    return-void
.end method


# virtual methods
.method getDVParser()Ljxl/biff/DVParser;
    .registers 2

    .line 296
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    return-object v0
.end method

.method public getData()[B
    .registers 2

    .line 152
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_7

    .line 154
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->data:[B

    return-object v0

    .line 157
    :cond_7
    invoke-virtual {v0}, Ljxl/biff/DVParser;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public getFirstColumn()I
    .registers 2

    .line 227
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_7

    .line 229
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 232
    :cond_7
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v0

    return v0
.end method

.method public getFirstRow()I
    .registers 2

    .line 257
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_7

    .line 259
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 262
    :cond_7
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v0

    return v0
.end method

.method public getLastColumn()I
    .registers 2

    .line 242
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_7

    .line 244
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 247
    :cond_7
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v0

    return v0
.end method

.method public getLastRow()I
    .registers 2

    .line 272
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    if-nez v0, :cond_7

    .line 274
    invoke-direct {p0}, Ljxl/biff/DataValiditySettingsRecord;->initialize()V

    .line 277
    :cond_7
    iget-object v0, p0, Ljxl/biff/DataValiditySettingsRecord;->dvParser:Ljxl/biff/DVParser;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v0

    return v0
.end method

.method setDataValidation(Ljxl/biff/DataValidation;)V
    .registers 2

    return-void
.end method
