.class public final Ljxl/SheetSettings;
.super Ljava/lang/Object;
.source "SheetSettings.java"


# static fields
.field private static final DEFAULT_ORDER:Ljxl/format/PageOrder;

.field private static final DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

.field private static final DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;


# instance fields
.field private automaticFormulaCalculation:Z

.field private bottomMargin:D

.field private copies:I

.field private defaultColumnWidth:I

.field private defaultRowHeight:I

.field private displayZeroValues:Z

.field private fitHeight:I

.field private fitToPages:Z

.field private fitWidth:I

.field private footer:Ljxl/HeaderFooter;

.field private footerMargin:D

.field private header:Ljxl/HeaderFooter;

.field private headerMargin:D

.field private hidden:Z

.field private horizontalCentre:Z

.field private horizontalFreeze:I

.field private horizontalPrintResolution:I

.field private leftMargin:D

.field private normalMagnification:I

.field private orientation:Ljxl/format/PageOrientation;

.field private pageBreakPreviewMagnification:I

.field private pageBreakPreviewMode:Z

.field private pageOrder:Ljxl/format/PageOrder;

.field private pageStart:I

.field private paperSize:Ljxl/format/PaperSize;

.field private password:Ljava/lang/String;

.field private passwordHash:I

.field private printArea:Ljxl/Range;

.field private printGridLines:Z

.field private printHeaders:Z

.field private printTitlesCol:Ljxl/Range;

.field private printTitlesRow:Ljxl/Range;

.field private recalculateFormulasBeforeSave:Z

.field private rightMargin:D

.field private scaleFactor:I

.field private selected:Z

.field private sheet:Ljxl/Sheet;

.field private sheetProtected:Z

.field private showGridLines:Z

.field private topMargin:D

.field private verticalCentre:Z

.field private verticalFreeze:I

.field private verticalPrintResolution:I

.field private zoomFactor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 264
    sget-object v0, Ljxl/format/PageOrientation;->PORTRAIT:Ljxl/format/PageOrientation;

    sput-object v0, Ljxl/SheetSettings;->DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

    .line 266
    sget-object v0, Ljxl/format/PageOrder;->RIGHT_THEN_DOWN:Ljxl/format/PageOrder;

    sput-object v0, Ljxl/SheetSettings;->DEFAULT_ORDER:Ljxl/format/PageOrder;

    .line 268
    sget-object v0, Ljxl/format/PaperSize;->A4:Ljxl/format/PaperSize;

    sput-object v0, Ljxl/SheetSettings;->DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;

    return-void
.end method

.method public constructor <init>(Ljxl/Sheet;)V
    .registers 5

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    .line 292
    sget-object p1, Ljxl/SheetSettings;->DEFAULT_ORIENTATION:Ljxl/format/PageOrientation;

    iput-object p1, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    .line 293
    sget-object p1, Ljxl/SheetSettings;->DEFAULT_ORDER:Ljxl/format/PageOrder;

    iput-object p1, p0, Ljxl/SheetSettings;->pageOrder:Ljxl/format/PageOrder;

    .line 294
    sget-object p1, Ljxl/SheetSettings;->DEFAULT_PAPER_SIZE:Ljxl/format/PaperSize;

    iput-object p1, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Ljxl/SheetSettings;->sheetProtected:Z

    .line 296
    iput-boolean p1, p0, Ljxl/SheetSettings;->hidden:Z

    .line 297
    iput-boolean p1, p0, Ljxl/SheetSettings;->selected:Z

    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    .line 298
    iput-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    .line 299
    iput-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    const/16 v0, 0x12c

    .line 300
    iput v0, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    .line 301
    iput v0, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    .line 302
    iput-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    .line 303
    iput-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 304
    iput-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    .line 305
    iput-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    .line 306
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    const/4 v0, 0x1

    .line 307
    iput-boolean v0, p0, Ljxl/SheetSettings;->showGridLines:Z

    .line 308
    iput-boolean p1, p0, Ljxl/SheetSettings;->printGridLines:Z

    .line 309
    iput-boolean p1, p0, Ljxl/SheetSettings;->printHeaders:Z

    .line 310
    iput-boolean p1, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    .line 311
    iput-boolean v0, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    const/16 v1, 0x8

    .line 312
    iput v1, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    const/16 v1, 0xff

    .line 313
    iput v1, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    const/16 v1, 0x64

    .line 314
    iput v1, p0, Ljxl/SheetSettings;->zoomFactor:I

    const/16 v2, 0x3c

    .line 315
    iput v2, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    .line 316
    iput v1, p0, Ljxl/SheetSettings;->normalMagnification:I

    .line 317
    iput p1, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    .line 318
    iput p1, p0, Ljxl/SheetSettings;->verticalFreeze:I

    .line 319
    iput v0, p0, Ljxl/SheetSettings;->copies:I

    .line 320
    new-instance p1, Ljxl/HeaderFooter;

    invoke-direct {p1}, Ljxl/HeaderFooter;-><init>()V

    iput-object p1, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    .line 321
    new-instance p1, Ljxl/HeaderFooter;

    invoke-direct {p1}, Ljxl/HeaderFooter;-><init>()V

    iput-object p1, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    .line 322
    iput-boolean v0, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    .line 323
    iput-boolean v0, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return-void
