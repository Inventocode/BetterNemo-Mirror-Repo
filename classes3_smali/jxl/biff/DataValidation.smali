.class public Ljxl/biff/DataValidation;
.super Ljava/lang/Object;
.source "DataValidation.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private comboBoxObjectId:I

.field private copied:Z

.field private externalSheet:Ljxl/biff/formula/ExternalSheet;

.field private validityList:Ljxl/biff/DataValidityListRecord;

.field private validitySettings:Ljava/util/ArrayList;

.field private workbook:Ljxl/biff/WorkbookMethods;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const-class v0, Ljxl/biff/DataValidation;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/DataValidation;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(ILjxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .registers 5

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 104
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 105
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 107
    iput p1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V
    .registers 9

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p3, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    .line 120
    iput-object p2, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    .line 121
    iput-object p4, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p2, 0x1

    .line 122
    iput-boolean p2, p0, Ljxl/biff/DataValidation;->copied:Z

    .line 123
    new-instance p2, Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValidityList()Ljxl/biff/DataValidityListRecord;

    move-result-object p3

    invoke-direct {p2, p3}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DataValidityListRecord;)V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 125
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 126
    invoke-virtual {p1}, Ljxl/biff/DataValidation;->getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    :goto_23
    array-length p3, p1

    if-ge p2, p3, :cond_3b

    .line 130
    iget-object p3, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    new-instance p4, Ljxl/biff/DataValiditySettingsRecord;

    aget-object v0, p1, p2

    iget-object v1, p0, Ljxl/biff/DataValidation;->externalSheet:Ljxl/biff/formula/ExternalSheet;

    iget-object v2, p0, Ljxl/biff/DataValidation;->workbook:Ljxl/biff/WorkbookMethods;

    iget-object v3, p0, Ljxl/biff/DataValidation;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {p4, v0, v1, v2, v3}, Ljxl/biff/DataValiditySettingsRecord;-><init>(Ljxl/biff/DataValiditySettingsRecord;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_23

    :cond_3b
    return-void
.end method

.method public constructor <init>(Ljxl/biff/DataValidityListRecord;)V
    .registers 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 91
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->getNumberOfSettings()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    return-void
.end method


# virtual methods
.method public add(Ljxl/biff/DataValiditySettingsRecord;)V
    .registers 3

    .line 142
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1, p0}, Ljxl/biff/DataValiditySettingsRecord;->setDataValidation(Ljxl/biff/DataValidation;)V

    .line 145
    iget-boolean p1, p0, Ljxl/biff/DataValidation;->copied:Z

    if-eqz p1, :cond_1b

    .line 148
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-static {p1}, Ljxl/common/Assert;->verify(Z)V

    .line 149
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvAdded()V

    :cond_1b
    return-void
.end method

.method public getComboBoxObjectId()I
    .registers 2

    .line 353
    iget v0, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    return v0
.end method

.method public getDataValidityList()Ljxl/biff/DataValidityListRecord;
    .registers 2

    .line 158
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    return-object v0
.end method

.method public getDataValiditySettings()[Ljxl/biff/DataValiditySettingsRecord;
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljxl/biff/DataValiditySettingsRecord;

    .line 167
    iget-object v1, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljxl/biff/DataValiditySettingsRecord;

    return-object v0
.end method

.method public removeDataValidation(II)V
    .registers 6

    .line 290
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 294
    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstColumn()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastColumn()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getFirstRow()I

    move-result v2

    if-ne v2, p2, :cond_6

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getLastRow()I

    move-result v1

    if-ne v1, p2, :cond_6

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 298
    iget-object p1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1}, Ljxl/biff/DataValidityListRecord;->dvRemoved()V

    :cond_32
    return-void
.end method

.method public write(Ljxl/write/biff/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0xfffd

    if-le v0, v1, :cond_2d

    .line 180
    sget-object v0, Ljxl/biff/DataValidation;->logger:Ljxl/common/Logger;

    const-string v2, "Maximum number of data validations exceeded - truncating..."

    invoke-virtual {v0, v2}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    const v3, 0xfffc

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_2a

    const/4 v4, 0x1

    :cond_2a
    invoke-static {v4}, Ljxl/common/Assert;->verify(Z)V

    .line 187
    :cond_2d
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    if-nez v0, :cond_45

    .line 189
    new-instance v0, Ljxl/biff/DValParser;

    iget v1, p0, Ljxl/biff/DataValidation;->comboBoxObjectId:I

    iget-object v2, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljxl/biff/DValParser;-><init>(II)V

    .line 191
    new-instance v1, Ljxl/biff/DataValidityListRecord;

    invoke-direct {v1, v0}, Ljxl/biff/DataValidityListRecord;-><init>(Ljxl/biff/DValParser;)V

    iput-object v1, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    .line 194
    :cond_45
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {v0}, Ljxl/biff/DataValidityListRecord;->hasDVRecords()Z

    move-result v0

    if-nez v0, :cond_4e

    return-void

    .line 199
    :cond_4e
    iget-object v0, p0, Ljxl/biff/DataValidation;->validityList:Ljxl/biff/DataValidityListRecord;

    invoke-virtual {p1, v0}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    .line 201
    iget-object v0, p0, Ljxl/biff/DataValidation;->validitySettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljxl/biff/DataValiditySettingsRecord;

    .line 204
    invoke-virtual {p1, v1}, Ljxl/write/biff/File;->write(Ljxl/biff/ByteData;)V

    goto :goto_59

    :cond_69
    return-void
.end method
