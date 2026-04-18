.class public final Ljxl/HeaderFooter;
.super Ljxl/biff/HeaderFooter;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljxl/HeaderFooter$Contents;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 275
    invoke-direct {p0}, Ljxl/biff/HeaderFooter;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 296
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljxl/HeaderFooter;)V
    .registers 2

    .line 285
    invoke-direct {p0, p1}, Ljxl/biff/HeaderFooter;-><init>(Ljxl/biff/HeaderFooter;)V

    return-void
.end method


# virtual methods
.method protected createContents()Ljxl/biff/HeaderFooter$Contents;
    .registers 2

    .line 355
    new-instance v0, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0}, Ljxl/HeaderFooter$Contents;-><init>()V

    return-object v0
.end method

.method protected createContents(Ljava/lang/String;)Ljxl/biff/HeaderFooter$Contents;
    .registers 3

    .line 366
    new-instance v0, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0, p1}, Ljxl/HeaderFooter$Contents;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createContents(Ljxl/biff/HeaderFooter$Contents;)Ljxl/biff/HeaderFooter$Contents;
    .registers 3

    .line 378
    new-instance v0, Ljxl/HeaderFooter$Contents;

    check-cast p1, Ljxl/HeaderFooter$Contents;

    invoke-direct {v0, p1}, Ljxl/HeaderFooter$Contents;-><init>(Ljxl/HeaderFooter$Contents;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 307
    invoke-super {p0}, Ljxl/biff/HeaderFooter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