.end method

.method public constructor <init>(Ljxl/SheetSettings;Ljxl/Sheet;)V
    .registers 9

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    .line 332
    :goto_9
    invoke-static {v1}, Ljxl/common/Assert;->verify(Z)V

    .line 334
    iput-object p2, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    .line 335
    iget-object p2, p1, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    iput-object p2, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    .line 336
    iget-object p2, p1, Ljxl/SheetSettings;->pageOrder:Ljxl/format/PageOrder;

    iput-object p2, p0, Ljxl/SheetSettings;->pageOrder:Ljxl/format/PageOrder;

    .line 337
    iget-object p2, p1, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    iput-object p2, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    .line 338
    iget-boolean p2, p1, Ljxl/SheetSettings;->sheetProtected:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->sheetProtected:Z

    .line 339
    iget-boolean p2, p1, Ljxl/SheetSettings;->hidden:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->hidden:Z

    .line 340
    iput-boolean v0, p0, Ljxl/SheetSettings;->selected:Z

    .line 341
    iget-wide v0, p1, Ljxl/SheetSettings;->headerMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    .line 342
    iget-wide v0, p1, Ljxl/SheetSettings;->footerMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    .line 343
    iget p2, p1, Ljxl/SheetSettings;->scaleFactor:I

    iput p2, p0, Ljxl/SheetSettings;->scaleFactor:I

    .line 344
    iget p2, p1, Ljxl/SheetSettings;->pageStart:I

    iput p2, p0, Ljxl/SheetSettings;->pageStart:I

    .line 345
    iget p2, p1, Ljxl/SheetSettings;->fitWidth:I

    iput p2, p0, Ljxl/SheetSettings;->fitWidth:I

    .line 346
    iget p2, p1, Ljxl/SheetSettings;->fitHeight:I

    iput p2, p0, Ljxl/SheetSettings;->fitHeight:I

    .line 347
    iget p2, p1, Ljxl/SheetSettings;->horizontalPrintResolution:I

    iput p2, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    .line 348
    iget p2, p1, Ljxl/SheetSettings;->verticalPrintResolution:I

    iput p2, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    .line 349
    iget-wide v0, p1, Ljxl/SheetSettings;->leftMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    .line 350
    iget-wide v0, p1, Ljxl/SheetSettings;->rightMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    .line 351
    iget-wide v0, p1, Ljxl/SheetSettings;->topMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    .line 352
    iget-wide v0, p1, Ljxl/SheetSettings;->bottomMargin:D

    iput-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    .line 353
    iget-boolean p2, p1, Ljxl/SheetSettings;->fitToPages:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->fitToPages:Z

    .line 354
    iget-object p2, p1, Ljxl/SheetSettings;->password:Ljava/lang/String;

    iput-object p2, p0, Ljxl/SheetSettings;->password:Ljava/lang/String;

    .line 355
    iget p2, p1, Ljxl/SheetSettings;->passwordHash:I

    iput p2, p0, Ljxl/SheetSettings;->passwordHash:I

    .line 356
    iget p2, p1, Ljxl/SheetSettings;->defaultColumnWidth:I

    iput p2, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    .line 357
    iget p2, p1, Ljxl/SheetSettings;->defaultRowHeight:I

    iput p2, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    .line 358
    iget p2, p1, Ljxl/SheetSettings;->zoomFactor:I

    iput p2, p0, Ljxl/SheetSettings;->zoomFactor:I

    .line 359
    iget p2, p1, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    iput p2, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    .line 360
    iget p2, p1, Ljxl/SheetSettings;->normalMagnification:I

    iput p2, p0, Ljxl/SheetSettings;->normalMagnification:I

    .line 361
    iget-boolean p2, p1, Ljxl/SheetSettings;->showGridLines:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->showGridLines:Z

    .line 362
    iget-boolean p2, p1, Ljxl/SheetSettings;->displayZeroValues:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    .line 363
    iget-boolean p2, p1, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    .line 364
    iget p2, p1, Ljxl/SheetSettings;->horizontalFreeze:I

    iput p2, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    .line 365
    iget p2, p1, Ljxl/SheetSettings;->verticalFreeze:I

    iput p2, p0, Ljxl/SheetSettings;->verticalFreeze:I

    .line 366
    iget-boolean p2, p1, Ljxl/SheetSettings;->horizontalCentre:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    .line 367
    iget-boolean p2, p1, Ljxl/SheetSettings;->verticalCentre:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->verticalCentre:Z

    .line 368
    iget p2, p1, Ljxl/SheetSettings;->copies:I

    iput p2, p0, Ljxl/SheetSettings;->copies:I

    .line 369
    new-instance p2, Ljxl/HeaderFooter;

    iget-object v0, p1, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    invoke-direct {p2, v0}, Ljxl/HeaderFooter;-><init>(Ljxl/HeaderFooter;)V

    iput-object p2, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    .line 370
    new-instance p2, Ljxl/HeaderFooter;

    iget-object v0, p1, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    invoke-direct {p2, v0}, Ljxl/HeaderFooter;-><init>(Ljxl/HeaderFooter;)V

    iput-object p2, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    .line 371
    iget-boolean p2, p1, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    .line 372
    iget-boolean p2, p1, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    iput-boolean p2, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    .line 374
    iget-object p2, p1, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    if-eqz p2, :cond_ec

    .line 376
    new-instance p2, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v4

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintArea()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p2, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    .line 384
    :cond_ec
    iget-object p2, p1, Ljxl/SheetSettings;->printTitlesRow:Ljxl/Range;

    if-eqz p2, :cond_12a

    .line 386
    new-instance p2, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesRow()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesRow()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesRow()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v4

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesRow()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p2, p0, Ljxl/SheetSettings;->printTitlesRow:Ljxl/Range;

    .line 394
    :cond_12a
    iget-object p2, p1, Ljxl/SheetSettings;->printTitlesCol:Ljxl/Range;

    if-eqz p2, :cond_168

    .line 396
    new-instance p2, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesCol()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v2

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesCol()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getTopLeft()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getRow()I

    move-result v3

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesCol()Ljxl/Range;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object v0

    invoke-interface {v0}, Ljxl/Cell;->getColumn()I

    move-result v4

    invoke-virtual {p1}, Ljxl/SheetSettings;->getPrintTitlesCol()Ljxl/Range;

    move-result-object p1

    invoke-interface {p1}, Ljxl/Range;->getBottomRight()Ljxl/Cell;

    move-result-object p1

    invoke-interface {p1}, Ljxl/Cell;->getRow()I

    move-result v5

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object p2, p0, Ljxl/SheetSettings;->printTitlesCol:Ljxl/Range;

    :cond_168
    return-void
