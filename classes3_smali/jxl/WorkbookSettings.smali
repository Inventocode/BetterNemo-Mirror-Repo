.class public final Ljxl/WorkbookSettings;
.super Ljava/lang/Object;
.source "WorkbookSettings.java"


# static fields
.field private static logger:Ljxl/common/Logger;


# instance fields
.field private arrayGrowSize:I

.field private autoFilterDisabled:Z

.field private cellValidationDisabled:Z

.field private drawingsDisabled:Z

.field private encoding:Ljava/lang/String;

.field private excel9file:Z

.field private excelDisplayLanguage:Ljava/lang/String;

.field private excelRegionalSettings:Ljava/lang/String;

.field private functionNames:Ljxl/biff/formula/FunctionNames;

.field private gcDisabled:Z

.field private hideobj:I

.field private ignoreBlankCells:Z

.field private initialFileSize:I

.field private locale:Ljava/util/Locale;

.field private localeFunctionNames:Ljava/util/HashMap;

.field private mergedCellCheckingDisabled:Z

.field private namesDisabled:Z

.field private propertySetsDisabled:Z

.field private rationalizationDisabled:Z

.field private refreshAll:Z

.field private template:Z

.field private temporaryFileDuringWriteDirectory:Ljava/io/File;

.field private useTemporaryFileDuringWrite:Z

.field private windowProtected:Z

.field private writeAccess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Ljxl/WorkbookSettings;

    invoke-static {v0}, Ljxl/common/Logger;->getLogger(Ljava/lang/Class;)Ljxl/common/Logger;

    move-result-object v0

    sput-object v0, Ljxl/WorkbookSettings;->logger:Ljxl/common/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-string v0, "jxl.encoding"

    const-string v1, "jxl.country"

    const-string v2, "jxl.lang"

    const-string v3, "Error accessing system properties."

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    .line 207
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->excel9file:Z

    const/high16 v5, 0x500000

    .line 254
    iput v5, p0, Ljxl/WorkbookSettings;->initialFileSize:I

    const/high16 v5, 0x100000

    .line 255
    iput v5, p0, Ljxl/WorkbookSettings;->arrayGrowSize:I

    .line 256
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    .line 257
    sget-object v5, Ljxl/biff/CountryCode;->USA:Ljxl/biff/CountryCode;

    invoke-virtual {v5}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljxl/WorkbookSettings;->excelDisplayLanguage:Ljava/lang/String;

    .line 258
    sget-object v5, Ljxl/biff/CountryCode;->UK:Ljxl/biff/CountryCode;

    invoke-virtual {v5}, Ljxl/biff/CountryCode;->getCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljxl/WorkbookSettings;->excelRegionalSettings:Ljava/lang/String;

    .line 259
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->refreshAll:Z

    .line 260
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->template:Z

    .line 261
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->excel9file:Z

    .line 262
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->windowProtected:Z

    .line 263
    iput v4, p0, Ljxl/WorkbookSettings;->hideobj:I

    :try_start_37
    const-string v5, "jxl.nowarnings"

    .line 268
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 269
    invoke-virtual {p0, v5}, Ljxl/WorkbookSettings;->setSuppressWarnings(Z)V

    const-string v5, "jxl.nodrawings"

    .line 270
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    const-string v5, "jxl.nonames"

    .line 271
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->namesDisabled:Z

    const-string v5, "jxl.nogc"

    .line 272
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->gcDisabled:Z

    const-string v5, "jxl.norat"

    .line 273
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->rationalizationDisabled:Z

    const-string v5, "jxl.nomergedcellchecks"

    .line 274
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->mergedCellCheckingDisabled:Z

    const-string v5, "jxl.noformulaadjust"

    .line 276
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    const-string v5, "jxl.nopropertysets"

    .line 278
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->propertySetsDisabled:Z

    const-string v5, "jxl.ignoreblanks"

    .line 279
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->ignoreBlankCells:Z

    const-string v5, "jxl.nocellvalidation"

    .line 280
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Ljxl/WorkbookSettings;->cellValidationDisabled:Z

    const-string v5, "jxl.autofilter"

    .line 281
    invoke-static {v5}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8e

    const/4 v4, 0x1

    :cond_8e
    iput-boolean v4, p0, Ljxl/WorkbookSettings;->autoFilterDisabled:Z

    const-string v4, "jxl.usetemporaryfileduringwrite"

    .line 283
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Ljxl/WorkbookSettings;->useTemporaryFileDuringWrite:Z

    const-string v4, "jxl.temporaryfileduringwritedirectory"

    .line 285
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a7

    .line 290
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Ljxl/WorkbookSettings;->temporaryFileDuringWriteDirectory:Ljava/io/File;

    :cond_a7
    const-string v4, "file.encoding"

    .line 293
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/SecurityException; {:try_start_37 .. :try_end_af} :catch_b0

    goto :goto_b6

    :catch_b0
    move-exception v4

    .line 297
    sget-object v5, Ljxl/WorkbookSettings;->logger:Ljxl/common/Logger;

    invoke-virtual {v5, v3, v4}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 303
    :goto_b6
    :try_start_b6
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d3

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c3

    goto :goto_d3

    .line 310
    :cond_c3
    new-instance v4, Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v2, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    goto :goto_d9

    .line 306
    :cond_d3
    :goto_d3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    .line 314
    :goto_d9
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f2

    .line 316
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;
    :try_end_e5
    .catch Ljava/lang/SecurityException; {:try_start_b6 .. :try_end_e5} :catch_e6

    goto :goto_f2

    :catch_e6
    move-exception v0

    .line 321
    sget-object v1, Ljxl/WorkbookSettings;->logger:Ljxl/common/Logger;

    invoke-virtual {v1, v3, v0}, Ljxl/common/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    :cond_f2
    :goto_f2
    return-void
