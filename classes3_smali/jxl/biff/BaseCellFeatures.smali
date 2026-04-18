.class public Ljxl/biff/BaseCellFeatures;
.super Ljava/lang/Object;
.source "BaseCellFeatures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/biff/BaseCellFeatures$ValidationCondition;
    }
.end annotation


# static fields
.field public static final BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static final NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

.field public static logger:Ljxl/common/Logger;


# instance fields
.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private comment:Ljava/lang/String;

.field private commentDrawing:Ljxl/biff/drawing/Comment;

.field private commentHeight:D

.field private commentWidth:D

.field private dataValidation:Z

.field private dropDown:Z

.field private dvParser:Ljxl/biff/DVParser;

.field private validationSettings:Ljxl/biff/DataValiditySettingsRecord;

.field private writableCell:Ljxl/write/biff/CellValue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    const-class v0, Ljxl/biff/BaseCellFeatures;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    .line 119
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 121
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_BETWEEN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_BETWEEN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 123
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 125
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->NOT_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->NOT_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 127
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 129
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_THAN:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_THAN:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 131
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->GREATER_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->GREATER_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    .line 133
    new-instance v0, Ljxl/biff/BaseCellFeatures$ValidationCondition;

    sget-object v1, Ljxl/biff/DVParser;->LESS_EQUAL:Ljxl/biff/DVParser$Condition;

    invoke-direct {v0, v1}, Ljxl/biff/BaseCellFeatures$ValidationCondition;-><init>(Ljxl/biff/DVParser$Condition;)V

    sput-object v0, Ljxl/biff/BaseCellFeatures;->LESS_EQUAL:Ljxl/biff/BaseCellFeatures$ValidationCondition;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljxl/biff/BaseCellFeatures;)V
    .registers 4

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 152
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 153
    iget-wide v0, p1, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    iput-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    .line 156
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 157
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    .line 159
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 161
    iget-object v0, p1, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    if-eqz v0, :cond_28

    .line 163
    new-instance v0, Ljxl/biff/DVParser;

    iget-object p1, p1, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    invoke-direct {v0, p1}, Ljxl/biff/DVParser;-><init>(Ljxl/biff/DVParser;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    :cond_28
    return-void
.end method

.method private clearValidationSettings()V
    .registers 3

    const/4 v0, 0x0

    .line 460
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 461
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 v1, 0x0

    .line 462
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 463
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 464
    iput-boolean v1, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method


# virtual methods
.method protected getComment()Ljava/lang/String;
    .registers 2

    .line 172
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentHeight()D
    .registers 3

    .line 188
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-wide v0
.end method

.method public getCommentWidth()D
    .registers 3

    .line 180
    iget-wide v0, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    return-wide v0
.end method

.method public getDVParser()Ljxl/biff/DVParser;
    .registers 3

    .line 493
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    if-eqz v0, :cond_5

    return-object v0

    .line 499
    :cond_5
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    if-eqz v0, :cond_17

    .line 501
    new-instance v0, Ljxl/biff/DVParser;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    invoke-virtual {v1}, Ljxl/biff/DataValiditySettingsRecord;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/biff/DVParser;-><init>(Ljxl/biff/DVParser;)V

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDataValidation()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return v0
.end method

.method public hasDropDown()Z
    .registers 2

    .line 474
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    return v0
.end method

.method public removeComment()V
    .registers 4

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    if-eqz v1, :cond_e

    .line 267
    iget-object v2, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v2, v1}, Ljxl/write/biff/CellValue;->removeComment(Ljxl/biff/drawing/Comment;)V

    .line 268
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    :cond_e
    return-void
.end method

.method public removeDataValidation()V
    .registers 6

    .line 277
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-nez v0, :cond_5

    return-void

    .line 283
    :cond_5
    invoke-virtual {p0}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Ljxl/biff/DVParser;->extendedCellsValidation()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 286
    sget-object v1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot remove data validation from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v3}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is part of the shared reference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getFirstRow()I

    move-result v4

    invoke-static {v3, v4}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastColumn()I

    move-result v3

    invoke-virtual {v0}, Ljxl/biff/DVParser;->getLastRow()I

    move-result v0

    invoke-static {v3, v0}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 298
    :cond_54
    iget-object v0, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-virtual {v0}, Ljxl/write/biff/CellValue;->removeDataValidation()V

    .line 299
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    return-void
.end method

.method public setComboBox(Ljxl/biff/drawing/ComboBox;)V
    .registers 2

    .line 484
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method

.method public final setCommentDrawing(Ljxl/biff/drawing/Comment;)V
    .registers 2

    .line 324
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->commentDrawing:Ljxl/biff/drawing/Comment;

    return-void
.end method

.method public setReadComment(Ljava/lang/String;DD)V
    .registers 6

    .line 206
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comment:Ljava/lang/String;

    .line 207
    iput-wide p2, p0, Ljxl/biff/BaseCellFeatures;->commentWidth:D

    .line 208
    iput-wide p4, p0, Ljxl/biff/BaseCellFeatures;->commentHeight:D

    return-void
.end method

.method public setValidationSettings(Ljxl/biff/DataValiditySettingsRecord;)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 216
    :goto_6
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 218
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    .line 219
    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    return-void
.end method

.method public final setWritableCell(Ljxl/write/biff/CellValue;)V
    .registers 2

    .line 198
    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    return-void
.end method

.method public shareDataValidation(Ljxl/biff/BaseCellFeatures;)V
    .registers 4

    .line 515
    iget-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    if-eqz v0, :cond_26

    .line 517
    sget-object p1, Ljxl/biff/BaseCellFeatures;->logger:Ljxl/common/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to share a data validation on cell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljxl/biff/BaseCellFeatures;->writableCell:Ljxl/write/biff/CellValue;

    invoke-static {v1}, Ljxl/CellReferenceHelper;->getCellReference(Ljxl/Cell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " which already has a data validation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    return-void

    .line 522
    :cond_26
    invoke-direct {p0}, Ljxl/biff/BaseCellFeatures;->clearValidationSettings()V

    .line 523
    invoke-virtual {p1}, Ljxl/biff/BaseCellFeatures;->getDVParser()Ljxl/biff/DVParser;

    move-result-object v0

    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->dvParser:Ljxl/biff/DVParser;

    const/4 v0, 0x0

    .line 524
    iput-object v0, p0, Ljxl/biff/BaseCellFeatures;->validationSettings:Ljxl/biff/DataValiditySettingsRecord;

    const/4 v0, 0x1

    .line 525
    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dataValidation:Z

    .line 526
    iget-boolean v0, p1, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    iput-boolean v0, p0, Ljxl/biff/BaseCellFeatures;->dropDown:Z

    .line 527
    iget-object p1, p1, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    iput-object p1, p0, Ljxl/biff/BaseCellFeatures;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-void
.end method