.end method


# virtual methods
.method public getAutomaticFormulaCalculation()Z
    .registers 2

    .line 1229
    iget-boolean v0, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    return v0
.end method

.method public getBottomMargin()D
    .registers 3

    .line 778
    iget-wide v0, p0, Ljxl/SheetSettings;->bottomMargin:D

    return-wide v0
.end method

.method public getCopies()I
    .registers 2

    .line 1127
    iget v0, p0, Ljxl/SheetSettings;->copies:I

    return v0
.end method

.method public getDefaultColumnWidth()I
    .registers 2

    .line 866
    iget v0, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    return v0
.end method

.method public getDefaultHeightMargin()D
    .registers 3

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    return-wide v0
.end method

.method public getDefaultRowHeight()I
    .registers 2

    .line 886
    iget v0, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    return v0
.end method

.method public getDefaultWidthMargin()D
    .registers 3

    const-wide/high16 v0, 0x3fe8000000000000L  # 0.75

    return-wide v0
.end method

.method public getDisplayZeroValues()Z
    .registers 2

    .line 975
    iget-boolean v0, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    return v0
.end method

.method public getFitHeight()I
    .registers 2

    .line 658
    iget v0, p0, Ljxl/SheetSettings;->fitHeight:I

    return v0
.end method

.method public getFitToPages()Z
    .registers 2

    .line 807
    iget-boolean v0, p0, Ljxl/SheetSettings;->fitToPages:Z

    return v0