.end method


# virtual methods
.method public getArrayGrowSize()I
    .registers 2

    .line 347
    iget v0, p0, Ljxl/WorkbookSettings;->arrayGrowSize:I

    return v0
.end method

.method public getAutoFilterDisabled()Z
    .registers 2

    .line 706
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->autoFilterDisabled:Z

    return v0
.end method

.method public getCellValidationDisabled()Z
    .registers 2

    .line 656
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->cellValidationDisabled:Z

    return v0
.end method

.method public getDrawingsDisabled()Z
    .registers 2

    .line 380
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .line 549
    iget-object v0, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExcel9File()Z
    .registers 2

    .line 825
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->excel9file:Z

    return v0
.end method

.method public getExcelDisplayLanguage()Ljava/lang/String;
    .registers 2

    .line 666
    iget-object v0, p0, Ljxl/WorkbookSettings;->excelDisplayLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getExcelRegionalSettings()Ljava/lang/String;
    .registers 2

    .line 676
    iget-object v0, p0, Ljxl/WorkbookSettings;->excelRegionalSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFunctionNames()Ljxl/biff/formula/FunctionNames;
    .registers 4

    .line 571
    iget-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    if-nez v0, :cond_22

    .line 573
    iget-object v0, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    iget-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxl/biff/formula/FunctionNames;

    iput-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    if-nez v0, :cond_22

    .line 579
    new-instance v0, Ljxl/biff/formula/FunctionNames;

    iget-object v1, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljxl/biff/formula/FunctionNames;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    .line 580
    iget-object v1, p0, Ljxl/WorkbookSettings;->localeFunctionNames:Ljava/util/HashMap;

    iget-object v2, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :cond_22
    iget-object v0, p0, Ljxl/WorkbookSettings;->functionNames:Ljxl/biff/formula/FunctionNames;

    return-object v0
.end method

.method public getGCDisabled()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->gcDisabled:Z

    return v0
.end method

.method public getHideobj()I
    .registers 2

    .line 861
    iget v0, p0, Ljxl/WorkbookSettings;->hideobj:I

    return v0
.end method

.method public getIgnoreBlanks()Z
    .registers 2

    .line 636
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->ignoreBlankCells:Z

    return v0
.end method

.method public getInitialFileSize()I
    .registers 2

    .line 370
    iget v0, p0, Ljxl/WorkbookSettings;->initialFileSize:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    .line 539
    iget-object v0, p0, Ljxl/WorkbookSettings;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMergedCellCheckingDisabled()Z
    .registers 2

    .line 451
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->mergedCellCheckingDisabled:Z

    return v0
.end method

.method public getNamesDisabled()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->namesDisabled:Z

    return v0
.end method

.method public getPropertySetsDisabled()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->propertySetsDisabled:Z

    return v0
.end method

.method public getRationalizationDisabled()Z
    .registers 2

    .line 441
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->rationalizationDisabled:Z

    return v0
.end method

.method public getRefreshAll()Z
    .registers 2

    .line 797
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->refreshAll:Z

    return v0
.end method

.method public getTemplate()Z
    .registers 2

    .line 806
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->template:Z

    return v0
.end method

.method public getTemporaryFileDuringWriteDirectory()Ljava/io/File;
    .registers 2

    .line 774
    iget-object v0, p0, Ljxl/WorkbookSettings;->temporaryFileDuringWriteDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getUseTemporaryFileDuringWrite()Z
    .registers 2

    .line 731
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->useTemporaryFileDuringWrite:Z

    return v0
.end method

.method public getWindowProtected()Z
    .registers 2

    .line 841
    iget-boolean v0, p0, Ljxl/WorkbookSettings;->windowProtected:Z

    return v0
.end method

.method public getWriteAccess()Ljava/lang/String;
    .registers 2

    .line 881
    iget-object v0, p0, Ljxl/WorkbookSettings;->writeAccess:Ljava/lang/String;

    return-object v0
.end method

.method public setCharacterSet(I)V
    .registers 2

    return-void
.end method

.method public setDrawingsDisabled(Z)V
    .registers 2

    .line 420
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->drawingsDisabled:Z

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 559
    iput-object p1, p0, Ljxl/WorkbookSettings;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setExcel9File(Z)V
    .registers 2

    .line 833
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->excel9file:Z

    return-void
.end method

.method public setHideobj(I)V
    .registers 2

    .line 873
    iput p1, p0, Ljxl/WorkbookSettings;->hideobj:I

    return-void
.end method

.method public setRefreshAll(Z)V
    .registers 2

    .line 786
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->refreshAll:Z

    return-void
.end method

.method public setSuppressWarnings(Z)V
    .registers 3

    .line 496
    sget-object v0, Ljxl/WorkbookSettings;->logger:Ljxl/common/Logger;

    invoke-virtual {v0, p1}, Ljxl/common/Logger;->setSuppressWarnings(Z)V

    return-void
.end method

.method public setTemplate(Z)V
    .registers 2

    .line 815
    iput-boolean p1, p0, Ljxl/WorkbookSettings;->template:Z

    return-void
.end method

.method public setWindowProtected(Z)V
    .registers 2

    .line 849
    iget-boolean p1, p0, Ljxl/WorkbookSettings;->windowProtected:Z

    iput-boolean p1, p0, Ljxl/WorkbookSettings;->windowProtected:Z

    return-void
.end method

.method public setWriteAccess(Ljava/lang/String;)V
    .registers 2

    .line 889
    iput-object p1, p0, Ljxl/WorkbookSettings;->writeAccess:Ljava/lang/String;

    return-void
.end method
