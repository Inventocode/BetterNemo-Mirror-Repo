.class public Ljxl/HeaderFooter$Contents;
.super Ljxl/biff/HeaderFooter$Contents;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljxl/biff/HeaderFooter$Contents;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljxl/HeaderFooter$Contents;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter$Contents;-><init>(Ljxl/biff/HeaderFooter$Contents;)V

    return-void
.end method


# virtual methods
.method public empty()Z
    .registers 2

    .line 266
    invoke-super {p0}, Ljxl/biff/HeaderFooter$Contents;->empty()Z

    move-result v0

    return v0
.end method