.end method

.method public getFitWidth()I
    .registers 2

    .line 637
    iget v0, p0, Ljxl/SheetSettings;->fitWidth:I

    return v0
.end method

.method public getFooter()Ljxl/HeaderFooter;
    .registers 2

    .line 1167
    iget-object v0, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    return-object v0
.end method

.method public getFooterMargin()D
    .registers 3

    .line 522
    iget-wide v0, p0, Ljxl/SheetSettings;->footerMargin:D

    return-wide v0
.end method

.method public getHeader()Ljxl/HeaderFooter;
    .registers 2

    .line 1137
    iget-object v0, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    return-object v0
.end method

.method public getHeaderMargin()D
    .registers 3

    .line 502
    iget-wide v0, p0, Ljxl/SheetSettings;->headerMargin:D

    return-wide v0
.end method

.method public getHorizontalFreeze()I
    .registers 2

    .line 1076
    iget v0, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    return v0
.end method

.method public getHorizontalPrintResolution()I
    .registers 2

    .line 678
    iget v0, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    return v0
.end method

.method public getLeftMargin()D
    .registers 3

    .line 738
    iget-wide v0, p0, Ljxl/SheetSettings;->leftMargin:D

    return-wide v0
.end method

.method public getNormalMagnification()I
    .registers 2

    .line 953
    iget v0, p0, Ljxl/SheetSettings;->normalMagnification:I

    return v0
.end method

.method public getOrientation()Ljxl/format/PageOrientation;
    .registers 2

    .line 422
    iget-object v0, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    return-object v0
.end method

.method public getPageBreakPreviewMagnification()I
    .registers 2

    .line 931
    iget v0, p0, Ljxl/SheetSettings;->pageBreakPreviewMagnification:I

    return v0
.end method

.method public getPageBreakPreviewMode()Z
    .registers 2

    .line 1015
    iget-boolean v0, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    return v0
.end method

.method public getPageOrder()Ljxl/format/PageOrder;
    .registers 2

    .line 432
    iget-object v0, p0, Ljxl/SheetSettings;->pageOrder:Ljxl/format/PageOrder;

    return-object v0
.end method

.method public getPageStart()I
    .registers 2

    .line 615
    iget v0, p0, Ljxl/SheetSettings;->pageStart:I

    return v0
.end method

.method public getPaperSize()Ljxl/format/PaperSize;
    .registers 2

    .line 462
    iget-object v0, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 826
    iget-object v0, p0, Ljxl/SheetSettings;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordHash()I
    .registers 2

    .line 846
    iget v0, p0, Ljxl/SheetSettings;->passwordHash:I

    return v0
.end method

.method public getPrintArea()Ljxl/Range;
    .registers 2

    .line 1278
    iget-object v0, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    return-object v0
.end method

.method public getPrintGridLines()Z
    .registers 2

    .line 1035
    iget-boolean v0, p0, Ljxl/SheetSettings;->printGridLines:Z

    return v0
.end method

.method public getPrintHeaders()Z
    .registers 2

    .line 1055
    iget-boolean v0, p0, Ljxl/SheetSettings;->printHeaders:Z

    return v0
.end method

.method public getPrintTitlesCol()Ljxl/Range;
    .registers 2

    .line 1342
    iget-object v0, p0, Ljxl/SheetSettings;->printTitlesCol:Ljxl/Range;

    return-object v0
.end method

.method public getPrintTitlesRow()Ljxl/Range;
    .registers 2

    .line 1331
    iget-object v0, p0, Ljxl/SheetSettings;->printTitlesRow:Ljxl/Range;

    return-object v0
.end method

.method public getRecalculateFormulasBeforeSave()Z
    .registers 2

    .line 1251
    iget-boolean v0, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return v0
.end method

.method public getRightMargin()D
    .registers 3

    .line 718
    iget-wide v0, p0, Ljxl/SheetSettings;->rightMargin:D

    return-wide v0
.end method

.method public getScaleFactor()I
    .registers 2

    .line 595
    iget v0, p0, Ljxl/SheetSettings;->scaleFactor:I

    return v0
.end method

.method public getShowGridLines()Z
    .registers 2

    .line 995
    iget-boolean v0, p0, Ljxl/SheetSettings;->showGridLines:Z

    return v0
.end method

.method public getTopMargin()D
    .registers 3

    .line 758
    iget-wide v0, p0, Ljxl/SheetSettings;->topMargin:D

    return-wide v0
.end method

