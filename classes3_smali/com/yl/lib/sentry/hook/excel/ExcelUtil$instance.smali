.class public final Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;
.super Ljava/lang/Object;
.source "ExcelUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExcelUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExcelUtil.kt\ncom/yl/lib/sentry/hook/excel/ExcelUtil$instance\n*L\n1#1,186:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

.field private static arial10font:Ljxl/write/WritableFont;

.field private static arial10format:Ljxl/write/WritableCellFormat;

.field private static arial12font:Ljxl/write/WritableFont;

.field private static arial12format:Ljxl/write/WritableCellFormat;

.field private static arial14font:Ljxl/write/WritableFont;

.field private static arial14format:Ljxl/write/WritableCellFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    invoke-direct {v0}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;-><init>()V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->INSTANCE:Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final format()V
    .registers 7

    .line 39
    :try_start_0
    new-instance v0, Ljxl/write/WritableFont;

    sget-object v1, Ljxl/write/WritableFont;->ARIAL:Ljxl/write/WritableFont$FontName;

    const/16 v2, 0xe

    sget-object v3, Ljxl/write/WritableFont;->BOLD:Ljxl/write/WritableFont$BoldStyle;

    invoke-direct {v0, v1, v2, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14font:Ljxl/write/WritableFont;

    .line 40
    sget-object v2, Ljxl/format/Colour;->LIGHT_BLUE:Ljxl/format/Colour;

    invoke-virtual {v0, v2}, Ljxl/write/WritableFont;->setColour(Ljxl/format/Colour;)V

    .line 41
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v2, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14font:Ljxl/write/WritableFont;

    invoke-direct {v0, v2}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14format:Ljxl/write/WritableCellFormat;

    .line 42
    sget-object v2, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v2}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 43
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_27

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_27
    sget-object v2, Ljxl/format/Border;->ALL:Ljxl/format/Border;

    sget-object v4, Ljxl/format/BorderLineStyle;->THIN:Ljxl/format/BorderLineStyle;

    invoke-virtual {v0, v2, v4}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 44
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_35

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_35
    sget-object v5, Ljxl/format/Colour;->VERY_LIGHT_YELLOW:Ljxl/format/Colour;

    invoke-virtual {v0, v5}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 45
    new-instance v0, Ljxl/write/WritableFont;

    const/16 v5, 0xa

    invoke-direct {v0, v1, v5, v3}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;ILjxl/write/WritableFont$BoldStyle;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10font:Ljxl/write/WritableFont;

    .line 46
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v3, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10font:Ljxl/write/WritableFont;

    invoke-direct {v0, v3}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10format:Ljxl/write/WritableCellFormat;

    .line 47
    sget-object v3, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v3}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 48
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_58

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_58
    invoke-virtual {v0, v2, v4}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V

    .line 49
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_62

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_62
    sget-object v3, Ljxl/format/Colour;->GRAY_25:Ljxl/format/Colour;

    invoke-virtual {v0, v3}, Ljxl/write/WritableCellFormat;->setBackground(Ljxl/format/Colour;)V

    .line 50
    new-instance v0, Ljxl/write/WritableFont;

    invoke-direct {v0, v1, v5}, Ljxl/write/WritableFont;-><init>(Ljxl/write/WritableFont$FontName;I)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial12font:Ljxl/write/WritableFont;

    .line 51
    new-instance v0, Ljxl/write/WritableCellFormat;

    sget-object v1, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial12font:Ljxl/write/WritableFont;

    invoke-direct {v0, v1}, Ljxl/write/WritableCellFormat;-><init>(Ljxl/write/WritableFont;)V

    sput-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial12format:Ljxl/write/WritableCellFormat;

    .line 53
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_7e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7e
    sget-object v1, Ljxl/format/Alignment;->CENTRE:Ljxl/format/Alignment;

    invoke-virtual {v0, v1}, Ljxl/write/WritableCellFormat;->setAlignment(Ljxl/format/Alignment;)V

    .line 55
    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial12format:Ljxl/write/WritableCellFormat;

    if-nez v0, :cond_8a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8a
    invoke-virtual {v0, v2, v4}, Ljxl/write/WritableCellFormat;->setBorder(Ljxl/format/Border;Ljxl/format/BorderLineStyle;)V
    :try_end_8d
    .catch Ljxl/write/WriteException; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_92
    return-void
