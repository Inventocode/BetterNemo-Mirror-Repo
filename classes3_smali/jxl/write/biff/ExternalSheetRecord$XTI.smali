.class Ljxl/write/biff/ExternalSheetRecord$XTI;
.super Ljava/lang/Object;
.source "ExternalSheetRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/write/biff/ExternalSheetRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XTI"
.end annotation


# instance fields
.field firstTab:I

.field lastTab:I

.field supbookIndex:I


# direct methods
.method constructor <init>(III)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->supbookIndex:I

    .line 57
    iput p2, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 58
    iput p3, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    return-void
.end method


# virtual methods
.method sheetInserted(I)V
    .registers 3

    .line 63
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    if-lt v0, p1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 65
    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->firstTab:I

    .line 68
    :cond_8
    iget v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    if-lt v0, p1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 70
    iput v0, p0, Ljxl/write/biff/ExternalSheetRecord$XTI;->lastTab:I

    :cond_10
    return-void
.end method
