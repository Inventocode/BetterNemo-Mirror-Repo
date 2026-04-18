.class public Ljxl/write/DateTime;
.super Ljxl/write/biff/DateRecord;
.source "DateTime.java"

# interfaces
.implements Ljxl/DateCell;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljxl/write/biff/DateRecord$GMTDate;

    invoke-direct {v0}, Ljxl/write/biff/DateRecord$GMTDate;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljxl/DateCell;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Ljxl/write/biff/DateRecord;-><init>(Ljxl/DateCell;)V

    return-void
.end method