.end method


# virtual methods
.method public final checkDelOldFile(Ljava/lang/String;)V
    .registers 5

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :try_start_5
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 66
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "del old file  name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->i(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final initExcel(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sheetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sheetIndex"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->format()V

    const/4 v0, 0x0

    .line 88
    :try_start_18
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 92
    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 93
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 95
    :cond_37
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 96
    invoke-static {v1}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;)Ljxl/write/WritableWorkbook;

    move-result-object v0

    .line 97
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_44
    if-ge v3, v1, :cond_85

    .line 99
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljxl/write/WritableWorkbook;->createSheet(Ljava/lang/String;I)Ljxl/write/WritableSheet;

    move-result-object v4

    .line 101
    new-instance v5, Ljxl/write/Label;

    sget-object v6, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial14format:Ljxl/write/WritableCellFormat;

    invoke-direct {v5, v2, v2, p1, v6}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v4, v5}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 102
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 103
    array-length v6, v5

    const/4 v7, 0x0

    :goto_6c
    if-ge v7, v6, :cond_7d

    .line 104
    new-instance v8, Ljxl/write/Label;

    aget-object v9, v5, v7

    sget-object v10, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial10format:Ljxl/write/WritableCellFormat;

    invoke-direct {v8, v7, v2, v9, v10}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v4, v8}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    :cond_7d
    const/16 v5, 0x154

    .line 107
    invoke-interface {v4, v2, v5}, Ljxl/write/WritableSheet;->setRowView(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 109
    :cond_85
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->write()V

    .line 110
    sget-object p1, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string p2, "initExcel success"

    invoke-virtual {p1, p2}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_8f} :catch_9a
    .catchall {:try_start_18 .. :try_end_8f} :catchall_98

    .line 117
    :try_start_8f
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_aa

    :catch_93
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_aa

    :catchall_98
    move-exception p1

    goto :goto_ab

    :catch_9a
    move-exception p1

    .line 112
    :try_start_9b
    sget-object p2, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string p3, "initExcel fail"

    invoke-virtual {p2, p3}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_9b .. :try_end_a5} :catchall_98

    if-eqz v0, :cond_aa

    .line 117
    :try_start_a7
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_aa} :catch_93

    :cond_aa
    :goto_aa
    return-void

    :goto_ab
    if-eqz v0, :cond_b5

    :try_start_ad
    invoke-virtual {v0}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_b1

    goto :goto_b5

    :catch_b1
    move-exception p2

    .line 119
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_b5
    :goto_b5
    throw p1
.end method

