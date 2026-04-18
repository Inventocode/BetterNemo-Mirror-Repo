.class public Ljxl/write/Number;
.super Ljxl/write/biff/NumberRecord;
.source "Number.java"

# interfaces
.implements Ljxl/NumberCell;


# direct methods
.method public constructor <init>(Ljxl/NumberCell;)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Ljxl/write/biff/NumberRecord;-><init>(Ljxl/NumberCell;)V

    return-void
.end method
