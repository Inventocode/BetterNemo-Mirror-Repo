.class public Ljxl/write/Boolean;
.super Ljxl/write/biff/BooleanRecord;
.source "Boolean.java"

# interfaces
.implements Ljxl/BooleanCell;


# direct methods
.method public constructor <init>(Ljxl/BooleanCell;)V
    .registers 2

    .line 68
    invoke-direct {p0, p1}, Ljxl/write/biff/BooleanRecord;-><init>(Ljxl/BooleanCell;)V

    return-void
.end method