.method public getVerticalFreeze()I
    .registers 2

    .line 1097
    iget v0, p0, Ljxl/SheetSettings;->verticalFreeze:I

    return v0
.end method

.method public getVerticalPrintResolution()I
    .registers 2

    .line 698
    iget v0, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    return v0
.end method

.method public getZoomFactor()I
    .registers 2

    .line 908
    iget v0, p0, Ljxl/SheetSettings;->zoomFactor:I

    return v0
.end method

.method public isHidden()Z
    .registers 2

    .line 542
    iget-boolean v0, p0, Ljxl/SheetSettings;->hidden:Z

    return v0
.end method

.method public isHorizontalCentre()Z
    .registers 2

    .line 1177
    iget-boolean v0, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    return v0
.end method

.method public isProtected()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Ljxl/SheetSettings;->sheetProtected:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .line 572
    iget-boolean v0, p0, Ljxl/SheetSettings;->selected:Z

    return v0
.end method

.method public isVerticalCentre()Z
    .registers 2

    .line 1197
    iget-boolean v0, p0, Ljxl/SheetSettings;->verticalCentre:Z

    return v0
.end method

.method public setAutomaticFormulaCalculation(Z)V
    .registers 2

    .line 1218
    iput-boolean p1, p0, Ljxl/SheetSettings;->automaticFormulaCalculation:Z

    return-void
.end method

.method public setBottomMargin(D)V
    .registers 3

    .line 768
    iput-wide p1, p0, Ljxl/SheetSettings;->bottomMargin:D

    return-void
.end method

.method public setCopies(I)V
    .registers 2

    .line 1117
    iput p1, p0, Ljxl/SheetSettings;->copies:I

    return-void
.end method

.method public setDefaultColumnWidth(I)V
    .registers 2

    .line 876
    iput p1, p0, Ljxl/SheetSettings;->defaultColumnWidth:I

    return-void
.end method

.method public setDefaultRowHeight(I)V
    .registers 2

    .line 896
    iput p1, p0, Ljxl/SheetSettings;->defaultRowHeight:I

    return-void
.end method

.method public setDisplayZeroValues(Z)V
    .registers 2

    .line 985
    iput-boolean p1, p0, Ljxl/SheetSettings;->displayZeroValues:Z

    return-void
.end method

.method public setFitHeight(I)V
    .registers 2

    .line 647
    iput p1, p0, Ljxl/SheetSettings;->fitHeight:I

    const/4 p1, 0x1

    .line 648
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFitToPages(Z)V
    .registers 2

    .line 816
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFitWidth(I)V
    .registers 2

    .line 626
    iput p1, p0, Ljxl/SheetSettings;->fitWidth:I

    const/4 p1, 0x1

    .line 627
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setFooter(Ljxl/HeaderFooter;)V
    .registers 2

    .line 1157
    iput-object p1, p0, Ljxl/SheetSettings;->footer:Ljxl/HeaderFooter;

    return-void
.end method

.method public setFooterMargin(D)V
    .registers 3

    .line 512
    iput-wide p1, p0, Ljxl/SheetSettings;->footerMargin:D

    return-void
.end method

.method public setHeader(Ljxl/HeaderFooter;)V
    .registers 2

    .line 1147
    iput-object p1, p0, Ljxl/SheetSettings;->header:Ljxl/HeaderFooter;

    return-void
.end method

.method public setHeaderMargin(D)V
    .registers 3

    .line 492
    iput-wide p1, p0, Ljxl/SheetSettings;->headerMargin:D

    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    .line 532
    iput-boolean p1, p0, Ljxl/SheetSettings;->hidden:Z

    return-void
.end method

.method public setHorizontalCentre(Z)V
    .registers 2

    .line 1187
    iput-boolean p1, p0, Ljxl/SheetSettings;->horizontalCentre:Z

    return-void
.end method

