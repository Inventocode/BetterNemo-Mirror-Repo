.class Ljxl/write/biff/SheetCopier;
.super Ljava/lang/Object;
.source "SheetCopier.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private autoFilter:Ljxl/biff/AutoFilter;

.field private buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

.field private chartOnly:Z

.field private columnBreaks:Ljava/util/ArrayList;

.field private columnFormats:Ljava/util/TreeSet;

.field private comboBox:Ljxl/biff/drawing/ComboBox;

.field private conditionalFormats:Ljava/util/ArrayList;

.field private dataValidation:Ljxl/biff/DataValidation;

.field private drawings:Ljava/util/ArrayList;

.field private formatRecords:Ljxl/biff/FormattingRecords;

.field private fromSheet:Ljxl/read/biff/SheetImpl;

.field private hyperlinks:Ljava/util/ArrayList;

.field private images:Ljava/util/ArrayList;

.field private maxColumnOutlineLevel:I

.field private maxRowOutlineLevel:I

.field private mergedCells:Ljxl/write/biff/MergedCells;

.field private numRows:I

.field private plsRecord:Ljxl/write/biff/PLSRecord;

.field private rowBreaks:Ljava/util/ArrayList;

.field private sheetWriter:Ljxl/write/biff/SheetWriter;

.field private toSheet:Ljxl/write/biff/WritableSheetImpl;

.field private validatedCells:Ljava/util/ArrayList;

