.class public Ljxl/write/WritableImage;
.super Ljxl/biff/drawing/Drawing;
.source "WritableImage.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V
    .registers 3

    .line 102
    invoke-direct {p0, p1, p2}, Ljxl/biff/drawing/Drawing;-><init>(Ljxl/biff/drawing/DrawingGroupObject;Ljxl/biff/drawing/DrawingGroup;)V

    return-void
.end method


# virtual methods
.method public getImageData()[B
    .registers 2

    .line 206
    invoke-super {p0}, Ljxl/biff/drawing/Drawing;->getImageData()[B

    move-result-object v0

    return-object v0
.end method