.method public setHorizontalFreeze(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1086
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/SheetSettings;->horizontalFreeze:I

    return-void
.end method

.method public setHorizontalPrintResolution(I)V
    .registers 2

    .line 668
    iput p1, p0, Ljxl/SheetSettings;->horizontalPrintResolution:I

    return-void
.end method

.method public setLeftMargin(D)V
    .registers 3

    .line 728
    iput-wide p1, p0, Ljxl/SheetSettings;->leftMargin:D

    return-void
.end method

.method public setOrientation(Ljxl/format/PageOrientation;)V
    .registers 2

    .line 412
    iput-object p1, p0, Ljxl/SheetSettings;->orientation:Ljxl/format/PageOrientation;

    return-void
.end method

.method public setPageBreakPreviewMode(Z)V
    .registers 2

    .line 1025
    iput-boolean p1, p0, Ljxl/SheetSettings;->pageBreakPreviewMode:Z

    return-void
.end method

.method public setPageOrder(Ljxl/format/PageOrder;)V
    .registers 2

    .line 442
    iput-object p1, p0, Ljxl/SheetSettings;->pageOrder:Ljxl/format/PageOrder;

    return-void
.end method

.method public setPageStart(I)V
    .registers 2

    .line 605
    iput p1, p0, Ljxl/SheetSettings;->pageStart:I

    return-void
.end method

.method public setPaperSize(Ljxl/format/PaperSize;)V
    .registers 2

    .line 452
    iput-object p1, p0, Ljxl/SheetSettings;->paperSize:Ljxl/format/PaperSize;

    return-void
.end method

.method public setPasswordHash(I)V
    .registers 2

    .line 856
    iput p1, p0, Ljxl/SheetSettings;->passwordHash:I

    return-void
.end method

.method public setPrintArea(IIII)V
    .registers 12

    .line 1267
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/SheetSettings;->printArea:Ljxl/Range;

    return-void
.end method

.method public setPrintGridLines(Z)V
    .registers 2

    .line 1045
    iput-boolean p1, p0, Ljxl/SheetSettings;->printGridLines:Z

    return-void
.end method

.method public setPrintHeaders(Z)V
    .registers 2

    .line 1065
    iput-boolean p1, p0, Ljxl/SheetSettings;->printHeaders:Z

    return-void
.end method

.method public setPrintTitlesCol(II)V
    .registers 10

    .line 1320
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    const/4 v3, 0x0

    const v5, 0xffff

    move-object v0, v6

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/SheetSettings;->printTitlesCol:Ljxl/Range;

    return-void
.end method

.method public setPrintTitlesRow(II)V
    .registers 10

    .line 1307
    new-instance v6, Ljxl/biff/SheetRangeImpl;

    iget-object v1, p0, Ljxl/SheetSettings;->sheet:Ljxl/Sheet;

    const/4 v2, 0x0

    const/16 v4, 0xff

    move-object v0, v6

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljxl/biff/SheetRangeImpl;-><init>(Ljxl/Sheet;IIII)V

    iput-object v6, p0, Ljxl/SheetSettings;->printTitlesRow:Ljxl/Range;

    return-void
.end method

.method public setProtected(Z)V
    .registers 2

    .line 482
    iput-boolean p1, p0, Ljxl/SheetSettings;->sheetProtected:Z

    return-void
.end method

.method public setRecalculateFormulasBeforeSave(Z)V
    .registers 2

    .line 1240
    iput-boolean p1, p0, Ljxl/SheetSettings;->recalculateFormulasBeforeSave:Z

    return-void
.end method

.method public setRightMargin(D)V
    .registers 3

    .line 708
    iput-wide p1, p0, Ljxl/SheetSettings;->rightMargin:D

    return-void
.end method

.method public setScaleFactor(I)V
    .registers 2

    .line 584
    iput p1, p0, Ljxl/SheetSettings;->scaleFactor:I

    const/4 p1, 0x0

    .line 585
    iput-boolean p1, p0, Ljxl/SheetSettings;->fitToPages:Z

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 562
    iput-boolean p1, p0, Ljxl/SheetSettings;->selected:Z

    return-void
.end method

.method public setShowGridLines(Z)V
    .registers 2

    .line 1005
    iput-boolean p1, p0, Ljxl/SheetSettings;->showGridLines:Z

    return-void
.end method

.method public setTopMargin(D)V
    .registers 3

    .line 748
    iput-wide p1, p0, Ljxl/SheetSettings;->topMargin:D

    return-void
.end method

.method public setVerticalCentre(Z)V
    .registers 2

    .line 1207
    iput-boolean p1, p0, Ljxl/SheetSettings;->verticalCentre:Z

    return-void
.end method

.method public setVerticalFreeze(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1107
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Ljxl/SheetSettings;->verticalFreeze:I

    return-void
.end method

.method public setVerticalPrintResolution(I)V
    .registers 2

    .line 688
    iput p1, p0, Ljxl/SheetSettings;->verticalPrintResolution:I

    return-void
.end method

.method public setZoomFactor(I)V
    .registers 2

    .line 920
    iput p1, p0, Ljxl/SheetSettings;->zoomFactor:I

    return-void
.end method
