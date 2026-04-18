.class public final Ljxl/CellReferenceHelper;
.super Ljava/lang/Object;
.source "CellReferenceHelper.java"


# direct methods
.method public static getCellReference(II)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-static {p0, p1}, Ljxl/biff/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellReference(Ljxl/Cell;)Ljava/lang/String;
    .registers 2

    .line 256
    invoke-interface {p0}, Ljxl/Cell;->getColumn()I

    move-result v0

    invoke-interface {p0}, Ljxl/Cell;->getRow()I

    move-result p0

    invoke-static {v0, p0}, Ljxl/CellReferenceHelper;->getCellReference(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCellReference(IILjava/lang/StringBuffer;)V
    .registers 3

    .line 46
    invoke-static {p0, p1, p2}, Ljxl/biff/CellReferenceHelper;->getCellReference(IILjava/lang/StringBuffer;)V

    return-void
.end method
