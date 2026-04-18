.class public abstract Ljxl/Workbook;
.super Ljava/lang/Object;
.source "Workbook.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createWorkbook(Ljava/io/File;)Ljxl/write/WritableWorkbook;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/Workbook;)Ljxl/write/WritableWorkbook;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, p1, v0}, Ljxl/Workbook;->createWorkbook(Ljava/io/File;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;

    move-result-object p0

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/Workbook;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 339
    new-instance p0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;Ljxl/Workbook;ZLjxl/WorkbookSettings;)V

    return-object p0
.end method

.method public static createWorkbook(Ljava/io/File;Ljxl/WorkbookSettings;)Ljxl/write/WritableWorkbook;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 302
    new-instance p0, Ljxl/write/biff/WritableWorkbookImpl;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Ljxl/write/biff/WritableWorkbookImpl;-><init>(Ljava/io/OutputStream;ZLjxl/WorkbookSettings;)V

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.6.12"

    return-object v0
.end method

.method public static getWorkbook(Ljava/io/InputStream;)Ljxl/Workbook;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 253
    new-instance v0, Ljxl/WorkbookSettings;

    invoke-direct {v0}, Ljxl/WorkbookSettings;-><init>()V

    invoke-static {p0, v0}, Ljxl/Workbook;->getWorkbook(Ljava/io/InputStream;Ljxl/WorkbookSettings;)Ljxl/Workbook;

    move-result-object p0

    return-object p0
.end method

.method public static getWorkbook(Ljava/io/InputStream;Ljxl/WorkbookSettings;)Ljxl/Workbook;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljxl/read/biff/BiffException;
        }
    .end annotation

    .line 268
    new-instance v0, Ljxl/read/biff/File;

    invoke-direct {v0, p0, p1}, Ljxl/read/biff/File;-><init>(Ljava/io/InputStream;Ljxl/WorkbookSettings;)V

    .line 270
    new-instance p0, Ljxl/read/biff/WorkbookParser;

    invoke-direct {p0, v0, p1}, Ljxl/read/biff/WorkbookParser;-><init>(Ljxl/read/biff/File;Ljxl/WorkbookSettings;)V

    .line 271
    invoke-virtual {p0}, Ljxl/Workbook;->parse()V

    return-object p0
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getNumberOfSheets()I
.end method

.method public abstract getSheet(I)Ljxl/Sheet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract isProtected()Z
.end method

.method protected abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/read/biff/BiffException;,
            Ljxl/read/biff/PasswordException;
        }
    .end annotation
.end method
