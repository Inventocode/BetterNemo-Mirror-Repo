.class public Ljxl/biff/HeaderFooter$Contents;
.super Ljava/lang/Object;
.source "HeaderFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljxl/biff/HeaderFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Contents"
.end annotation


# instance fields
.field private contents:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method

.method protected constructor <init>(Ljxl/biff/HeaderFooter$Contents;)V
    .registers 3

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljxl/biff/HeaderFooter$Contents;->getContents()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method protected empty()Z
    .registers 2

    .line 442
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method protected getContents()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Ljxl/biff/HeaderFooter$Contents;->contents:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method
