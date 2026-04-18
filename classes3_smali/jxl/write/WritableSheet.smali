.class public interface abstract Ljxl/write/WritableSheet;
.super Ljava/lang/Object;
.source "WritableSheet.java"

# interfaces
.implements Ljxl/Sheet;


# virtual methods
.method public abstract addCell(Ljxl/write/WritableCell;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/WriteException;,
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method

.method public abstract setColumnView(II)V
.end method

.method public abstract setRowView(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljxl/write/biff/RowsExceededException;
        }
    .end annotation
.end method