.field private workbookSettings:Ljxl/WorkbookSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    const-class v0, Ljxl/write/biff/SheetCopier;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>(Ljxl/Sheet;Ljxl/write/WritableSheet;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    check-cast p1, Ljxl/read/biff/SheetImpl;

    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    .line 123
    check-cast p2, Ljxl/write/biff/WritableSheetImpl;

    iput-object p2, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    .line 124
    invoke-virtual {p2}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object p1

    invoke-virtual {p1}, Ljxl/write/biff/WritableWorkbookImpl;->getSettings()Ljxl/WorkbookSettings;

    move-result-object p1

    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    const/4 p1, 0x0

    .line 125
    iput-boolean p1, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    return-void
.end method

.method private shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;
    .registers 4

    .line 803
    invoke-interface {p1}, Ljxl/Cell;->getType()Ljxl/CellType;

    move-result-object v0

    .line 806
    sget-object v1, Ljxl/CellType;->LABEL:Ljxl/CellType;

    if-ne v0, v1, :cond_11

    .line 808
    new-instance v0, Ljxl/write/Label;

    check-cast p1, Ljxl/LabelCell;

    invoke-direct {v0, p1}, Ljxl/write/Label;-><init>(Ljxl/LabelCell;)V

    goto/16 :goto_83

    .line 810
    :cond_11
    sget-object v1, Ljxl/CellType;->NUMBER:Ljxl/CellType;

    if-ne v0, v1, :cond_1e

    .line 812
    new-instance v0, Ljxl/write/Number;

    check-cast p1, Ljxl/NumberCell;

    invoke-direct {v0, p1}, Ljxl/write/Number;-><init>(Ljxl/NumberCell;)V

    goto/16 :goto_83

    .line 814
    :cond_1e
    sget-object v1, Ljxl/CellType;->DATE:Ljxl/CellType;

    if-ne v0, v1, :cond_2a

    .line 816
    new-instance v0, Ljxl/write/DateTime;

    check-cast p1, Ljxl/DateCell;

    invoke-direct {v0, p1}, Ljxl/write/DateTime;-><init>(Ljxl/DateCell;)V

    goto :goto_83

    .line 818
    :cond_2a
    sget-object v1, Ljxl/CellType;->BOOLEAN:Ljxl/CellType;

    if-ne v0, v1, :cond_36

    .line 820
    new-instance v0, Ljxl/write/Boolean;

    check-cast p1, Ljxl/BooleanCell;

    invoke-direct {v0, p1}, Ljxl/write/Boolean;-><init>(Ljxl/BooleanCell;)V

    goto :goto_83

    .line 822
    :cond_36
    sget-object v1, Ljxl/CellType;->NUMBER_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_42

    .line 824
    new-instance v0, Ljxl/write/biff/ReadNumberFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadNumberFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 826
    :cond_42
    sget-object v1, Ljxl/CellType;->STRING_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_4e

    .line 828
    new-instance v0, Ljxl/write/biff/ReadStringFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadStringFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 830
    :cond_4e
    sget-object v1, Ljxl/CellType;->BOOLEAN_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_5a

    .line 832
    new-instance v0, Ljxl/write/biff/ReadBooleanFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadBooleanFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 834
    :cond_5a
    sget-object v1, Ljxl/CellType;->DATE_FORMULA:Ljxl/CellType;

    if-ne v0, v1, :cond_66

    .line 836
    new-instance v0, Ljxl/write/biff/ReadDateFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadDateFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 838
    :cond_66
    sget-object v1, Ljxl/CellType;->FORMULA_ERROR:Ljxl/CellType;

    if-ne v0, v1, :cond_72

    .line 840
    new-instance v0, Ljxl/write/biff/ReadErrorFormulaRecord;

    check-cast p1, Ljxl/biff/FormulaData;

    invoke-direct {v0, p1}, Ljxl/write/biff/ReadErrorFormulaRecord;-><init>(Ljxl/biff/FormulaData;)V

    goto :goto_83

    .line 842
    :cond_72
    sget-object v1, Ljxl/CellType;->EMPTY:Ljxl/CellType;

    if-ne v0, v1, :cond_82

    .line 844
    invoke-interface {p1}, Ljxl/Cell;->getCellFormat()Ljxl/format/CellFormat;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 849
    new-instance v0, Ljxl/write/Blank;

    invoke-direct {v0, p1}, Ljxl/write/Blank;-><init>(Ljxl/Cell;)V

    goto :goto_83

    :cond_82
    const/4 v0, 0x0

    :goto_83
    return-object v0
.end method


# virtual methods
.method public copySheet()V
    .registers 14

    .line 219
    invoke-virtual {p0}, Ljxl/write/biff/SheetCopier;->shallowCopyCells()V

    .line 222
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getColumnInfos()[Ljxl/read/biff/ColumnInfoRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_33

    .line 226
    aget-object v3, v0, v2

    .line 227
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getStartColumn()I

    move-result v4

    :goto_14
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getEndColumn()I

    move-result v5

    if-gt v4, v5, :cond_30

    .line 229
    new-instance v5, Ljxl/write/biff/ColumnInfoRecord;

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    invoke-direct {v5, v3, v4, v6}, Ljxl/write/biff/ColumnInfoRecord;-><init>(Ljxl/read/biff/ColumnInfoRecord;ILjxl/biff/FormattingRecords;)V

    .line 231
    invoke-virtual {v3}, Ljxl/read/biff/ColumnInfoRecord;->getHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljxl/write/biff/ColumnInfoRecord;->setHidden(Z)V

    .line 232
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 237
    :cond_33
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getHyperlinks()[Ljxl/Hyperlink;

    move-result-object v0

    const/4 v2, 0x0

    .line 238
    :goto_3a
    array-length v3, v0

    if-ge v2, v3, :cond_4e

    .line 240
    new-instance v3, Ljxl/write/WritableHyperlink;

    aget-object v4, v0, v2

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v3, v4, v5}, Ljxl/write/WritableHyperlink;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    .line 242
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 246
    :cond_4e
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMergedCells()[Ljxl/Range;

    move-result-object v0

    const/4 v2, 0x0

    .line 248
    :goto_55
    array-length v3, v0

    if-ge v2, v3, :cond_6b

    .line 250
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    new-instance v4, Ljxl/biff/SheetRangeImpl;

    aget-object v5, v0, v2

    check-cast v5, Ljxl/biff/SheetRangeImpl;

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-direct {v4, v5, v6}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/biff/SheetRangeImpl;Ljxl/Sheet;)V

    invoke-virtual {v3, v4}, Ljxl/write/biff/MergedCells;->add(Ljxl/Range;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_6b
    const/4 v0, 0x1

    .line 256
    :try_start_6c
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowProperties()[Ljxl/read/biff/RowRecord;

    move-result-object v2

    const/4 v3, 0x0

    .line 258
    :goto_73
    array-length v4, v2

    if-ge v3, v4, :cond_cf

    .line 260
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/write/biff/WritableSheetImpl;->getRowRecord(I)Ljxl/write/biff/RowRecord;

    move-result-object v6

    .line 261
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->hasDefaultFormat()Z

    move-result v4

    if-eqz v4, :cond_97

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getXFIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljxl/biff/FormattingRecords;->getXFRecord(I)Ljxl/biff/XFRecord;

    move-result-object v4

    goto :goto_98

    :cond_97
    const/4 v4, 0x0

    :goto_98
    move-object v12, v4

    .line 263
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->getRowHeight()I

    move-result v7

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->matchesDefaultFontHeight()Z

    move-result v8

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->isCollapsed()Z

    move-result v9

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->getOutlineLevel()I

    move-result v10

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljxl/read/biff/RowRecord;->getGroupStart()Z

    move-result v11

    invoke-virtual/range {v6 .. v12}, Ljxl/write/biff/RowRecord;->setRowDetails(IZZIZLjxl/biff/XFRecord;)V

    .line 269
    iget v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljxl/read/biff/RowRecord;->getRowNumber()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Ljxl/write/biff/SheetCopier;->numRows:I
    :try_end_c9
    .catch Ljxl/write/biff/RowsExceededException; {:try_start_6c .. :try_end_c9} :catch_cc

    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 276
    :catch_cc
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 284
    :cond_cf
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getRowPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_ea

    const/4 v3, 0x0

    .line 288
    :goto_d8
    array-length v4, v2

    if-ge v3, v4, :cond_ea

    .line 290
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 294
    :cond_ea
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getColumnPageBreaks()[I

    move-result-object v2

    if-eqz v2, :cond_105

    const/4 v3, 0x0

    .line 298
    :goto_f3
    array-length v4, v2

    if-ge v3, v4, :cond_105

    .line 300
    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/Integer;

    aget v6, v2, v3

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_f3

    .line 305
    :cond_105
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3}, Ljxl/read/biff/SheetImpl;->getCharts()[Ljxl/biff/drawing/Chart;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljxl/write/biff/SheetWriter;->setCharts([Ljxl/biff/drawing/Chart;)V

    .line 308
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getDrawings()[Ljxl/biff/drawing/DrawingGroupObject;

    move-result-object v2

    const/4 v3, 0x0

    .line 309
    :goto_117
    array-length v4, v2

    if-ge v3, v4, :cond_1df

    .line 311
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Drawing;

    if-eqz v4, :cond_13d

    .line 313
    new-instance v4, Ljxl/write/WritableImage;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljxl/write/WritableImage;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    .line 315
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1db

    .line 318
    :cond_13d
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Comment;

    if-eqz v4, :cond_17f

    .line 320
    new-instance v4, Ljxl/biff/drawing/Comment;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Comment;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 324
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getColumn()I

    move-result v6

    invoke-virtual {v4}, Ljxl/biff/drawing/Comment;->getRow()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljxl/write/biff/WritableSheetImpl;->getWritableCell(II)Ljxl/write/WritableCell;

    move-result-object v5

    check-cast v5, Ljxl/write/biff/CellValue;

    .line 329
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_173

    const/4 v6, 0x1

    goto :goto_174

    :cond_173
    const/4 v6, 0x0

    :goto_174
    invoke-static {v6}, Ljxl/common/Assert;->verify(Z)V

    .line 330
    invoke-virtual {v5}, Ljxl/write/biff/CellValue;->getWritableCellFeatures()Ljxl/write/WritableCellFeatures;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljxl/biff/BaseCellFeatures;->setCommentDrawing(Ljxl/biff/drawing/Comment;)V

    goto :goto_1db

    .line 332
    :cond_17f
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/Button;

    if-eqz v4, :cond_19e

    .line 334
    new-instance v4, Ljxl/biff/drawing/Button;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/Button;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 339
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1db

    .line 341
    :cond_19e
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/ComboBox;

    if-eqz v4, :cond_1bd

    .line 343
    new-instance v4, Ljxl/biff/drawing/ComboBox;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/ComboBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 348
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1db

    .line 350
    :cond_1bd
    aget-object v4, v2, v3

    instance-of v4, v4, Ljxl/biff/drawing/CheckBox;

    if-eqz v4, :cond_1db

    .line 352
    new-instance v4, Ljxl/biff/drawing/CheckBox;

    aget-object v5, v2, v3

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/write/biff/WritableWorkbookImpl;->getDrawingGroup()Ljxl/biff/drawing/DrawingGroup;

    move-result-object v6

    iget-object v7, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v4, v5, v6, v7}, Ljxl/biff/drawing/CheckBox;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;Ljxl/WorkbookSettings;)V

    .line 357
    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1db
    :goto_1db
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_117

    .line 363
    :cond_1df
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getDataValidation()Ljxl/biff/DataValidation;

    move-result-object v2

    if-eqz v2, :cond_20c

    .line 366
    new-instance v3, Ljxl/biff/DataValidation;

    iget-object v4, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v4}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v4

    iget-object v5, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v5}, Ljxl/write/biff/WritableSheetImpl;->getWorkbook()Ljxl/write/biff/WritableWorkbookImpl;

    move-result-object v5

    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->workbookSettings:Ljxl/WorkbookSettings;

    invoke-direct {v3, v2, v4, v5, v6}, Ljxl/biff/DataValidation;-><init>(Ljxl/biff/DataValidation;Ljxl/biff/formula/ExternalSheet;Ljxl/biff/WorkbookMethods;Ljxl/WorkbookSettings;)V

    iput-object v3, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    .line 370
    invoke-virtual {v3}, Ljxl/biff/DataValidation;->getComboBoxObjectId()I

    move-result v2

    if-eqz v2, :cond_20c

    .line 374
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljxl/biff/drawing/ComboBox;

    iput-object v2, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    .line 379
    :cond_20c
    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getConditionalFormats()[Ljxl/biff/ConditionalFormat;

    move-result-object v2

    .line 380
    array-length v3, v2

    if-lez v3, :cond_222

    .line 382
    :goto_215
    array-length v3, v2

    if-ge v1, v3, :cond_222

    .line 384
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_215

    .line 389
    :cond_222
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getAutoFilter()Ljxl/biff/AutoFilter;

    move-result-object v1

    iput-object v1, p0, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    .line 392
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    iget-object v2, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v2}, Ljxl/read/biff/SheetImpl;->getWorkspaceOptions()Ljxl/biff/WorkspaceInformationRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljxl/write/biff/SheetWriter;->setWorkspaceOptions(Ljxl/biff/WorkspaceInformationRecord;)V

    .line 395
    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getSheetBof()Ljxl/read/biff/BOFRecord;

    move-result-object v1

    invoke-virtual {v1}, Ljxl/read/biff/BOFRecord;->isChart()Z

    move-result v1

    if-eqz v1, :cond_248

    .line 397
    iput-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    .line 398
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    invoke-virtual {v0}, Ljxl/write/biff/SheetWriter;->setChartOnly()V

    .line 402
    :cond_248
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v0

    if-eqz v0, :cond_271

    .line 404
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getWorkbookBof()Ljxl/read/biff/BOFRecord;

    move-result-object v0

    invoke-virtual {v0}, Ljxl/read/biff/BOFRecord;->isBiff7()Z

    move-result v0

    if-eqz v0, :cond_264

    .line 406
    sget-object v0, Ljxl/write/biff/SheetCopier;->logger:Ljxl/common/Logger;

    const-string v1, "Cannot copy Biff7 print settings record - ignoring"

    invoke-virtual {v0, v1}, Ljxl/common/Logger;->warn(Ljava/lang/Object;)V

    goto :goto_271

    .line 410
    :cond_264
    new-instance v0, Ljxl/write/biff/PLSRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getPLS()Ljxl/read/biff/PLSRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/PLSRecord;-><init>(Ljxl/read/biff/PLSRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    .line 415
    :cond_271
    :goto_271
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v0

    if-eqz v0, :cond_286

    .line 417
    new-instance v0, Ljxl/write/biff/ButtonPropertySetRecord;

    iget-object v1, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v1}, Ljxl/read/biff/SheetImpl;->getButtonPropertySet()Ljxl/read/biff/ButtonPropertySetRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Ljxl/write/biff/ButtonPropertySetRecord;-><init>(Ljxl/read/biff/ButtonPropertySetRecord;)V

    iput-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    .line 422
    :cond_286
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMaxRowOutlineLevel()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SheetCopier;->maxRowOutlineLevel:I

    .line 423
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getMaxColumnOutlineLevel()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SheetCopier;->maxColumnOutlineLevel:I

    return-void
.end method

.method getAutoFilter()Ljxl/biff/AutoFilter;
    .registers 2

    .line 185
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->autoFilter:Ljxl/biff/AutoFilter;

    return-object v0
.end method

.method getButtonPropertySet()Ljxl/write/biff/ButtonPropertySetRecord;
    .registers 2

    .line 210
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->buttonPropertySet:Ljxl/write/biff/ButtonPropertySetRecord;

    return-object v0
.end method

.method getComboBox()Ljxl/biff/drawing/ComboBox;
    .registers 2

    .line 195
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->comboBox:Ljxl/biff/drawing/ComboBox;

    return-object v0
.end method

.method getDataValidation()Ljxl/biff/DataValidation;
    .registers 2

    .line 190
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->dataValidation:Ljxl/biff/DataValidation;

    return-object v0
.end method

.method public getMaxColumnOutlineLevel()I
    .registers 2

    .line 1110
    iget v0, p0, Ljxl/write/biff/SheetCopier;->maxColumnOutlineLevel:I

    return v0
.end method

.method public getMaxRowOutlineLevel()I
    .registers 2

    .line 1120
    iget v0, p0, Ljxl/write/biff/SheetCopier;->maxRowOutlineLevel:I

    return v0
.end method

.method getPLSRecord()Ljxl/write/biff/PLSRecord;
    .registers 2

    .line 200
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->plsRecord:Ljxl/write/biff/PLSRecord;

    return-object v0
.end method

.method getRows()I
    .registers 2

    .line 1100
    iget v0, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    return v0
.end method

.method isChartOnly()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Ljxl/write/biff/SheetCopier;->chartOnly:Z

    return v0
.end method

.method setColumnBreaks(Ljava/util/ArrayList;)V
    .registers 2

    .line 155
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnBreaks:Ljava/util/ArrayList;

    return-void
.end method

.method setColumnFormats(Ljava/util/TreeSet;)V
    .registers 2

    .line 130
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->columnFormats:Ljava/util/TreeSet;

    return-void
.end method

.method setConditionalFormats(Ljava/util/ArrayList;)V
    .registers 2

    .line 175
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->conditionalFormats:Ljava/util/ArrayList;

    return-void
.end method

.method setDrawings(Ljava/util/ArrayList;)V
    .registers 2

    .line 165
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->drawings:Ljava/util/ArrayList;

    return-void
.end method

.method setFormatRecords(Ljxl/biff/FormattingRecords;)V
    .registers 2

    .line 135
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->formatRecords:Ljxl/biff/FormattingRecords;

    return-void
.end method

.method setHyperlinks(Ljava/util/ArrayList;)V
    .registers 2

    .line 140
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->hyperlinks:Ljava/util/ArrayList;

    return-void
.end method

.method setImages(Ljava/util/ArrayList;)V
    .registers 2

    .line 170
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->images:Ljava/util/ArrayList;

    return-void
.end method

.method setMergedCells(Ljxl/write/biff/MergedCells;)V
    .registers 2

    .line 145
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->mergedCells:Ljxl/write/biff/MergedCells;

    return-void
.end method

.method setRowBreaks(Ljava/util/ArrayList;)V
    .registers 2

    .line 150
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->rowBreaks:Ljava/util/ArrayList;

    return-void
.end method

.method setSheetWriter(Ljxl/write/biff/SheetWriter;)V
    .registers 2

    .line 160
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->sheetWriter:Ljxl/write/biff/SheetWriter;

    return-void
.end method

.method setValidatedCells(Ljava/util/ArrayList;)V
    .registers 2

    .line 180
    iput-object p1, p0, Ljxl/write/biff/SheetCopier;->validatedCells:Ljava/util/ArrayList;

    return-void
.end method

.method shallowCopyCells()V
    .registers 8

    .line 924
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v0}, Ljxl/read/biff/SheetImpl;->getRows()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_40

    .line 929
    iget-object v3, p0, Ljxl/write/biff/SheetCopier;->fromSheet:Ljxl/read/biff/SheetImpl;

    invoke-virtual {v3, v2}, Ljxl/read/biff/SheetImpl;->getRow(I)[Ljxl/Cell;

    move-result-object v3

    const/4 v4, 0x0

    .line 931
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_3d

    .line 933
    aget-object v5, v3, v4

    .line 934
    invoke-direct {p0, v5}, Ljxl/write/biff/SheetCopier;->shallowCopyCell(Ljxl/Cell;)Ljxl/write/WritableCell;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 945
    :try_start_1c
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v6, v5}, Ljxl/write/biff/WritableSheetImpl;->addCell(Ljxl/write/WritableCell;)V

    .line 949
    invoke-interface {v5}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljxl/Cell;->getCellFeatures()Ljxl/CellFeatures;

    move-result-object v6

    invoke-virtual {v6}, Ljxl/biff/BaseCellFeatures;->hasDataValidation()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 952
    iget-object v6, p0, Ljxl/write/biff/SheetCopier;->validatedCells:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljxl/write/WriteException; {:try_start_1c .. :try_end_36} :catch_37

    goto :goto_3a

    .line 958
    :catch_37
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 962
    :cond_40
    iget-object v0, p0, Ljxl/write/biff/SheetCopier;->toSheet:Ljxl/write/biff/WritableSheetImpl;

    invoke-virtual {v0}, Ljxl/write/biff/WritableSheetImpl;->getRows()I

    move-result v0

    iput v0, p0, Ljxl/write/biff/SheetCopier;->numRows:I

    return-void
.end method
