.class public Ljxl/write/WritableCellFeatures;
.super Ljxl/CellFeatures;
.source "WritableCellFeatures.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljxl/CellFeatures;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljxl/CellFeatures;)V
    .registers 2

    .line 64
    invoke-direct {p0, p1}, Ljxl/CellFeatures;-><init>(Ljxl/CellFeatures;)V

    return-void
.end method


# virtual methods
.method public removeComment()V
    .registers 1

    .line 95
    invoke-super {p0}, Ljxl/biff/BaseCellFeatures;->removeComment()V

    return-void
.end method

.method public removeDataValidation()V
    .registers 1

    .line 104
    invoke-super {p0}, Ljxl/biff/BaseCellFeatures;->removeDataValidation()V

    return-void
.end method
