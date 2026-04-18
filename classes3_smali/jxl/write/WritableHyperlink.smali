.class public Ljxl/write/WritableHyperlink;
.super Ljxl/write/biff/HyperlinkRecord;
.source "WritableHyperlink.java"

# interfaces
.implements Ljxl/Hyperlink;


# direct methods
.method public constructor <init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Ljxl/write/biff/HyperlinkRecord;-><init>(Ljxl/Hyperlink;Ljxl/write/WritableSheet;)V

    return-void
.end method