.method public final writeObjListToExcel(Ljava/util/List;Ljava/lang/String;ILcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "buildDataListener"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_13c

    .line 134
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13c

    const/4 v4, 0x0

    .line 138
    :try_start_18
    new-instance v5, Ljxl/WorkbookSettings;

    invoke-direct {v5}, Ljxl/WorkbookSettings;-><init>()V

    const-string v6, "UTF-8"

    .line 139
    invoke-virtual {v5, v6}, Ljxl/WorkbookSettings;->setEncoding(Ljava/lang/String;)V

    .line 140
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2c} :catch_106
    .catchall {:try_start_18 .. :try_end_2c} :catchall_102

    .line 141
    :try_start_2c
    invoke-static {v5}, Ljxl/Workbook;->getWorkbook(Ljava/io/InputStream;)Ljxl/Workbook;

    move-result-object v6

    .line 142
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v6}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v2}, Ljxl/write/WritableWorkbook;->getSheet(I)Ljxl/write/WritableSheet;

    move-result-object v7

    .line 144
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_42
    if-ge v10, v8, :cond_bd

    .line 145
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b5

    check-cast v11, Lcom/yl/lib/sentry/hook/printer/PrivacyFunBean;

    .line 146
    invoke-interface {v3, v2, v11}, Lcom/yl/lib/sentry/hook/excel/ExcelBuildDataListener;->buildData(ILcom/yl/lib/sentry/hook/printer/PrivacyFunBean;)Ljava/util/List;

    move-result-object v11

    .line 147
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_55
    if-ge v13, v12, :cond_ab

    .line 148
    new-instance v14, Ljxl/write/Label;

    add-int/lit8 v15, v10, 0x1

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/String;

    sget-object v0, Lcom/yl/lib/sentry/hook/excel/ExcelUtil$instance;->arial12format:Ljxl/write/WritableCellFormat;

    invoke-direct {v14, v13, v15, v9, v0}, Ljxl/write/Label;-><init>(IILjava/lang/String;Ljxl/format/CellFormat;)V

    invoke-interface {v7, v14}, Ljxl/write/WritableSheet;->addCell(Ljxl/write/WritableCell;)V

    .line 149
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_74

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_74
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x4

    if-gt v0, v9, :cond_92

    .line 151
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_86

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_86
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-interface {v7, v13, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    goto :goto_a6

    .line 154
    :cond_92
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9b
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-interface {v7, v13, v0}, Ljxl/write/WritableSheet;->setColumnView(II)V

    :goto_a6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    goto :goto_55

    :cond_ab
    add-int/lit8 v10, v10, 0x1

    const/16 v0, 0x1f4

    .line 158
    invoke-interface {v7, v10, v0}, Ljxl/write/WritableSheet;->setRowView(II)V

    move-object/from16 v0, p1

    goto :goto_42

    .line 145
    :cond_b5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.yl.lib.sentry.hook.printer.PrivacyFunBean"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_bd
    invoke-virtual {v4}, Ljxl/write/WritableWorkbook;->write()V

    .line 161
    invoke-virtual {v6}, Ljxl/Workbook;->close()V

    .line 162
    sget-object v0, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "导出Excel success file : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "可执行  adb pull "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_ed} :catch_100
    .catchall {:try_start_2c .. :try_end_ed} :catchall_123

    .line 170
    :try_start_ed
    invoke-virtual {v4}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_f6

    :catch_f1
    move-exception v0

    move-object v1, v0

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :goto_f6
    :try_start_f6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_13c

    :catch_fa
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13c

    :catch_100
    move-exception v0

    goto :goto_108

    :catchall_102
    move-exception v0

    move-object v1, v0

    move-object v5, v4

    goto :goto_125

    :catch_106
    move-exception v0

    move-object v5, v4

    .line 165
    :goto_108
    :try_start_108
    sget-object v1, Lcom/yl/lib/sentry/hook/util/PrivacyLog;->Log:Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;

    const-string v2, "导出Excel fail"

    invoke-virtual {v1, v2}, Lcom/yl/lib/sentry/hook/util/PrivacyLog$Log;->e(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_112
    .catchall {:try_start_108 .. :try_end_112} :catchall_123

    if-eqz v4, :cond_11d

    .line 170
    :try_start_114
    invoke-virtual {v4}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_117} :catch_118

    goto :goto_11d

    :catch_118
    move-exception v0

    move-object v1, v0

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11d
    :goto_11d
    if-eqz v5, :cond_13c

    .line 177
    :try_start_11f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_fa

    goto :goto_13c

    :catchall_123
    move-exception v0

    move-object v1, v0

    :goto_125
    if-eqz v4, :cond_130

    .line 170
    :try_start_127
    invoke-virtual {v4}, Ljxl/write/WritableWorkbook;->close()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12b

    goto :goto_130

    :catch_12b
    move-exception v0

    move-object v2, v0

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_130
    :goto_130
    if-eqz v5, :cond_13b

    .line 177
    :try_start_132
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_136

    goto :goto_13b

    :catch_136
    move-exception v0

    move-object v2, v0

    .line 179
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 180
    :cond_13b
    :goto_13b
    throw v1

    :cond_13c
    :goto_13c
    return-void
.end method
